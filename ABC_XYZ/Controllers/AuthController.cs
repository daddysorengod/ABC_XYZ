using BusinessLayer;
using CommoLib;
using DataAccessLayer;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;
using ObjectInterface.Login;
using ObjectInterface.Repositories;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Security.Cryptography;
using System.Text;

namespace ABC_XYZ.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AuthController : ControllerBase
    {
        private readonly IConfigurationRoot _configuration;
        private readonly IAuthBL _iAuthBL;

        public AuthController(IAuthBL iAuth)
        {
            _iAuthBL = iAuth;
        }

        public static string GenAccessToken()
        {
            var secretKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(ConfigData.Secret));
            var signinCredentials = new SigningCredentials(secretKey, SecurityAlgorithms.HmacSha256);
            var tokeOptions = new JwtSecurityToken(issuer: ConfigData.ValidIssuer, audience: ConfigData.ValidAudience, claims: new List<Claim>(), expires: DateTime.Now.AddMinutes(long.Parse(ConfigData.TokenValidityInMinutes.ToString())), signingCredentials: signinCredentials);
            var tokenString = new JwtSecurityTokenHandler().WriteToken(tokeOptions);
            return tokenString;
        }
        public static string GenRefreshToken()
        {
            var randomNumber = new byte[64];
            using var rng = RandomNumberGenerator.Create();
            rng.GetBytes(randomNumber);
            return Convert.ToBase64String(randomNumber);
        }
        //var ValidIssuer = builder.Configuration.GetSection("JWT")["ValidIssuer"];
        //var ValidAudience = builder.Configuration.GetSection("JWT")["ValidAudience"];
        //var IssuerSigningKey = builder.Configuration.GetSection("JWT")["Secret"];
        [HttpPost, Route("login")]
        public IActionResult Login(LoginReq request)
        {
            if (request is null)
            {
                return BadRequest("Invalid user request!!!");
            }

            // gen token
            var accessToken = GenAccessToken();
            var refreshToken = GenRefreshToken();

            var res = _iAuthBL.Login(request.UserName, Encryptor.HashPasswordSHA256(request.Password));
            if (res.Code == -1)
            {
                return Unauthorized();
            }
            TokenInfo tokenInfo = new TokenInfo();
            tokenInfo.Username = res.Source.UserName;
            tokenInfo.AccessToken = accessToken;
            tokenInfo.RefreshToken = refreshToken;
            tokenInfo.RefreshTokenExpiryTime = DateTime.Now.AddDays(Double.Parse(ConfigData.RefreshTokenValidityInDays));
            TokenInfoRepo.GetInstance().AddOrUpdate(res.Source.UserName, tokenInfo);
            var data = TokenInfoRepo.GetInstance();
            res.Source.AccessToken = accessToken;
            res.Source.RefreshToken = refreshToken;
            return StatusCode(StatusCodes.Status200OK, res);
        }

        [HttpPost, Route("refresh-token")]
        public IActionResult RefreshToken(TokenInfo request)
        {
            if (request is null)
            {
                return BadRequest("Invalid client request");
            }

            TokenInfo info = TokenInfoRepo.GetInstance().GetValueByKey(request.Username);

            if (info == null || info.AccessToken != request.AccessToken || info.RefreshToken != request.RefreshToken || info.RefreshTokenExpiryTime <= DateTime.Now) return BadRequest("Invalid access token or refresh token");

            var newAccessToken = GenAccessToken();
            var newRefreshToken = GenRefreshToken();
            var RefreshTokenExpiryTime = DateTime.Now.AddDays(Double.Parse(ConfigData.RefreshTokenValidityInDays));

            TokenInfo tokenInfo = new TokenInfo();
            tokenInfo.Username = request.Username;
            tokenInfo.AccessToken = newAccessToken;
            tokenInfo.RefreshToken = newRefreshToken;
            tokenInfo.RefreshTokenExpiryTime = DateTime.Now.AddDays(Double.Parse(ConfigData.RefreshTokenValidityInDays));

            TokenInfoRepo.GetInstance().AddOrUpdate(request.Username, tokenInfo);

            return StatusCode(StatusCodes.Status200OK, tokenInfo);
        }

        [HttpPost, Route("revoke/{username}")]
        public IActionResult Revoke(string username)
        {
            var user = TokenInfoRepo.GetInstance().GetValueByKey(username);
            if (user == null) return BadRequest("Invalid user name");

            user.RefreshToken = null;
            TokenInfoRepo.GetInstance().AddOrUpdate(username, user);
            return NoContent();
        }

        [HttpPost, Route("logout")]
        public IActionResult Logout(TokenInfo request)
        {
            if (request is null)
            {
                return BadRequest("Invalid client request");
            }

            TokenInfo info = TokenInfoRepo.GetInstance().GetValueByKey(request.Username);

            if (info == null || info.AccessToken != request.AccessToken || info.RefreshToken != request.RefreshToken || info.RefreshTokenExpiryTime <= DateTime.Now) return BadRequest("Invalid access token or refresh token");

            TokenInfoRepo.GetInstance().DeleteKey(request.Username);

            return StatusCode(StatusCodes.Status200OK, new { code = 1 });
        }
    }
}

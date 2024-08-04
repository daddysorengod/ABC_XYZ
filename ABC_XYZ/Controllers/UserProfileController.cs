using BusinessLayer;
using CommoLib;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using ObjectInterface;
using ObjectInterface.UserProfile;

namespace ABC_XYZ.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserProfileController : ControllerBase
    {
        private readonly IUserProfileBL _iUserProfile;
        public UserProfileController(IUserProfileBL iUserProfileBL)
        {
            _iUserProfile = iUserProfileBL;
        }

        [HttpPost, Route("addnew")]
        public async Task<IActionResult> AddNew(UserProfileInsertReq user)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                res = await _iUserProfile.AddNewUserProfile(user);
                return StatusCode(StatusCodes.Status200OK, res);
            }
            catch (Exception ex)
            {
                Logger.log.Error(ex.ToString());
                res.Code = -1;
                res.Message = ex.ToString();
                return StatusCode(StatusCodes.Status400BadRequest, res);
            }
        }
    }
}

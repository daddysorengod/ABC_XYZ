using BusinessLayer;
using CommoLib;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using ObjectInterface;
using ObjectInterface.UserGroup;
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

        [HttpGet, Route("getbyid/{id}")]
        public async Task<IActionResult> GetById(int id)
        {
            Response<UserProfile> res = new Response<UserProfile>();
            try
            {
                res = await _iUserProfile.GetUserProfileById(id);
                return StatusCode(StatusCodes.Status200OK, res);
            }
            catch (Exception ex)
            {
                Logger.log.Error(ex.ToString());
                //res.Code = -1;
                //res.Message = ex.ToString();
                return StatusCode(StatusCodes.Status400BadRequest, res);
            }
        }

        [HttpGet, Route("GetListUserProfileByCurrentId/{id}")]
        public async Task<IActionResult> GetListUserProfile(int id)
        {
            Response<List<UserProfile>> res = new Response<List<UserProfile>>();
            try
            {
                res = await _iUserProfile.GetListUserProfile(id);
                return StatusCode(StatusCodes.Status200OK, res);
            }
            catch (Exception ex)
            {
                Logger.log.Error(ex.ToString());
                //res.Code = -1;
                //res.Message = ex.ToString();
                return StatusCode(StatusCodes.Status400BadRequest, res);
            }
        }

        [HttpPut, Route("editprofile/{id}")]
        public async Task<IActionResult> EditProfile(UserProfileUpdateReq user, int id)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                res = await _iUserProfile.EditUserProfile(user, id);
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

        [HttpPost, Route("SearchOption")]
        public async Task<IActionResult> SearchOption(UserProfileSearchReq req, int pTotalRecordInPage = 10, int pBeginRecord = 0)
        {
            Response<SearchRes<UserProfileSearchRes>> res = new();
            try
            {
                res = await _iUserProfile.GetListUserSearchOption(req, pTotalRecordInPage, pBeginRecord);
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

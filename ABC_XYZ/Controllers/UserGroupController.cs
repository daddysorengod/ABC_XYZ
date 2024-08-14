using BusinessLayer;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using ObjectInterface.SocialGroup;
using ObjectInterface;
using ObjectInterface.UserGroup;
using CommoLib;

namespace ABC_XYZ.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserGroupController : ControllerBase
    {
        private readonly IUserGroupBL _iUserGroupBL;
        public UserGroupController(IUserGroupBL iUserGroupBL)
        {
            _iUserGroupBL = iUserGroupBL;
        }

        [HttpPost, Route("RequestToJoinGroup")]
        public async Task<IActionResult> RequestToJoinGroup(UserGroupJoinReq req)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                res = await _iUserGroupBL.RequestToJoinGroup(req);
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

        [HttpPost, Route("ApproveJoinGroup")]
        public async Task<IActionResult> ApproveJoinGroup(UserGroupApproveAndRejectReq req)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                res = await _iUserGroupBL.ApproveRequestJoinGroup(req);
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

        [HttpPost, Route("RejectJoinGroup")]
        public async Task<IActionResult> RejectJoinGroup(UserGroupApproveAndRejectReq req)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                res = await _iUserGroupBL.RejectRequestJoinGroup(req);
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
        public async Task<IActionResult> SearchOption(UserGroupSearchReq group, int pTotalRecordInPage = 10, int pBeginRecord = 0)
        {
            Response<SearchRes<UserGroup>> res = new();
            try
            {
                res = await _iUserGroupBL.GetUserGroupOption(group, pTotalRecordInPage, pBeginRecord);
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

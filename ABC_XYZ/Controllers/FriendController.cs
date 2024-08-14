using BusinessLayer;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using ObjectInterface.UserGroup;
using ObjectInterface;
using ObjectInterface.FriendData;
using CommoLib;

namespace ABC_XYZ.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class FriendController : ControllerBase
    {
        private readonly IFriendBL _iFriendBL;
        public FriendController(IFriendBL iFriendBL)
        {
            _iFriendBL = iFriendBL;
        }

        [HttpPost, Route("MakeFriend")]
        public async Task<IActionResult> MakeFriendRequest(MakeFriendReq req)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                res = await _iFriendBL.MakeFriendRequest(req);
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

        [HttpPut, Route("ApproveFriend/{IdFriendDataRecord}")]
        public async Task<IActionResult> ApproveFriend(int IdFriendDataRecord)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                res = await _iFriendBL.ApproveFriend(IdFriendDataRecord);
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

        [HttpPut, Route("RejectFriend/{IdFriendDataRecord}")]
        public async Task<IActionResult> RejectFriend(int IdFriendDataRecord)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                res = await _iFriendBL.RejectFriend(IdFriendDataRecord);
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

        [HttpGet, Route("GetListFriendRequest/{IdCurrentUser}")]
        public async Task<IActionResult> GetListFriendRequest(int IdCurrentUser)
        {
            Response<List<FriendData>> res = new Response<List<FriendData>>();
            try
            {
                res = await _iFriendBL.GetListFriendRequest(IdCurrentUser);
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

using BusinessLayer;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using ObjectInterface.Post;
using ObjectInterface;
using ObjectInterface.SocialGroup;
using CommoLib;

namespace ABC_XYZ.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SocialGroupController : ControllerBase
    {
        private readonly ISocialGroupBL _iSocialGroupBL;
        public SocialGroupController(ISocialGroupBL iSocialGroupBL)
        {
            _iSocialGroupBL = iSocialGroupBL;
        }

        [HttpPost, Route("CreateGroup")]
        public async Task<IActionResult> AddNewPostOnNewFeed(SocialGroupAddReq group)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                res = await _iSocialGroupBL.CreateNewGroup(group);
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

        [HttpDelete, Route("DeleteGroup")]
        public async Task<IActionResult> DeletePostFromAuthUser(SocialGroupDeleteReq group)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                res = await _iSocialGroupBL.DeleteGroup(group);
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
        public async Task<IActionResult> SearchOption(SocialGroupSearchReq group, int pTotalRecordInPage = 10, int pBeginRecord = 0)
        {
            Response<SearchRes<SocialGroup>> res = new();
            try
            {
                res = await _iSocialGroupBL.GetSocialGroupOption(group, pTotalRecordInPage, pBeginRecord);
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

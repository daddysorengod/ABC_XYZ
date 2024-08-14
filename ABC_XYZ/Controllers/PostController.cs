using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using ObjectInterface.UserProfile;
using ObjectInterface;
using CommoLib;
using BusinessLayer;
using ObjectInterface.Post;
using Microsoft.AspNetCore.Cors;

namespace ABC_XYZ.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PostController : ControllerBase
    {
        private readonly IPostBL _iPostBL;
        public PostController(IPostBL iPostBL)
        {
            _iPostBL = iPostBL;

        }
        [HttpPost, Route("AddNewPostOnNewFeed")]
        public async Task<IActionResult> AddNewPostOnNewFeed(PostInsertReq post)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                res = await _iPostBL.AddNewPostOnNewFeed(post);
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

        [HttpDelete, Route("DeletePost")]
        public async Task<IActionResult> DeletePostFromAuthUser(PostDeleteByUserReq post)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                res = await _iPostBL.DeletePost(post);
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
        public async Task<IActionResult> SearchOption(PostSearchOption post , int pTotalRecordInPage = 10, int pBeginRecord = 0)
        {
            Response<SearchRes<PostInfo>> res = new();
            try
            {
                res = await _iPostBL.GetPostOption(post, pTotalRecordInPage, pBeginRecord);
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

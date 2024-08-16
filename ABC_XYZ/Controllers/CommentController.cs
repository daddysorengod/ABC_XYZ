using BusinessLayer;
using CommoLib;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using ObjectInterface;
using ObjectInterface.Comment;

namespace ABC_XYZ.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CommentController : ControllerBase
    {
        private readonly ICommentBL _iCommentBL;
        public CommentController(ICommentBL iCommentBL)
        {
            _iCommentBL = iCommentBL;
        }

        [HttpPost, Route("CreateComment")]
        public async Task<IActionResult> CreateComment(CommentCreateReq comment)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                res = await _iCommentBL.CreateComment(comment);
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

        [HttpPut, Route("EditComment/{id}")]
        public async Task<IActionResult> CreateComment(CommentEditReq comment, int id)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                res = await _iCommentBL.EditComment(comment, id);
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

        [HttpDelete, Route("DeleteComment/{id}")]
        public async Task<IActionResult> DeleteComment( int id)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                res = await _iCommentBL.DeleteComment(id);
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

        [HttpPut, Route("LikeComment")]
        public async Task<IActionResult> LikeComment(int id)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                res = await _iCommentBL.LikeCommit(id);
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

using BusinessLayer;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using ObjectInterface.Post;
using ObjectInterface;
using ObjectInterface.Message;
using CommoLib;

namespace ABC_XYZ.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MessageController : ControllerBase
    {
        private readonly IMessageBL _iMessageBL;
        public MessageController(IMessageBL iMessageBL)
        {
            _iMessageBL = iMessageBL;
        }

        [HttpPost, Route("CreateRoomChat")]
        public async Task<IActionResult> AddNewPostOnNewFeed(RoomInsertReq room)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                res = await _iMessageBL.AddNewRoom(room);
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

        [HttpPost, Route("SendMessage")]
        public async Task<IActionResult> SendMessage(MessageSendReq msg)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                res = await _iMessageBL.SendMessage(msg);
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


        [HttpGet, Route("GetRoomChatByCurrentUser/{id}")]
        public async Task<IActionResult> GetRoomChatByCurrentUser(int id)
        {
            Response<List<RoomChatRes>> res = new();
            try
            {
                res = await _iMessageBL.GetRoomChat(id);
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

        [HttpGet, Route("GetMessageInRoom/{id}")]
        public async Task<IActionResult> GetMessageInRoom(int id)
        {
            Response<List<MessageChat>> res = new();
            try
            {
                res = await _iMessageBL.GetMessageInRoom(id);
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

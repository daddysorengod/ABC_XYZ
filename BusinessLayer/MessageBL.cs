using ObjectInterface.UserProfile;
using ObjectInterface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ObjectInterface.Message;
using CommoLib;
using DataAccessLayer;

namespace BusinessLayer
{
    public interface IMessageBL
    {
        
        Task<Response<dynamic>> AddNewRoom(RoomInsertReq room);

        Task<Response<dynamic>> SendMessage(MessageSendReq msg);

        Task<Response<List<RoomChatRes>>> GetRoomChat(int id);
        Task<Response<List<MessageChat>>> GetMessageInRoom(int id);

    }
    public class MessageBL : IMessageBL
    {
        MessageDA _messageDA = new MessageDA();
        public async Task<Response<dynamic>> AddNewRoom(RoomInsertReq room)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                res = _messageDA.CreateNewRoomChat(room);
                return res;
            }
            catch (Exception ex)
            {
                return res;
                Logger.log.Error(ex.ToString());
            }
        }

        public async Task<Response<List<RoomChatRes>>> GetRoomChat(int id)
        {
            Response<List<RoomChatRes>> res = new Response<List<RoomChatRes>>();
            try
            {
                res = _messageDA.GetRoomChat(id);
                return res;
            }
            catch (Exception ex)
            {
                return res;
                Logger.log.Error(ex.ToString());
            }
        }

        public async Task<Response<dynamic>> SendMessage(MessageSendReq msg)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                if (msg.ListUrlAttch is not null && msg.ListUrlAttch.Count > 0)
                {
                    foreach (var item in msg.ListUrlAttch)
                    {
                        MessageSendReq miniReq = msg;
                        miniReq.UrlAttach = item;
                        miniReq.Message = "";
                        var miniRes = _messageDA.SendMessage(miniReq);
                    }
                    res.Code = 1;
                    res.Message = "";
                } else
                {
                    res = _messageDA.SendMessage(msg);
                }

                return res;
            }
            catch (Exception ex)
            {
                return res;
                Logger.log.Error(ex.ToString());
            }
        }

        public async Task<Response<List<MessageChat>>> GetMessageInRoom(int id)
        {
            Response<List<MessageChat>> res = new Response<List<MessageChat>>();
            try
            {
                res = _messageDA.GetMessageInRoom(id);
                return res;
            }
            catch (Exception ex)
            {
                return res;
                Logger.log.Error(ex.ToString());
            }
        }
    }
}

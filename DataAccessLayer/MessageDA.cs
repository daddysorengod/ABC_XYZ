using CommoLib;
using MySql.Data.MySqlClient;
using ObjectInterface.UserProfile;
using ObjectInterface;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ObjectInterface.Message;
using HelperMySqlLib;

namespace DataAccessLayer
{
    public class MessageDA
    {
        public Response<dynamic> CreateNewRoomChat(RoomInsertReq room)
        {
            Response<dynamic> response = new Response<dynamic>();
            try
            {
                MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Decimal);
                MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar);
                List<MySqlParameter> listParams = new List<MySqlParameter>();

                listParams.Add(new MySqlParameter("@p_idcreateduser", MySqlDbType.VarChar));
                listParams[0].Direction = ParameterDirection.Input;     
                listParams[0].Value = room.IdCreatedUser;

                listParams.Add(new MySqlParameter("@p_toiduser", MySqlDbType.VarChar));
                listParams[1].Direction = ParameterDirection.Input;
                listParams[1].Value = room.ToIdUser;

                listParams.Add(new MySqlParameter("@p_createddate", MySqlDbType.DateTime));
                listParams[2].Direction = ParameterDirection.Input;
                listParams[2].Value = DateTime.Now;

                listParams.Add(new MySqlParameter("@p_roomname", MySqlDbType.VarChar));
                listParams[3].Direction = ParameterDirection.Input;
                listParams[3].Value = room.RoomName;

                listParams.Add(pReturn);
                listParams[4].Direction = ParameterDirection.Output;

                listParams.Add(pMessage);
                listParams[5].Direction = ParameterDirection.Output;

                MySQLHelper.ExecuteNonQuery(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_room_char_create", listParams.ToArray());

                response.Code = Int32.Parse(pReturn.Value.ToString());
                response.Message = pMessage.Value.ToString();
                return response;
            }
            catch (Exception ex)
            {
                Logger.log.Error(ex, ex.ToString());
                response.Code = -1;
                response.Message = "Exception:" + ex.ToString();
                return response;
            }
        }

        public Response<List<RoomChatRes>> GetRoomChat(int id)
        {
            Response<List<RoomChatRes>> res = new Response<List<RoomChatRes>>();
            DataSet ds = new DataSet();
            try
            {
                MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Decimal);
                MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar);
                List<MySqlParameter> listParams = new List<MySqlParameter>();

                listParams.Add(new MySqlParameter("@p_iduser", MySqlDbType.Int64));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = id;

                listParams.Add(pReturn);
                listParams[1].Direction = ParameterDirection.Output;

                listParams.Add(pMessage);
                listParams[2].Direction = ParameterDirection.Output;

                ds = MySQLHelper.ExecuteDataSet(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_room_chat_get", listParams.ToArray());

                if (ds is null || Int32.Parse(pReturn.Value.ToString()) <=0)
                {
                    res.Code = Int32.Parse(pReturn.Value.ToString());
                    res.Message = pMessage.Value.ToString();
                    res.Source = null;
                    return res;
                }
                res.Code = Int32.Parse(pReturn.Value.ToString());
                res.Message = pMessage.Value.ToString();
                res.Source = CommonLib.ConvertFunction<RoomChatRes>.DataSetToCollection(ds);

                return res;
            }
            catch (Exception ex)
            {
                Logger.log.Error(ex.ToString());
                res.Code = -1;
                res.Message = "Lỗi không xác định";
                return res;
            }
        }

        public Response<dynamic> SendMessage(MessageSendReq msg)
        {
            Response<dynamic> response = new Response<dynamic>();
            try
            {
                MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Decimal);
                MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar);
                List<MySqlParameter> listParams = new List<MySqlParameter>();

                listParams.Add(new MySqlParameter("@p_idusersend", MySqlDbType.VarChar));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = msg.IdUserSend;

                listParams.Add(new MySqlParameter("@p_iduserrecieve", MySqlDbType.VarChar));
                listParams[1].Direction = ParameterDirection.Input;
                listParams[1].Value = msg.IdUserRecieve;
                 
                listParams.Add(new MySqlParameter("@p_idroom", MySqlDbType.VarChar));
                listParams[2].Direction = ParameterDirection.Input;
                listParams[2].Value = msg.IdRoom;

                listParams.Add(new MySqlParameter("@p_messagesend", MySqlDbType.VarChar));
                listParams[3].Direction = ParameterDirection.Input;
                listParams[3].Value = msg.Message;

                listParams.Add(new MySqlParameter("@p_urlattach", MySqlDbType.VarChar));
                listParams[4].Direction = ParameterDirection.Input;
                listParams[4].Value = msg.Message;

                listParams.Add(new MySqlParameter("@p_createddate", MySqlDbType.DateTime));
                listParams[5].Direction = ParameterDirection.Input;
                listParams[5].Value = DateTime.Now;

                listParams.Add(pReturn);
                listParams[6].Direction = ParameterDirection.Output;

                listParams.Add(pMessage);
                listParams[7].Direction = ParameterDirection.Output;

                MySQLHelper.ExecuteNonQuery(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_message_insert", listParams.ToArray());

                response.Code = Int32.Parse(pReturn.Value.ToString());
                response.Message = pMessage.Value.ToString();
                return response;
            }
            catch (Exception ex)
            {
                Logger.log.Error(ex, ex.ToString());
                response.Code = -1;
                response.Message = "Exception:" + ex.ToString();
                return response;
            }
        }


        public Response<List<MessageChat>> GetMessageInRoom(int id)
        {
            Response<List<MessageChat>> res = new Response<List<MessageChat>>();
            DataSet ds = new DataSet();
            try
            {
                MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Decimal);
                MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar); 
                List<MySqlParameter> listParams = new List<MySqlParameter>();

                listParams.Add(new MySqlParameter("@p_idroom", MySqlDbType.Int64));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = id;


                listParams.Add(pReturn);
                listParams[1].Direction = ParameterDirection.Output;

                listParams.Add(pMessage);
                listParams[2].Direction = ParameterDirection.Output;

                ds = MySQLHelper.ExecuteDataSet(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_message_get_in_room", listParams.ToArray());

                if (ds is null || ds.Tables[0].Columns.Count == 0)
                {
                    res.Code = Int32.Parse(pReturn.Value.ToString());
                    res.Message = pMessage.Value.ToString();
                    res.Source = null;
                    return res;
                }
                res.Code = Int32.Parse(pReturn.Value.ToString());
                res.Message = pMessage.Value.ToString();
                res.Source = CommonLib.ConvertFunction<MessageChat>.DataSetToCollection(ds);

                return res;
            }
            catch (Exception ex)
            {
                Logger.log.Error(ex.ToString());
                res.Code = -1;
                res.Message = "Lỗi không xác định";
                return res;
            }
        }


    }
}

using CommoLib;
using MySql.Data.MySqlClient;
using ObjectInterface.SocialGroup;
using ObjectInterface;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ObjectInterface.FriendData;
using HelperMySqlLib;
using ObjectInterface.UserProfile;

namespace DataAccessLayer
{
    public class FriendDA
    {
        public Response<dynamic> MakeRequestFriend(MakeFriendReq friend)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Decimal);
                MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar);
                List<MySqlParameter> listParams = new List<MySqlParameter>();

                listParams.Add(new MySqlParameter("@p_userid", MySqlDbType.Int32));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = friend.IdUser;

                listParams.Add(new MySqlParameter("@p_idfriend", MySqlDbType.Int32));
                listParams[1].Direction = ParameterDirection.Input;
                listParams[1].Value = friend.IdFriend;

                listParams.Add(new MySqlParameter("@p_createddate", MySqlDbType.DateTime));
                listParams[2].Direction = ParameterDirection.Input;
                listParams[2].Value = DateTime.Now; 

                listParams.Add(pReturn);
                listParams[3].Direction = ParameterDirection.Output;

                listParams.Add(pMessage);
                listParams[4].Direction = ParameterDirection.Output;

                MySQLHelper.ExecuteNonQuery(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_friend_make_friend", listParams.ToArray());

                res.Code = Int32.Parse(pReturn.Value.ToString());
                res.Message = pMessage.Value.ToString();
                return res;
            }
            catch (Exception ex)
            {
                Logger.log.Error(ex.ToString());
                res.Code = -1;
                res.Message = ex.ToString();
                return res;
            }
        }

        public Response<dynamic> ApproveFriend(int id)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Decimal);
                MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar);
                List<MySqlParameter> listParams = new List<MySqlParameter>();

                listParams.Add(new MySqlParameter("@p_idfrienddata", MySqlDbType.Int32));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = id;

                listParams.Add(pReturn);
                listParams[1].Direction = ParameterDirection.Output;

                listParams.Add(pMessage);
                listParams[2].Direction = ParameterDirection.Output;

                MySQLHelper.ExecuteNonQuery(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_frienddata_accept", listParams.ToArray());

                res.Code = Int32.Parse(pReturn.Value.ToString());
                res.Message = pMessage.Value.ToString();
                return res;
            }
            catch (Exception ex)
            {
                Logger.log.Error(ex.ToString());
                res.Code = -1;
                res.Message = ex.ToString();
                return res;
            }
        }


        public Response<dynamic> RejectFriend(int id)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Decimal);
                MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar);
                List<MySqlParameter> listParams = new List<MySqlParameter>();

                listParams.Add(new MySqlParameter("@p_idfrienddata", MySqlDbType.Int32));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = id;

                listParams.Add(pReturn);
                listParams[1].Direction = ParameterDirection.Output;

                listParams.Add(pMessage);
                listParams[2].Direction = ParameterDirection.Output;

                MySQLHelper.ExecuteNonQuery(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_frienddata_reject", listParams.ToArray());

                res.Code = Int32.Parse(pReturn.Value.ToString());
                res.Message = pMessage.Value.ToString();
                return res;
            }
            catch (Exception ex)
            {
                Logger.log.Error(ex.ToString());
                res.Code = -1;
                res.Message = ex.ToString();
                return res;
            }
        }

        public Response<List<FriendData>> GetListRequestFriend(int id)
        {
            Response<List<FriendData>> res = new Response<List<FriendData>>();
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

                ds = MySQLHelper.ExecuteDataSet(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_friend_get_list_request_make_friend", listParams.ToArray());

                if (ds is null || ds.Tables[0].Columns.Count == 0)
                {
                    res.Code = 1;
                    res.Message = "";
                    return res;
                }
                res.Code = Int32.Parse(pReturn.Value.ToString());
                res.Message = pMessage.Value.ToString();
                res.Source = CommonLib.ConvertFunction<FriendData>.DataSetToCollection(ds);

                return res;
            }
            catch (Exception ex)
            {
                Logger.log.Error(ex.ToString());
                res.Code = -1;
                res.Message = ex.ToString();
                return res;
            }
        }


    }
}

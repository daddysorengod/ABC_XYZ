using CommoLib;
using HelperMySqlLib;
using MySql.Data.MySqlClient;
using ObjectInterface;
using ObjectInterface.SocialGroup;
using ObjectInterface.UserGroup;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class UserGroupDA
    {
        public Response<dynamic> RequestToJoinGroup(UserGroupJoinReq req)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Decimal);
                MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar);
                List<MySqlParameter> listParams = new List<MySqlParameter>();

                listParams.Add(new MySqlParameter("@p_idgroup", MySqlDbType.Int32));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = req.IdGroup;

                listParams.Add(new MySqlParameter("@p_iduser", MySqlDbType.Int32));
                listParams[1].Direction = ParameterDirection.Input;
                listParams[1].Value = req.IdUser;

                listParams.Add(pReturn);
                listParams[2].Direction = ParameterDirection.Output;

                listParams.Add(pMessage);
                listParams[3].Direction = ParameterDirection.Output;

                MySQLHelper.ExecuteNonQuery(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_group_request_join_group", listParams.ToArray());

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

        public Response<dynamic> ApproveRequestJoinGroup(UserGroupApproveAndRejectReq req)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Decimal);
                MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar);
                List<MySqlParameter> listParams = new List<MySqlParameter>();

                listParams.Add(new MySqlParameter("@p_idadmingroup", MySqlDbType.Int32));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = req.IdAdminGroup;

                listParams.Add(new MySqlParameter("@p_idgroup", MySqlDbType.Int32));
                listParams[1].Direction = ParameterDirection.Input;
                listParams[1].Value = req.IdGroup;

                listParams.Add(new MySqlParameter("@p_idusergroup", MySqlDbType.Int32));
                listParams[2].Direction = ParameterDirection.Input;
                listParams[2].Value = req.IdUserGroup;

                listParams.Add(pReturn);
                listParams[3].Direction = ParameterDirection.Output;

                listParams.Add(pMessage);
                listParams[4].Direction = ParameterDirection.Output;

                MySQLHelper.ExecuteNonQuery(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_usergroup_admin_approve", listParams.ToArray());

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

        public Response<dynamic> RejectRequestJoinGroup(UserGroupApproveAndRejectReq req)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Decimal);
                MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar);
                List<MySqlParameter> listParams = new List<MySqlParameter>();

                listParams.Add(new MySqlParameter("@p_idadmingroup", MySqlDbType.Int32));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = req.IdAdminGroup;

                listParams.Add(new MySqlParameter("@p_idgroup", MySqlDbType.Int32));
                listParams[1].Direction = ParameterDirection.Input;
                listParams[1].Value = req.IdGroup;

                listParams.Add(new MySqlParameter("@p_idusergroup", MySqlDbType.Int32));
                listParams[2].Direction = ParameterDirection.Input;
                listParams[2].Value = req.IdUserGroup;

                listParams.Add(pReturn);
                listParams[3].Direction = ParameterDirection.Output;

                listParams.Add(pMessage);
                listParams[4].Direction = ParameterDirection.Output;

                MySQLHelper.ExecuteNonQuery(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_usergroup_reject", listParams.ToArray());

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

        public Response<SearchRes<UserGroup>> GetUserGroupOption(UserGroupSearchReq group, int pTotalRecordInPage, int pBeginRecord)
        {
            Response<SearchRes<UserGroup>> res = new Response<SearchRes<UserGroup>>();
            SearchRes<UserGroup> resSearch = new();
            try
            {
                MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Decimal);
                MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar);
                MySqlParameter pTotalRecord = new MySqlParameter("@p_total_record", MySqlDbType.Decimal);
                List<MySqlParameter> listParams = new List<MySqlParameter>();

                listParams.Add(new MySqlParameter("@p_idgroup", MySqlDbType.Int32));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = group.IdGroup;

                listParams.Add(new MySqlParameter("@p_status", MySqlDbType.VarChar));
                listParams[1].Direction = ParameterDirection.Input;
                listParams[1].Value = group.Status;

                listParams.Add(new MySqlParameter("@p_username", MySqlDbType.VarChar));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = group.UserName;

                listParams.Add(new MySqlParameter("@p_displayname", MySqlDbType.VarChar));
                listParams[1].Direction = ParameterDirection.Input;
                listParams[1].Value = group.DisplayName;

                listParams.Add(new MySqlParameter("@P_TOTAL_RECORD_INPAGE", MySqlDbType.Int64));
                listParams[2].Direction = ParameterDirection.Input;
                listParams[2].Value = pTotalRecordInPage;

                listParams.Add(new MySqlParameter("@P_BEGIN_RECORD", MySqlDbType.Int64));
                listParams[3].Direction = ParameterDirection.Input;
                listParams[3].Value = pBeginRecord;

                listParams.Add(pTotalRecord);
                listParams[4].Direction = ParameterDirection.Output;

                var ds = MySQLHelper.ExecuteDataSet(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_usergroup_search_option", listParams.ToArray());

                res.Code = 1;
                res.Source = resSearch;
                res.Source.Datas = CommonLib.ConvertFunction<UserGroup>.DataSetToCollection(ds);
                res.Source.TotalRecord = Int32.Parse(pTotalRecord.Value.ToString());

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

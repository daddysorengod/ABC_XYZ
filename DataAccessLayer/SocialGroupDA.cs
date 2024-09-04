using CommoLib;
using HelperMySqlLib;
using MySql.Data.MySqlClient;
using ObjectInterface;
using ObjectInterface.Post;
using ObjectInterface.SocialGroup;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class SocialGroupDA
    {
        public Response<dynamic> CreateNewGroup(SocialGroupAddReq group)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Decimal);
                MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar);
                List<MySqlParameter> listParams = new List<MySqlParameter>();

                listParams.Add(new MySqlParameter("@p_idusercreated", MySqlDbType.Int32));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = group.IdUserCreated;

                listParams.Add(new MySqlParameter("@p_groupname", MySqlDbType.VarChar));
                listParams[1].Direction = ParameterDirection.Input;
                listParams[1].Value = group.GroupName;

                listParams.Add(new MySqlParameter("@p_createddate", MySqlDbType.DateTime));
                listParams[2].Direction = ParameterDirection.Input;
                listParams[2].Value = DateTime.Now;

                listParams.Add(new MySqlParameter("@p_typegroup", MySqlDbType.VarChar));
                listParams[3].Direction = ParameterDirection.Input;
                listParams[3].Value = group.TypeGroup;

                listParams.Add(new MySqlParameter("@p_background", MySqlDbType.VarChar));
                listParams[4].Direction = ParameterDirection.Input;
                listParams[4].Value = group.BackGround;

                listParams.Add(pReturn);
                listParams[5].Direction = ParameterDirection.Output;

                listParams.Add(pMessage);
                listParams[6].Direction = ParameterDirection.Output;

                MySQLHelper.ExecuteNonQuery(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_socialgroup_insert", listParams.ToArray());

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

        public Response<dynamic> DeleteGroup(SocialGroupDeleteReq group)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Decimal);
                MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar);
                List<MySqlParameter> listParams = new List<MySqlParameter>();

                listParams.Add(new MySqlParameter("@p_idadmin", MySqlDbType.Int32));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = group.IdUserAdmin;

                listParams.Add(new MySqlParameter("@p_idgroup", MySqlDbType.Int32));
                listParams[1].Direction = ParameterDirection.Input;
                listParams[1].Value = group.IdGroup;

                listParams.Add(pReturn);
                listParams[5].Direction = ParameterDirection.Output;

                listParams.Add(pMessage);
                listParams[6].Direction = ParameterDirection.Output;

                MySQLHelper.ExecuteNonQuery(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_socialgroup_delete", listParams.ToArray());

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

        public Response<SearchRes<SocialGroup>> GetSocialGroupOption(SocialGroupSearchReq group, int pTotalRecordInPage, int pBeginRecord)
        {
            Response<SearchRes<SocialGroup>> res = new Response<SearchRes<SocialGroup>>();
            SearchRes<SocialGroup> resSearch = new();
            try
            {
                MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Decimal);
                MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar);
                MySqlParameter pTotalRecord = new MySqlParameter("@p_total_record", MySqlDbType.Decimal);
                List<MySqlParameter> listParams = new List<MySqlParameter>();

                listParams.Add(new MySqlParameter("@p_id", MySqlDbType.Int32));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = group.IdGroup;

                listParams.Add(new MySqlParameter("@p_groupname", MySqlDbType.VarChar));
                listParams[1].Direction = ParameterDirection.Input;
                listParams[1].Value = group.GroupName;

                listParams.Add(new MySqlParameter("@p_useradmin", MySqlDbType.Int32));
                listParams[2].Direction = ParameterDirection.Input;
                listParams[2].Value = group.IdCreatedUser;

                listParams.Add(new MySqlParameter("@p_usermember", MySqlDbType.Int32));
                listParams[3].Direction = ParameterDirection.Input;
                listParams[3].Value = group.IdMember;

                listParams.Add(new MySqlParameter("@P_TOTAL_RECORD_INPAGE", MySqlDbType.Int64));
                listParams[4].Direction = ParameterDirection.Input;
                listParams[4].Value = pTotalRecordInPage;

                listParams.Add(new MySqlParameter("@P_BEGIN_RECORD", MySqlDbType.Int64));
                listParams[5].Direction = ParameterDirection.Input;
                listParams[5].Value = pBeginRecord;

                listParams.Add(pTotalRecord);
                listParams[6].Direction = ParameterDirection.Output;

                var ds = MySQLHelper.ExecuteDataSet(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_socialgroup_search_option", listParams.ToArray());

                res.Code = 1;
                res.Source = resSearch;
                res.Source.Datas = CommonLib.ConvertFunction<SocialGroup>.DataSetToCollection(ds);
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

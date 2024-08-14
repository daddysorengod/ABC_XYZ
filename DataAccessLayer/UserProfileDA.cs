using CommoLib;
using CommonLib;
using HelperMySqlLib;
using MySql.Data.MySqlClient;
using ObjectInterface;
using ObjectInterface.SocialGroup;
using ObjectInterface.UserProfile;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class UserProfileDA
    {
        public Response<dynamic> AddNewUserProfile(UserProfileInsertReq user)
        {
            Response<dynamic> response = new Response<dynamic>();
            try
            {
                MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Decimal);
                MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar);
                List<MySqlParameter> listParams = new List<MySqlParameter>();

                listParams.Add(new MySqlParameter("@p_username", MySqlDbType.VarChar));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = user.UserName;

                listParams.Add(new MySqlParameter("@p_password", MySqlDbType.VarChar));
                listParams[1].Direction = ParameterDirection.Input;
                listParams[1].Value = user.Password;

                listParams.Add(new MySqlParameter("@p_email", MySqlDbType.VarChar));
                listParams[2].Direction = ParameterDirection.Input;
                listParams[2].Value = user.Email;

                listParams.Add(new MySqlParameter("@p_phonenumber", MySqlDbType.VarChar));
                listParams[3].Direction = ParameterDirection.Input;
                listParams[3].Value = user.PhoneNumber;

                listParams.Add(new MySqlParameter("@p_displayname", MySqlDbType.VarChar));
                listParams[4].Direction = ParameterDirection.Input;
                listParams[4].Value = user.DisplayName;

                listParams.Add(new MySqlParameter("@p_avatar", MySqlDbType.VarChar));
                listParams[5].Direction = ParameterDirection.Input;
                listParams[5].Value = user.Avatar;

                listParams.Add(new MySqlParameter("@p_createddate", MySqlDbType.DateTime));
                listParams[6].Direction = ParameterDirection.Input;
                listParams[6].Value = DateTime.Now;

                listParams.Add(new MySqlParameter("@p_role", MySqlDbType.VarChar));
                listParams[7].Direction = ParameterDirection.Input;
                listParams[7].Value = user.Role;

                listParams.Add(new MySqlParameter("@p_education", MySqlDbType.VarChar));
                listParams[8].Direction = ParameterDirection.Input;
                listParams[8].Value = user.Education;

                listParams.Add(new MySqlParameter("@p_gender", MySqlDbType.VarChar));
                listParams[9].Direction = ParameterDirection.Input;
                listParams[9].Value = user.Gender;

                listParams.Add(new MySqlParameter("@p_job", MySqlDbType.VarChar));
                listParams[10].Direction = ParameterDirection.Input;
                listParams[10].Value = user.Job;

                listParams.Add(pReturn);
                listParams[11].Direction = ParameterDirection.Output;

                listParams.Add(pMessage);
                listParams[12].Direction = ParameterDirection.Output;

                MySQLHelper.ExecuteNonQuery(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_userprofile_insert", listParams.ToArray());

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

        public Response<UserProfile> GetProfileById(int id)
        {
            Response<UserProfile> res = new Response<UserProfile>();
            DataSet ds = new DataSet();
            try
            {

                MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Decimal);
                MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar);
                List<MySqlParameter> listParams = new List<MySqlParameter>();

                listParams.Add(new MySqlParameter("@p_id", MySqlDbType.Int64));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = id;

                listParams.Add(pReturn);
                listParams[1].Direction = ParameterDirection.Output;

                listParams.Add(pMessage);
                listParams[2].Direction = ParameterDirection.Output;

                ds = MySQLHelper.ExecuteDataSet(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_get_userpprofile_by_id", listParams.ToArray());

                if (ds is null || ds.Tables[0].Columns.Count == 0)
                {
                    res.Code = Int32.Parse(pReturn.Value.ToString());
                    res.Message = pMessage.Value.ToString();
                    return res;
                }
                res.Code = Int32.Parse(pReturn.Value.ToString());
                res.Message = pMessage.Value.ToString();
                res.Source = CommonLib.ConvertFunction<UserProfile>.DataSetToObject(ds);

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

        public Response<dynamic> EditUserProfile(UserProfileUpdateReq user, int id)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Decimal);
                MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar);
                List<MySqlParameter> listParams = new List<MySqlParameter>();


                listParams.Add(new MySqlParameter("@p_id", MySqlDbType.VarChar));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = id;

                listParams.Add(new MySqlParameter("@p_email", MySqlDbType.VarChar));
                listParams[1].Direction = ParameterDirection.Input;
                listParams[1].Value = user.Email;

                listParams.Add(new MySqlParameter("@p_phonenumber", MySqlDbType.VarChar));
                listParams[2].Direction = ParameterDirection.Input;
                listParams[2].Value = user.PhoneNumber;

                listParams.Add(new MySqlParameter("@p_displayname", MySqlDbType.VarChar));
                listParams[3].Direction = ParameterDirection.Input;
                listParams[3].Value = user.DisplayName;

                listParams.Add(new MySqlParameter("@p_avatar", MySqlDbType.VarChar));
                listParams[4].Direction = ParameterDirection.Input;
                listParams[4].Value = user.Avatar;

                listParams.Add(new MySqlParameter("@p_education", MySqlDbType.VarChar));
                listParams[5].Direction = ParameterDirection.Input;
                listParams[5].Value = user.Education;

                listParams.Add(new MySqlParameter("@p_gender", MySqlDbType.VarChar));
                listParams[6].Direction = ParameterDirection.Input;
                listParams[6].Value = user.Gender;

                listParams.Add(new MySqlParameter("@p_job", MySqlDbType.VarChar));
                listParams[7].Direction = ParameterDirection.Input;
                listParams[7].Value = user.Job;

                listParams.Add(pReturn);
                listParams[8].Direction = ParameterDirection.Output;

                listParams.Add(pMessage);
                listParams[9].Direction = ParameterDirection.Output;

                MySQLHelper.ExecuteNonQuery(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_userprofile_edit", listParams.ToArray());

                res.Code = Int32.Parse(pReturn.Value.ToString());
                res.Message = pMessage.Value.ToString();
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


        public Response<List<UserProfile>> GetListUserProfile(int id)
        {
            Response<List<UserProfile>> res = new Response<List<UserProfile>>();
            DataSet ds = new DataSet();
            try
            {

                //MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Decimal);
                //MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar);
                List<MySqlParameter> listParams = new List<MySqlParameter>();

                listParams.Add(new MySqlParameter("@p_curentid", MySqlDbType.Int64));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = id;

                ds = MySQLHelper.ExecuteDataSet(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_userprofile_list", listParams.ToArray());

                if (ds is null || ds.Tables[0].Columns.Count == 0)
                {
                    res.Code = 1;
                    res.Message = "";
                    return res;
                }
                res.Code = 1;
                res.Message = "";
                res.Source = CommonLib.ConvertFunction<UserProfile>.DataSetToCollection(ds);

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

        public Response<SearchRes<UserProfileSearchRes>> GetListUserSearchOption(UserProfileSearchReq req, int pTotalRecordInPage, int pBeginRecord)
        {
            Response<SearchRes<UserProfileSearchRes>> res = new Response<SearchRes<UserProfileSearchRes>>();
            SearchRes<UserProfileSearchRes> resSearch = new();
            try
            {
                MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Decimal);
                MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar);
                MySqlParameter pTotalRecord = new MySqlParameter("@p_total_record", MySqlDbType.Decimal);
                List<MySqlParameter> listParams = new List<MySqlParameter>();

                listParams.Add(new MySqlParameter("@p_currentid", MySqlDbType.Int32));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = req.CurrentId;

                listParams.Add(new MySqlParameter("@p_id", MySqlDbType.Int32));
                listParams[1].Direction = ParameterDirection.Input;
                listParams[1].Value = req.Id;

                listParams.Add(new MySqlParameter("@p_username", MySqlDbType.VarChar));
                listParams[2].Direction = ParameterDirection.Input;
                listParams[2].Value = req.UserName;

                listParams.Add(new MySqlParameter("@p_displayname", MySqlDbType.VarChar));
                listParams[3].Direction = ParameterDirection.Input;
                listParams[3].Value = req.DisplayName;

                listParams.Add(new MySqlParameter("@p_isfriend", MySqlDbType.VarChar));
                listParams[4].Direction = ParameterDirection.Input;
                listParams[4].Value = req.IsFriend;

                listParams.Add(new MySqlParameter("@P_TOTAL_RECORD_INPAGE", MySqlDbType.Int64));
                listParams[5].Direction = ParameterDirection.Input;
                listParams[5].Value = pTotalRecordInPage;

                listParams.Add(new MySqlParameter("@P_BEGIN_RECORD", MySqlDbType.Int64));
                listParams[6].Direction = ParameterDirection.Input;
                listParams[6].Value = pBeginRecord;

                listParams.Add(pTotalRecord);
                listParams[7].Direction = ParameterDirection.Output;

                var ds = MySQLHelper.ExecuteDataSet(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_userprofile_search_option", listParams.ToArray());

                res.Code = 1;
                res.Source = resSearch;
                res.Source.Datas = CommonLib.ConvertFunction<UserProfileSearchRes>.DataSetToCollection(ds);
                res.Source.TotalRecord = Int32.Parse(pTotalRecord.Value.ToString());

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

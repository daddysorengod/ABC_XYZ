using CommoLib;
using CommonLib;
using HelperMySqlLib;
using MySql.Data.MySqlClient;
using ObjectInterface;
using ObjectInterface.Post;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class PostDA
    {
        public Response<dynamic> AddPostOnNewFeed(PostInsertReq post)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Decimal);
                MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar);
                List<MySqlParameter> listParams = new List<MySqlParameter>();

                listParams.Add(new MySqlParameter("@p_idgroup", MySqlDbType.Int32));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = post.IdGroup;

                listParams.Add(new MySqlParameter("@p_iduser", MySqlDbType.Int32));
                listParams[1].Direction = ParameterDirection.Input;
                listParams[1].Value = post.IdUser;

                listParams.Add(new MySqlParameter("@p_description", MySqlDbType.VarChar));
                listParams[2].Direction = ParameterDirection.Input;
                listParams[2].Value = post.Description;

                listParams.Add(new MySqlParameter("@p_createddate", MySqlDbType.DateTime));
                listParams[3].Direction = ParameterDirection.Input;
                listParams[3].Value = DateTime.Now;


                listParams.Add(pReturn);
                listParams[4].Direction = ParameterDirection.Output;

                listParams.Add(pMessage);
                listParams[5].Direction = ParameterDirection.Output;

                MySQLHelper.ExecuteNonQuery(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_post_insert_newfeed", listParams.ToArray());

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

        public Response<dynamic> DeletePostFromSystem(int id)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Decimal);
                MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar);
                List<MySqlParameter> listParams = new List<MySqlParameter>();

                listParams.Add(new MySqlParameter("@p_id", MySqlDbType.Int32));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = id;

                listParams.Add(pReturn);
                listParams[1].Direction = ParameterDirection.Output;

                listParams.Add(pMessage);
                listParams[2].Direction = ParameterDirection.Output;

                MySQLHelper.ExecuteNonQuery(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_delete_post", listParams.ToArray());

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

        public Response<dynamic> DeletePostFromAuthUser(int id)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Decimal);
                MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar);
                List<MySqlParameter> listParams = new List<MySqlParameter>();

                listParams.Add(new MySqlParameter("@p_id", MySqlDbType.Int32));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = id;

                listParams.Add(pReturn);
                listParams[1].Direction = ParameterDirection.Output;

                listParams.Add(pMessage);
                listParams[2].Direction = ParameterDirection.Output;

                MySQLHelper.ExecuteNonQuery(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_deleted_post_by_auth_user", listParams.ToArray());

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


        public Response<dynamic> LikePost(int id)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Int32);
                MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar);
                List<MySqlParameter> listParams = new List<MySqlParameter>();

                listParams.Add(new MySqlParameter("@p_idpost", MySqlDbType.Int32));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = id;

                listParams.Add(pReturn);
                listParams[1].Direction = ParameterDirection.Output;

                listParams.Add(pMessage);
                listParams[2].Direction = ParameterDirection.Output;

                MySQLHelper.ExecuteNonQuery(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_post_like", listParams.ToArray());

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

        public Response<dynamic> EditPost(PostEditReq req)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Decimal);
                MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar);
                List<MySqlParameter> listParams = new List<MySqlParameter>();

                listParams.Add(new MySqlParameter("@p_idpost", MySqlDbType.Int32));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = req.IdPost;

                listParams.Add(new MySqlParameter("@p_iduser", MySqlDbType.Int32));
                listParams[1].Direction = ParameterDirection.Input;
                listParams[1].Value = req.IdUser;

                listParams.Add(new MySqlParameter("@p_description", MySqlDbType.VarChar));
                listParams[2].Direction = ParameterDirection.Input;
                listParams[2].Value = req.Description;

                listParams.Add(pReturn);
                listParams[3].Direction = ParameterDirection.Output;

                listParams.Add(pMessage);
                listParams[4].Direction = ParameterDirection.Output;

                MySQLHelper.ExecuteNonQuery(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_post_edit", listParams.ToArray());

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

        public Response<SearchRes<PostInfo>> GetPostOption(PostSearchOption post, int pTotalRecordInPage, int pBeginRecord)
        {
            Response<SearchRes<PostInfo>> res = new Response<SearchRes<PostInfo>>();
            SearchRes<PostInfo> resSearch = new(); 
            try
            {
                MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Decimal);
                MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar);
                MySqlParameter pTotalRecord = new MySqlParameter("@p_total_record", MySqlDbType.Decimal);
                List<MySqlParameter> listParams = new List<MySqlParameter>();

                listParams.Add(new MySqlParameter("@p_userposting", MySqlDbType.VarChar));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = post.UserPosting;

                listParams.Add(new MySqlParameter("@p_description", MySqlDbType.VarChar));
                listParams[1].Direction = ParameterDirection.Input;
                listParams[1].Value = post.Description;

                listParams.Add(new MySqlParameter("@p_iduser", MySqlDbType.Int32));
                listParams[2].Direction = ParameterDirection.Input;
                listParams[2].Value = post.IdUser;

                listParams.Add(new MySqlParameter("@p_idgroup", MySqlDbType.Int32));
                listParams[3].Direction = ParameterDirection.Input;
                listParams[3].Value = post.IdGroup;

                listParams.Add(new MySqlParameter("@P_TOTAL_RECORD_INPAGE", MySqlDbType.Int64));
                listParams[4].Direction = ParameterDirection.Input;
                listParams[4].Value = pTotalRecordInPage;

                listParams.Add(new MySqlParameter("@P_BEGIN_RECORD", MySqlDbType.Int64));
                listParams[5].Direction = ParameterDirection.Input;
                listParams[5].Value = pBeginRecord;

                listParams.Add(pTotalRecord);
                listParams[6].Direction = ParameterDirection.Output;

                var ds = MySQLHelper.ExecuteDataSet(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_search_post_option", listParams.ToArray());

                res.Code = 1;
                res.Source = resSearch;
                res.Source.Datas = CommonLib.ConvertFunction<PostInfo>.DataSetToCollection(ds);
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

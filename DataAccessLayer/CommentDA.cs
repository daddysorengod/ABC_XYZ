using CommoLib;
using HelperMySqlLib;
using MySql.Data.MySqlClient;
using ObjectInterface;
using ObjectInterface.Comment;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class CommentDA
    {
        public Response<dynamic> CreateComment(CommentCreateReq comment)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Decimal);
                MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar);
                List<MySqlParameter> listParams = new List<MySqlParameter>();

                listParams.Add(new MySqlParameter("@p_iduser", MySqlDbType.Int32));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = comment.IdUser;

                listParams.Add(new MySqlParameter("@p_idpost", MySqlDbType.Int32));
                listParams[1].Direction = ParameterDirection.Input;
                listParams[1].Value = comment.IdPost;


                listParams.Add(new MySqlParameter("@p_createddate", MySqlDbType.DateTime));
                listParams[2].Direction = ParameterDirection.Input;
                listParams[2].Value = DateTime.Now;

                listParams.Add(new MySqlParameter("@p_description", MySqlDbType.VarChar));
                listParams[3].Direction = ParameterDirection.Input;
                listParams[3].Value = comment.Description;

                listParams.Add(pReturn);
                listParams[4].Direction = ParameterDirection.Output;

                listParams.Add(pMessage);
                listParams[5].Direction = ParameterDirection.Output;

                MySQLHelper.ExecuteNonQuery(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_comment_create_comment", listParams.ToArray());

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

        public Response<dynamic> EditComment(CommentEditReq comment, int pId)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Decimal);
                MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar);
                List<MySqlParameter> listParams = new List<MySqlParameter>();

                listParams.Add(new MySqlParameter("@p_id", MySqlDbType.Int32));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = pId;

                listParams.Add(new MySqlParameter("@p_description", MySqlDbType.VarChar));
                listParams[1].Direction = ParameterDirection.Input;
                listParams[1].Value = comment.Description;

                listParams.Add(pReturn);
                listParams[2].Direction = ParameterDirection.Output;

                listParams.Add(pMessage);
                listParams[3].Direction = ParameterDirection.Output;

                MySQLHelper.ExecuteNonQuery(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_comment_edit", listParams.ToArray());

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

        public Response<dynamic> DeleteComment( int pId)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Decimal);
                MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar);
                List<MySqlParameter> listParams = new List<MySqlParameter>();

                listParams.Add(new MySqlParameter("@p_id", MySqlDbType.Int32));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = pId;

                listParams.Add(pReturn);
                listParams[1].Direction = ParameterDirection.Output;

                listParams.Add(pMessage);
                listParams[2].Direction = ParameterDirection.Output;

                MySQLHelper.ExecuteNonQuery(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_comment_delete", listParams.ToArray());

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

        public Response<List<CommentInPost>> GetCommentByPostId(int pIdPost)
        {
            Response<List<CommentInPost>> res = new Response<List<CommentInPost>>(); 
            try
            {
                MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Decimal);
                MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar);
                List<MySqlParameter> listParams = new List<MySqlParameter>();

                listParams.Add(new MySqlParameter("@p_idpost", MySqlDbType.Int64));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = pIdPost;

                listParams.Add(pReturn);
                listParams[1].Direction = ParameterDirection.Output;


                listParams.Add(pMessage);
                listParams[2].Direction = ParameterDirection.Output;

                var ds = MySQLHelper.ExecuteDataSet(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_get_comment_by_idpost", listParams.ToArray());

                if (Int32.Parse(pReturn.Value.ToString()) < 0)
                {
                    res.Code = Int32.Parse(pReturn.Value.ToString());
                    res.Source = null;
                    return res;
                }

                res.Code = 1;
                res.Source = CommonLib.ConvertFunction<CommentInPost>.DataSetToCollection(ds);
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

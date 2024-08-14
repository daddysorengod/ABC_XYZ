using CommoLib;
using CommonLib;
using HelperMySqlLib;
using MySql.Data.MySqlClient;
using ObjectInterface;
using ObjectInterface.Image;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class ImgeDA
    {
        public Response<dynamic> AddNewImage(ImageReq img)
        {
            Response<dynamic> res = new(); 

            try
			{
                MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Decimal);
                MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar);
                List<MySqlParameter> listParams = new List<MySqlParameter>();

                listParams.Add(new MySqlParameter("@p_iduser", MySqlDbType.Int32));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = img.IdUser;

                listParams.Add(new MySqlParameter("@p_idpost", MySqlDbType.Int32));
                listParams[1].Direction = ParameterDirection.Input;
                listParams[1].Value = img.IdPost;

                listParams.Add(new MySqlParameter("@p_idalbum", MySqlDbType.VarChar));
                listParams[2].Direction = ParameterDirection.Input;
                listParams[2].Value = img.IdAlbum;

                listParams.Add(new MySqlParameter("@p_description", MySqlDbType.VarChar));
                listParams[3].Direction = ParameterDirection.Input;
                listParams[3].Value = img.Description;

                listParams.Add(new MySqlParameter("@p_createddate", MySqlDbType.DateTime));
                listParams[4].Direction = ParameterDirection.Input;
                listParams[4].Value = DateTime.Now;

                listParams.Add(new MySqlParameter("@p_url", MySqlDbType.VarChar));
                listParams[5].Direction = ParameterDirection.Input;
                listParams[5].Value = img.Url;

                listParams.Add(pReturn);
                listParams[6].Direction = ParameterDirection.Output;

                listParams.Add(pMessage);
                listParams[7].Direction = ParameterDirection.Output;

                MySQLHelper.ExecuteNonQuery(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_insert_image", listParams.ToArray());

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
        public Response<List<Image>> GetImages(int pIdUser, int pIdPost)
        {
            Response<List<Image>> res = new Response<List<Image>>();
            try
            {
                MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Decimal);
                MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar);
                List<MySqlParameter> listParams = new List<MySqlParameter>();

                listParams.Add(new MySqlParameter("@p_iduser", MySqlDbType.Int64));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = pIdUser;

                listParams.Add(new MySqlParameter("@p_idpost", MySqlDbType.Int64));
                listParams[1].Direction = ParameterDirection.Input;
                listParams[1].Value = pIdPost;

                listParams.Add(pReturn);
                listParams[2].Direction = ParameterDirection.Output;


                listParams.Add(pMessage);
                listParams[3].Direction = ParameterDirection.Output;

                var ds = MySQLHelper.ExecuteDataSet(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_get_image_by_id", listParams.ToArray());

                if (Int32.Parse(pReturn.Value.ToString()) < 0)
                {
                    res.Code = Int32.Parse(pReturn.Value.ToString());
                    res.Source = null;
                    return res;
                }

                res.Code = 1;
                res.Source = CommonLib.ConvertFunction<Image>.DataSetToCollection(ds);
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

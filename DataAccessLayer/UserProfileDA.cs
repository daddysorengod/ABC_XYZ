using CommoLib;
using HelperMySqlLib;
using MySql.Data.MySqlClient;
using ObjectInterface;
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

                listParams.Add(pReturn);
                listParams[8].Direction = ParameterDirection.Output;

                listParams.Add(pMessage);
                listParams[9].Direction = ParameterDirection.Output;

                MySQLHelper.ExecuteNonQuery(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_userprofile_insert", listParams.ToArray());

                response.Code = Decimal.Parse(pReturn.Value.ToString());
                response.Message = pMessage.Value.ToString();
                return response;
            }
            catch (Exception ex)
            {
                response.Code = -1;
                response.Message = "Exception:" + ex.ToString();
                return response;
                Logger.log.Error(ex, ex.ToString());
            }
        }

    }
}

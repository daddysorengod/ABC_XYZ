using CommoLib;
using CommonLib;
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
    public class AuthDA 
    {
        public Response<Account> Login(string pUsername, string pPassword)
        {
            DataSet ds = new DataSet();
            Response<Account> res = new Response<Account>();
            try
            {
                MySqlParameter pReturn = new MySqlParameter("@p_return", MySqlDbType.Decimal);
                MySqlParameter pMessage = new MySqlParameter("@p_message", MySqlDbType.VarChar);

                List<MySqlParameter> listParams = new List<MySqlParameter>();

                listParams.Add(new MySqlParameter("@p_username", MySqlDbType.VarChar));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = pUsername;

                listParams.Add(new MySqlParameter("@p_password", MySqlDbType.VarChar));
                listParams[1].Direction = ParameterDirection.Input;
                listParams[1].Value = pPassword;

                listParams.Add(pReturn);
                listParams[2].Direction = ParameterDirection.Output;
                listParams.Add(pMessage);
                listParams[3].Direction = ParameterDirection.Output;

                ds = MySQLHelper.ExecuteDataSet(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_login", listParams.ToArray());

                Account rs = CommonLib.ConvertFunction<Account>.DataSetToObject(ds);

                if (Decimal.Parse(pReturn.Value.ToString()) != 1)
                {
                    res.Code = -1;
                    res.Message = pMessage.Value.ToString();
                    res.Source = new Account();
                    return res; 
                }
               
                res.Code = 1;
                res.Message = pMessage.Value.ToString();
                res.Source = rs;
                return res;
            }
            catch (Exception ex)
            {
                Logger.log.Error(ex.ToString());
                res.Code = -1;
                res.Message = ex.ToString();
                res.Source = new Account();
                return res;
            }
        }
    }
}

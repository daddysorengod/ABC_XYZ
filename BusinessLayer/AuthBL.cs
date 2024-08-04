using CommoLib;
using DataAccessLayer;
using ObjectInterface;
using ObjectInterface.UserProfile;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer
{
    public interface IAuthBL
    {
        Response<Account> Login(string pUsername, string pPassword);
    }
    public class AuthBL : IAuthBL
    {
        AuthDA _authDA = new AuthDA();
        public Response<Account> Login(string pUsername, string pPassword)
        {
            Response<Account> res = new();
            try
            {
                res = _authDA.Login(pUsername, pPassword);
                if (res.Code == -1)
                {
                    return res;
                }
                return res;
            }
            catch (Exception ex)
            {
                return res;
                Logger.log.Error(ex.ToString());
            }
        }
    }
}

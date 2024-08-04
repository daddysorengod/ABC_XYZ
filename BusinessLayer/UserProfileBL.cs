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
    public interface IUserProfileBL
    {
        Task<Response<dynamic>> AddNewUserProfile(UserProfileInsertReq user);
    }
    public class UserProfileBL : IUserProfileBL
    {
        UserProfileDA _userProfileDA = new UserProfileDA();
        public async Task<Response<dynamic>> AddNewUserProfile(UserProfileInsertReq user)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                user.Password = Encryptor.HashPasswordSHA256(user.Password);
                res = _userProfileDA.AddNewUserProfile(user);

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

using CommoLib;
using DataAccessLayer;
using ObjectInterface;
using ObjectInterface.UserGroup;
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

        Task<Response<dynamic>> EditUserProfile(UserProfileUpdateReq user, int id);

        Task<Response<UserProfile>> GetUserProfileById(int id);

        Task<Response<List<UserProfile>>> GetListUserProfile(int id);

        Task<Response<SearchRes<UserProfileSearchRes>>> GetListUserSearchOption(UserProfileSearchReq req, int pTotalRecordInPage, int pBeginRecord);
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

        public async Task<Response<dynamic>> EditUserProfile(UserProfileUpdateReq user, int id)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                res = _userProfileDA.EditUserProfile(user, id);
                return res;
            }
            catch (Exception ex)
            {
                return res;
                Logger.log.Error(ex.ToString());
            }
        }

        public async Task<Response<List<UserProfile>>> GetListUserProfile(int id)
        {
            Response<List<UserProfile>> res = new Response<List<UserProfile>>();
            try
            {
                res = _userProfileDA.GetListUserProfile(id);
                return res;
            }
            catch (Exception ex)
            {
                return res;
                Logger.log.Error(ex.ToString());
            }
        }

        public async Task<Response<SearchRes<UserProfileSearchRes>>> GetListUserSearchOption(UserProfileSearchReq req, int pTotalRecordInPage, int pBeginRecord)
        {
            Response<SearchRes<UserProfileSearchRes>> res = new Response<SearchRes<UserProfileSearchRes>>();
            try
            {
                res = _userProfileDA.GetListUserSearchOption(req, pTotalRecordInPage, pBeginRecord);
                return res;
            }
            catch (Exception ex)
            {
                return res;
                Logger.log.Error(ex.ToString());
            }
        }

        public async Task<Response<UserProfile>> GetUserProfileById(int id)
        {
            Response<UserProfile> res = new Response<UserProfile>();
            try
            {
                res = _userProfileDA.GetProfileById(id);
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

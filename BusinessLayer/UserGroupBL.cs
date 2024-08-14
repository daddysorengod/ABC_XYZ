using CommoLib;
using DataAccessLayer;
using ObjectInterface;
using ObjectInterface.SocialGroup;
using ObjectInterface.UserGroup;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer
{
    public interface IUserGroupBL
    {
        public Task<Response<dynamic>> RequestToJoinGroup(UserGroupJoinReq req);
        public Task<Response<dynamic>> RejectRequestJoinGroup(UserGroupApproveAndRejectReq req);
        public Task<Response<dynamic>> ApproveRequestJoinGroup(UserGroupApproveAndRejectReq req);
        public Task<Response<SearchRes<UserGroup>>> GetUserGroupOption(UserGroupSearchReq group, int pTotalRecordInPage, int pBeginRecord);
    }
    public class UserGroupBL : IUserGroupBL
    {
        UserGroupDA _userGroupDA = new UserGroupDA();
        public async Task<Response<dynamic>> ApproveRequestJoinGroup(UserGroupApproveAndRejectReq req)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                res = _userGroupDA.ApproveRequestJoinGroup(req);
                return res;
            }
            catch (Exception ex)
            {
                return res;
                Logger.log.Error(ex.ToString());
            }
        }

        public async Task<Response<SearchRes<UserGroup>>> GetUserGroupOption(UserGroupSearchReq req, int pTotalRecordInPage, int pBeginRecord)
        {
            Response<SearchRes<UserGroup>> res = new Response<SearchRes<UserGroup>>();
            try
            {
                res = _userGroupDA.GetUserGroupOption(req, pTotalRecordInPage, pBeginRecord);
                return res;
            }
            catch (Exception ex)
            {
                return res;
                Logger.log.Error(ex.ToString());
            }
        }

        public async Task<Response<dynamic>> RejectRequestJoinGroup(UserGroupApproveAndRejectReq req)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                res = _userGroupDA.RejectRequestJoinGroup(req);
                return res;
            }
            catch (Exception ex)
            {
                return res;
                Logger.log.Error(ex.ToString());
            }
        }

        public async Task<Response<dynamic>> RequestToJoinGroup(UserGroupJoinReq req)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                res = _userGroupDA.RequestToJoinGroup(req);
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

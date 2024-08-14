using CommoLib;
using DataAccessLayer;
using ObjectInterface;
using ObjectInterface.Post;
using ObjectInterface.SocialGroup;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer
{
    public interface ISocialGroupBL
    {
        public Task<Response<dynamic>> CreateNewGroup(SocialGroupAddReq group);
        public Task<Response<dynamic>> DeleteGroup(SocialGroupDeleteReq group);
        Task<Response<SearchRes<SocialGroup>>> GetSocialGroupOption(SocialGroupSearchReq group, int pTotalRecordInPage, int pBeginRecord);

    }

    public class SocialGroupBL : ISocialGroupBL
    {
        SocialGroupDA _socialGroupDA = new SocialGroupDA();
        public async Task<Response<dynamic>> CreateNewGroup(SocialGroupAddReq group)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                res = _socialGroupDA.CreateNewGroup(group);
                return res;
            }
            catch (Exception ex)
            {
                return res;
                Logger.log.Error(ex.ToString());
            }
        }

        public async Task<Response<dynamic>> DeleteGroup(SocialGroupDeleteReq group)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                res = _socialGroupDA.DeleteGroup(group);
                return res;
            }
            catch (Exception ex)
            {
                return res;
                Logger.log.Error(ex.ToString());
            }
        }

        public async Task<Response<SearchRes<SocialGroup>>> GetSocialGroupOption(SocialGroupSearchReq group, int pTotalRecordInPage, int pBeginRecord)
        {
            Response<SearchRes<SocialGroup>> res = new Response<SearchRes<SocialGroup>>();
            try
            {
                res = _socialGroupDA.GetSocialGroupOption(group, pTotalRecordInPage, pBeginRecord);
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

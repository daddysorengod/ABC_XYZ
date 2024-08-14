using ObjectInterface.UserProfile;
using ObjectInterface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ObjectInterface.FriendData;
using ObjectInterface.Message;
using DataAccessLayer;
using CommoLib;

namespace BusinessLayer
{
    public interface IFriendBL
    {
        Task<Response<dynamic>> MakeFriendRequest(MakeFriendReq friend);
        Task<Response<dynamic>> ApproveFriend(int id);
        Task<Response<dynamic>> RejectFriend(int id);
        Task<Response<List<FriendData>>> GetListFriendRequest(int id);

    }
    public class FriendBL : IFriendBL
    {
        FriendDA _friendDA = new FriendDA();
        public async Task<Response<dynamic>> ApproveFriend(int id)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                res = _friendDA.ApproveFriend(id);
                return res;
            }
            catch (Exception ex)
            {
                return res;
                Logger.log.Error(ex.ToString());
            }
        }

        public async Task<Response<List<FriendData>>> GetListFriendRequest(int id)
        {
            Response<List<FriendData>> res = new Response<List<FriendData>>();
            try
            {
                res = _friendDA.GetListRequestFriend(id);
                return res;
            }
            catch (Exception ex)
            {
                return res;
                Logger.log.Error(ex.ToString());
            }
        }

        public async Task<Response<dynamic>> MakeFriendRequest(MakeFriendReq friend)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                res = _friendDA.MakeRequestFriend(friend);
                return res;
            }
            catch (Exception ex)
            {
                return res;
                Logger.log.Error(ex.ToString());
            }
        }

        public async Task<Response<dynamic>> RejectFriend(int id)
        {
            Response<dynamic> res = new Response<dynamic>();
            try
            {
                res = _friendDA.RejectFriend(id);
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

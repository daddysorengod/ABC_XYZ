using CommoLib;
using CommonLib;
using DataAccessLayer;
using ObjectInterface;
using System.Security.Cryptography;

namespace BusinessLayer
{
    public interface IBadmintonYardBL
    {
        Task<Response<dynamic>> Search(decimal ?pId, string ?pNameYard, decimal ?pIdPrice, int pTotalRecordInPage, int pBeginRecord);
        Task<Response<dynamic>> AddYard();
        Task<Response<dynamic>> RemoveYard();
    }
    public class BadmintonYardBL : IBadmintonYardBL
    {
        BadmintonYardDA _badmintonYardDA = new BadmintonYardDA(); 
        public Task<Response<dynamic>> AddYard()
        {
            throw new NotImplementedException();
        }

        public async Task<Response<dynamic>> Search(decimal ?pId, string ?pNameYard, decimal ?pIdPrice, int pTotalRecordInPage, int pBeginRecord)
        {
            Response<dynamic> res = new();
            decimal pTotalRecord = 0;
            List<BadmintonYard> listResult = new List<BadmintonYard>();
            try
            {
                listResult =  _badmintonYardDA.SearchYard(pId, pNameYard, pIdPrice, pTotalRecordInPage, pBeginRecord, out pTotalRecord);
                
                if (listResult is not null)
                {
                    var objResul = new { pTotalRecord = pTotalRecord, Datas = listResult };
                    res.Source = objResul;
                    res.Code = 0;
                } else
                {
                    res.Source = null;
                    res.Code = -1;
                }
                return res;
            }
            catch (Exception ex)
            {
                return res;
                Logger.log.Error(ex.ToString());
            }
        }

        public Task<Response<dynamic>> RemoveYard()
        {
            throw new NotImplementedException();
        }
    }
}
using CommoLib;
using CommonLib;
using HelperMySqlLib;
using MySql.Data.MySqlClient;
using ObjectInterface;
using System.Data;

namespace DataAccessLayer
{
    public class BadmintonYardDA
    {
        public List<BadmintonYard> SearchYard(decimal ?pId, string ?pNameYard, decimal ?pIdPrice, int pTotalRecordInPage, int pBeginRecord, out decimal pTotalRecord)
        {
            DataSet ds = new DataSet();
            pTotalRecord = 0;
            try
            {
                List<MySqlParameter> listParams = new List<MySqlParameter>();
                MySqlParameter pReturn = new MySqlParameter("@p_total_record", MySqlDbType.Decimal);

                listParams.Add(new MySqlParameter("p_id", MySqlDbType.Decimal));
                listParams[0].Direction = ParameterDirection.Input;
                listParams[0].Value = pId;

                listParams.Add(new MySqlParameter("p_nameyard", MySqlDbType.VarChar));
                listParams[1].Direction = ParameterDirection.Input;
                listParams[1].Value = pNameYard;

                listParams.Add(new MySqlParameter("p_idprice", MySqlDbType.VarChar));
                listParams[2].Direction = ParameterDirection.Input;
                listParams[2].Value = pIdPrice;

                listParams.Add(new MySqlParameter("P_TOTAL_RECORD_INPAGE", MySqlDbType.Int64));
                listParams[3].Direction = ParameterDirection.Input;
                listParams[3].Value = pTotalRecordInPage;

                listParams.Add(new MySqlParameter("P_BEGIN_RECORD", MySqlDbType.Int64));
                listParams[4].Direction = ParameterDirection.Input;
                listParams[4].Value = pBeginRecord;

                listParams.Add(pReturn);
                listParams[5].Direction = ParameterDirection.Output;
                listParams[5].Value = pReturn;

                ds = MySQLHelper.ExecuteDataSet(ConfigData.ConnectionString, CommandType.StoredProcedure, "proc_badmintonyard_search", listParams.ToArray());
                return CommonLib.ConvertFunction<BadmintonYard>.DataSetToCollection(ds);
            }
            catch (Exception ex)
            {
                Logger.log.Error(ex.ToString());
                return null;
            }
        }
    }
}
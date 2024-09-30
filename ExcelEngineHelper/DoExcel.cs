using CommoLib;
using MiniExcelLibs;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExcelEngineHelper
{
    public class DoExcel : IDoExcelCore
    {
        public bool CreateNewExcelFileFromDataTable()
        {
            throw new NotImplementedException();
        }

        public bool DataTableToExcelTemplate(string patch, string templatePatch, Array listData)
        {
            try
            {
                if (listData == null) return false;

                var value = new Dictionary<string, object>
                {
                    ["datas"] = listData
                };

                MiniExcel.SaveAsByTemplate(patch, templatePatch, value);

                return true;
            }
            catch (Exception ex)
            {
                Logger.log.Error(ex.ToString());
                return false;
            }
            
        }

        public bool ReadDataFromExcel()
        {
            throw new NotImplementedException();
        }
    }
}

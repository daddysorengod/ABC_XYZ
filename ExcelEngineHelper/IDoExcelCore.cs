namespace ExcelEngineHelper
{ 
    interface IDoExcelCore
    {
        bool DataTableToExcelTemplate(string patch, string templatePatch, Array listData);
        bool ReadDataFromExcel();
        bool CreateNewExcelFileFromDataTable();

    }
}
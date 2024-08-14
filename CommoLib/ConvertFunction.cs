using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace CommonLib
{
    public class ConvertFunction<T>
    {
        public static List<T> DataSetToCollection(DataSet ds)
        {
            try
            {
                Hashtable objProperties = GetPropertiesObject(typeof(T));
                Hashtable htRowAndColumn = GetRowAndColumnFromDataSet(objProperties, ds);
                List<T> listResult = new List<T>();
                if (ds.Tables[0].Rows.Count > 0)
                {
                    foreach (DataRow item in ds.Tables[0].Rows)
                    {
                        T objResult = (T)BuildObjectFromDataSet(typeof(T), item, objProperties, htRowAndColumn);
                        listResult.Add(objResult);
                    }
                }
                return listResult;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message.ToString());
                return new List<T>();
            }
        }
        public static T DataSetToObject(DataSet ds)
        {
            try
            {
                Hashtable objProperties = GetPropertiesObject(typeof(T));
                Hashtable htRowAndColumn = GetRowAndColumnFromDataSet(objProperties, ds);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    T objResult = (T)BuildObjectFromDataSet(typeof(T), ds.Tables[0].Rows[0], objProperties, htRowAndColumn);
                    return objResult;
                }
                return default(T);
            }
            catch (Exception ex)
            {
                return default(T);
                Console.WriteLine(ex.Message.ToString());
            }
        }

        #region "private method"
        /// <summary>
        /// lay ra thuoc tinh cua object
        /// </summary>
        /// <param name="objectType"></param>
        /// <returns></returns>
        private static Hashtable GetPropertiesObject(Type objectType)
        {
            Hashtable htResult = new Hashtable();
            foreach (var item in objectType.GetProperties())
            {
                htResult[item.Name.ToUpper()] = item;
            }

            return htResult;
        }

        private static object BuildObjectFromDataSet(Type objType, DataRow dr, Hashtable htProperties, Hashtable htRowAndColumn)
        {
            string fieldName = "";
            try
            {
                object rsObject = Activator.CreateInstance(objType);
                int possition = -1;

                foreach (DictionaryEntry item in htRowAndColumn)
                {
                    fieldName = item.Key.ToString();
                    possition = (int)htRowAndColumn[fieldName];
                    PropertyInfo propertyInfo = (PropertyInfo)htProperties[fieldName];
                    var see = propertyInfo.PropertyType.FullName;
                    if (propertyInfo.CanWrite)
                    {
                        switch (propertyInfo.PropertyType.FullName)
                        {
                            case "System.Enum":
                                propertyInfo.SetValue(rsObject, System.Enum.ToObject(propertyInfo.PropertyType, dr[possition]), null);
                                break;
                            case "system.String":
                                propertyInfo.SetValue(rsObject, (string)dr[possition], null);
                                break;
                            case "system.Boolean":
                                propertyInfo.SetValue(rsObject, (Boolean)dr[possition], null);
                                break;
                            case "System.Decimal":
                                propertyInfo.SetValue(rsObject, Convert.ToDecimal(dr[possition]), null);
                                break;
                            case "System.DateTime":
                                propertyInfo.SetValue(rsObject, Convert.ToDateTime(dr[possition]), null);
                                break;
                            case "System.Int32":
                                propertyInfo.SetValue(rsObject, Convert.ToInt32(dr[possition]), null);
                                break;
                            case "System.Int64":
                                propertyInfo.SetValue(rsObject, Convert.ToInt64(dr[possition]), null);
                                break;
                            default:
                                propertyInfo.SetValue(rsObject, Convert.ChangeType(dr[possition], propertyInfo.PropertyType), null);
                                break;
                        }
                    }
                }
                return rsObject;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message.ToString());
                return Activator.CreateInstance(objType);
            }

        }

        private static Hashtable GetRowAndColumnFromDataTable(Hashtable htProperties, DataTable dt)
        {
            Hashtable hashResult = new();
            for (int i = 0; i < dt.Columns.Count; i++)
            {
                if (htProperties.ContainsKey(dt.Columns[i].ColumnName.ToUpper()))
                {
                    hashResult[dt.Columns[i].ColumnName.ToUpper()] = i;
                }
            }
            return hashResult;
        }

        private static Hashtable GetRowAndColumnFromDataSet(Hashtable htProperties, DataSet ds)
        {
            Hashtable hashResult = new();
            if (ds.Tables[0].Rows.Count > 0)
            {
                for (int i = 0; i < ds.Tables[0].Columns.Count; i++)
                {
                    if (htProperties.ContainsKey(ds.Tables[0].Columns[i].ColumnName.ToUpper()))
                    {
                        hashResult[ds.Tables[0].Columns[i].ColumnName.ToUpper()] = i;
                    }
                }
            }
            return hashResult;
        }

        #endregion
    }
}

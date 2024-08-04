using Microsoft.Extensions.Configuration;
using System.Security.Claims;
using System.Security.Cryptography;
using System.Text;

namespace CommoLib
{
    public static class Logger 
    {
        public static readonly NLog.Logger log = NLog.LogManager.GetCurrentClassLogger();
    }
    public static class ConfigData
    {
        public static string ConnectionString { get; private set; } = string.Empty;
        public static string CheckAuth { get; private set; } = string.Empty;
        public static string ValidAudience { get; private set; } = string.Empty;
        public static string ValidIssuer { get; private set; } = string.Empty;
        public static string Secret { get; private set; } = string.Empty;
        public static string TokenValidityInMinutes { get; private set; } = string.Empty;
        public static string RefreshTokenValidityInDays { get; private set; } = string.Empty;

        public static void GetConfigData(IConfigurationRoot configuration)
        {
            if (configuration == null) return;
            try
            {
                ConnectionString = configuration.GetSection("ConnectionStrings")["ConnectionString"];
                ValidAudience = configuration.GetSection("JWT")["ValidAudience"];
                ValidIssuer = configuration.GetSection("JWT")["ValidIssuer"];
                Secret = configuration.GetSection("JWT")["Secret"];
                TokenValidityInMinutes = configuration.GetSection("JWT")["TokenValidityInMinutes"];
                RefreshTokenValidityInDays = configuration.GetSection("JWT")["RefreshTokenValidityInDays"];
            }
            catch (Exception ex)
            {
                Logger.log.Error(ex.ToString());
            }
        }
    }
    public static class Encryptor
    {
        public static string MD5Hash(string text)
        {
            MD5 md5 = new MD5CryptoServiceProvider();

            //compute hash from the bytes of text  
            md5.ComputeHash(ASCIIEncoding.ASCII.GetBytes(text));

            //get hash result after compute it  
            byte[] result = md5.Hash;

            StringBuilder strBuilder = new StringBuilder();
            for (int i = 0; i < result.Length; i++)
            {
                //change it into 2 hexadecimal digits  
                //for each byte  
                strBuilder.Append(result[i].ToString("x2"));
            }

            return strBuilder.ToString();
        }
        public static string HashPasswordSHA256(string password)
        {
            using (SHA256 sha256 = SHA256.Create())
            {
                byte[] inputByte = Encoding.UTF8.GetBytes(password);
                byte[] hashByte = sha256.ComputeHash(inputByte);

                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < hashByte.Length; i++)
                {
                    sb.Append(hashByte[i].ToString("x2"));
                }
                return sb.ToString();
            }

        }
    }
}    
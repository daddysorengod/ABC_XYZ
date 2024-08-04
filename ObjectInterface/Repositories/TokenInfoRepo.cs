using ObjectInterface.Login;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectInterface.Repositories
{
    public class TokenInfoRepo : RepositoryDictionary<string, TokenInfo>
    {
        private static readonly TokenInfoRepo s_Instance = new TokenInfoRepo();

        private TokenInfoRepo()
        {
        }
        public static TokenInfoRepo GetInstance()
        {
            return s_Instance;
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectInterface.Post
{
    public class PostDeleteByUserReq
    {
        public int IdUser { get; set; }
        public int IdPost { get; set; }
    }
}

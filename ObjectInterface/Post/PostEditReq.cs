using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectInterface.Post
{
    public class PostEditReq
    {
        public int IdPost { get; set; }
        public int IdUser { get; set; }
        public string? Description { get; set; }
        public List<string> UrlImages { get; set; }
    }
}

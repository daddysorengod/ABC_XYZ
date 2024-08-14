using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectInterface.Comment
{
    public class CommentCreateReq
    {
        public int IdUser { get; set; }
        public int IdPost { get; set; }
        public string Description { get; set; }
    }
}

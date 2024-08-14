using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectInterface.Post
{
    public class PostSearchOption
    {
        public string UserPosting { get; set; } = string.Empty;
        public string Description { get; set; } = string.Empty;
        public int? IdUser { get; set; }
        public int? IdGroup { get; set; }
    }
}

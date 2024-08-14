using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectInterface.Comment
{
    public class CommentInPost : Comment
    {
        public string Avatar { get; set; }
        public string UserName { get; set; }
        public string DisplayName { get; set; }
    }
}

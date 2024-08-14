using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectInterface.UserGroup
{
    public class UserGroupSearchReq
    {
        public int? IdGroup { get; set; }
        public string? Status { get; set; }
        public string? UserName { get; set; }
        public string? DisplayName { get; set; }
        public string? Avatar { get; set; }
    }
}

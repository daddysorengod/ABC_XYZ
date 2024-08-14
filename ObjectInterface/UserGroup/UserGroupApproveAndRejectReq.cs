using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectInterface.UserGroup
{
    public class UserGroupApproveAndRejectReq
    {
        public int IdGroup { get; set; }
        public int IdUserGroup { get; set; }
        public int IdAdminGroup { get; set; }
    }
}

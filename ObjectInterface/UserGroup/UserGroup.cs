using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectInterface.UserGroup
{
    public class UserGroup
    {
        public int Id { get; set; }
        public int IdUser { get; set; }
        public int IdGroup { get; set; }
        public string Status { get; set; }
        public string RoleInGroup { get; set; }

    }
}

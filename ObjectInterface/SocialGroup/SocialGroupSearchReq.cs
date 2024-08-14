using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectInterface.SocialGroup
{
    public class SocialGroupSearchReq
    {
        public int? IdGroup { get; set; }
        public string? GroupName { get; set; }
        public int? IdCreatedUser { get; set; }
        public int? IdMember { get; set; }
    }
}

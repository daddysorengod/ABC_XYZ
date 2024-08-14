using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectInterface.SocialGroup
{
    public class SocialGroupAddReq
    {
        public int? IdUserCreated { get; set; }
        public string? GroupName { get; set; }
        public string? TypeGroup { get; set; }
        public string? BackGround { get; set; }
    }
}

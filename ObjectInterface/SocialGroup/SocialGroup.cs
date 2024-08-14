using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectInterface.SocialGroup
{
    public class SocialGroup
    {
        public int Id { get; set; }
        public int IdUserCreated { get; set; }
        public string GroupName { get; set; }
        public DateTime CreatedDate { get; set; }
        public string TypeGroup { get; set; }
        public string BackGround { get; set; }
        public int Deleted { get; set; }
    }
}

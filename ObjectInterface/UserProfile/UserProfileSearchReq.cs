using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectInterface.UserProfile
{
    public class UserProfileSearchReq
    {
        public int CurrentId { get; set; }
        public int? Id { get; set; }
        public string? UserName { get; set; }
        public string? DisplayName { get; set; }
        public string IsFriend { get; set; } = "ALL";
    }
}

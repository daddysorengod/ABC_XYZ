using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectInterface.UserProfile
{
    public class UserProfileSearchRes
    {
        public int Id { get; set; }
        public int IdFriendData { get; set; }
        public string UserName { get; set; }
        public string DisplayName { get; set; }
        public string Avatar { get; set; }
        public string FriendStatus { get; set; }
    }
}

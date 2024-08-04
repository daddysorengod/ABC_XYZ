using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectInterface.UserProfile
{
    public class UserProfile 
    {
        public long Id { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string Email { get; set; }
        public string PhoneNumber { get; set; }
        public string Avatar { get; set; }
        public DateTime CreatedDate { get; set; }
        public int Deleted { get; set; }
        public string Role { get; set; }
    }
}

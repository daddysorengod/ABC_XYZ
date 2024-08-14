﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectInterface.UserProfile
{
    public class UserProfileUpdateReq
    {
        public string? Email { get; set; }
        public string? PhoneNumber { get; set; }
        public string? DisplayName { get; set; }
        public string? Avatar { get; set; }
        public string? Education { get; set; }
        public string? Gender { get; set; }
        public string? Job { get; set; }
    }
}

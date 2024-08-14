using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectInterface.Message
{
    public class RoomChatRes
    {
        public int Id { get; set; }
        public int IdPartner { get; set; }
        public string LastMessage { get; set; }
        public DateTime LastTimeSend { get; set; }
        public string DisplayName { get; set; }
        public string Avatar { get; set; }
        public string UserName { get; set; }
    }
}

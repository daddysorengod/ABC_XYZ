using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectInterface.Message
{
    public class MessageChat
    {
        public int Id { get; set; }
        public string Message { get; set; }
        public int IdUserSend { get; set; }
        public string AvatarUserSend { get; set; }
        public string DisplayNameSend { get; set; }
        public string UserNameSend { get; set; }
        public int IdUserRecieve { get; set; }
        public string AvatarUserRecieve { get; set; }
        public string DisplayNameRecieve { get; set; }
        public string UserNameRecieve { get; set; }
        public string UrlAttach { get; set; }
        public DateTime CreatedDate { get; set; }


    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectInterface.Message
{
    public class MessageSendReq
    {
        public string? Message { get; set; }
        public string? UrlAttach { get; set; }
        public int IdUserSend { get; set; }
        public int IdUserRecieve { get; set; }
        public int IdRoom { get; set; }
        public DateTime CreatedDate { get; set; }
    }
}

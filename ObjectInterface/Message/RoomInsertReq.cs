using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectInterface.Message
{
    public class RoomInsertReq
    {
        public int? IdCreatedUser { get; set; }
        public int? ToIdUser { get; set; }
        public string? RoomName { get; set; }

    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectInterface.Image
{
    public class ImageReq
    {
        public int? IdUser { get; set; }
        public int? IdPost { get; set; }
        public int? IdAlbum { get; set; }
        public DateTime CreatedDate { get; set; }
        public string? Url { get; set; }
        public string? Description { get; set; }
    }
}

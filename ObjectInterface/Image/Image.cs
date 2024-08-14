using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectInterface.Image
{
    public class Image
    {
        public int Id { get; set; }
        public int IdUser { get; set; } 
        public int IdPost { get; set; } 
        public int IdAlbum { get; set; } 
        public DateTime CreatedDate { get; set; }
        public int Deleted { get; set; }
        public string? Url { get; set; }
    }
}

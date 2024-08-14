using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectInterface.Comment
{
    public class Comment
    {
        public int Id { get; set; }
        public int IdUser { get; set; }
        public int IdPost { get; set; }
        public string Description { get; set; }
        public DateTime CreatedDate { get; set; }
        public int Deleted { get; set; }
    }
}

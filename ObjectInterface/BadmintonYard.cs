using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectInterface
{
    public class BadmintonYard
    {
        public decimal Id { get; set; }
        public string Nameyard { get; set; } = string.Empty;
        public decimal IdPrice { get; set; }
        public string Status { get; set; } = string.Empty;
        public string Description { get; set; } = string.Empty;
        public string Image { get; set; } = string.Empty;
        public decimal Deleted { get; set; }
    }
}

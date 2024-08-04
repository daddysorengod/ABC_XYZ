using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectInterface
{
    public class Building
    {
        public decimal Id { get; set; } = 0;
        //public decimal ManagerId { get; set; } = 0;
        public string BuildingName { get; set; } = string.Empty;
        public string Location { get; set; } = string.Empty;
        public string BuildingCode { get; set; } = string.Empty;
        public string Status { get; set; } = string.Empty;
        public decimal CreateBy { get; set; } = 0;
        public DateTime CreateDate { get; set; }
        public decimal deleted { get; set; } = 0;
    }
}

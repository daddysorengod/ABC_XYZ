using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectInterface
{
    public class Apartment
    {
        public decimal Id { get; set; }
        public string ApartmentCode { get; set; } = String.Empty;
        public decimal Price { get; set; }
        public decimal Room { get; set; }
        public decimal Wc { get; set; }
        public decimal Airconditioner { get; set; }
        public decimal Heater { get; set; }
        public decimal Stove { get; set; }
        public decimal Bed { get; set; }
        public decimal Fridge { get; set; }
        public decimal Wardrobe { get; set; }
        public decimal Balcony { get; set; }    
        public decimal MaxPeople { get; set; }
        public string Description { get; set; } = String.Empty;
        public decimal Deleted { get; set; }
        public decimal BuildingId { get; set; }
        public string Status { get; set; } = String.Empty;
    }
}

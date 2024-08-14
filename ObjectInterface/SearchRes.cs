using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ObjectInterface
{
    public class SearchRes<T>
    {
        public int TotalRecord { get; set; }
        public List<T>? Datas { get; set; }
    }
}

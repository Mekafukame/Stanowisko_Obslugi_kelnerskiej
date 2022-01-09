using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Stanowisko_obsługi_kelnerskiej
{
    public class RestauracjaClass
    {
        public int NrStolika { get; set; }
        public decimal CenaSuma { get; set; }
        public List<NewOrderClass> Zamowienia { get; set; }

        public RestauracjaClass() { Zamowienia = new List<NewOrderClass>(); }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Stanowisko_obsługi_kelnerskiej
{
    public class NewOrderClass
    {
        public int nr { get; set; }
        public string kategoria { get; set; }
        public string nazwa { get; set; }
        public string rozmiar { get; set; }
        public string skladniki { get; set; }
        public double cena { get; set; }
        public int ilosc { get; set; }
        public double cenaSuma { get; set; }

        public NewOrderClass() { }
    }
}

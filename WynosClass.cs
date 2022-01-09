using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Stanowisko_obsługi_kelnerskiej
{
    public class WynosClass
    {
        public int NrZamowienia { get; set; }
        public string Nazwisko { get; set; }
        public string Telefon { get; set; }
        public decimal CenaSuma { get; set; }
        public List<NewOrderClass> Zamowienia { get; set; }

        public WynosClass() { Zamowienia = new List<NewOrderClass>(); }        
    }
}

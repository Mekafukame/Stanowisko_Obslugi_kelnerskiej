using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Stanowisko_obsługi_kelnerskiej
{
    public class DowozClass
    {
        public int NrZamowienia { get; set; }
        public string Nazwisko { get; set; }
        public string Imie { get; set; }
        public string Telefon { get; set; }
        public string NrDomu { get; set; }
        public string NrMieszkania { get; set; }
        public string Miejscowosc { get; set; }
        public string Ulica { get; set; }
        public decimal CenaSuma { get; set; }
        public List<NewOrderClass> Zamowienia { get; set; }

        public DowozClass() { Zamowienia = new List<NewOrderClass>(); }
    }
}

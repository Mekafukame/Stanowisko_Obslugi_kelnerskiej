using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Data;
using System.Data.SqlClient;

namespace Stanowisko_obsługi_kelnerskiej
{
    /// <summary>
    /// Logika interakcji dla klasy SeatInfo.xaml
    /// </summary>
    public partial class SeatInfo : Page
    {
        string TheSeat;
        Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskie stanowiskoKelnerskie;
        List<RestauracjaClass> RestauracjaListData = new List<RestauracjaClass>();
        public SeatInfo(string seat)
        {
            InitializeComponent();
            TheSeat = seat;
            
            
            
        }
        private void Load_RestaurantDataGrid()
        {
            RestauracjaListData.Clear();            
            Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskieTableAdapters.ZamowieniaRestauracjaTableAdapter stanowiskoKelnerskieRestauracjaAdapter = new Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskieTableAdapters.ZamowieniaRestauracjaTableAdapter();
            stanowiskoKelnerskieRestauracjaAdapter.Fill(stanowiskoKelnerskie.ZamowieniaRestauracja);
            stanowiskoKelnerskieRestauracjaAdapter.Connection.Open();
            SqlCommand cmd = stanowiskoKelnerskieRestauracjaAdapter.Connection.CreateCommand();
            cmd.CommandText = "SELECT DISTINCT NrStolika FROM ZamowieniaRestauracja WHERE NrStolika = " + TheSeat;
            using (SqlDataReader objReader = cmd.ExecuteReader())
            {
                if (objReader.HasRows)
                {
                    while (objReader.Read())
                    {
                        RestauracjaClass item = new RestauracjaClass();
                        item.NrStolika = objReader.GetInt32(objReader.GetOrdinal("NrStolika"));                        
                        RestauracjaListData.Add(item);
                    }
                }
            }

            foreach (RestauracjaClass obj in RestauracjaListData)
            {
                cmd.CommandText = "SELECT Nr, Kategoria, Nazwa, Rozmiar, Cena, Ilosc FROM ZamowieniaRestauracja WHERE NrStolika = " + obj.NrStolika;
                using (SqlDataReader objReader = cmd.ExecuteReader())
                {
                    if (objReader.HasRows)
                    {
                        while (objReader.Read())
                        {
                            NewOrderClass item = new NewOrderClass();
                            item.nr = objReader.GetInt32(objReader.GetOrdinal("Nr"));
                            item.kategoria = objReader.GetString(objReader.GetOrdinal("Kategoria"));
                            item.nazwa = objReader.GetString(objReader.GetOrdinal("Nazwa"));
                            item.rozmiar = objReader.GetString(objReader.GetOrdinal("Rozmiar"));
                            item.cena = (double)objReader.GetDecimal(objReader.GetOrdinal("Cena"));
                            item.ilosc = objReader.GetInt32(objReader.GetOrdinal("Ilosc"));
                            item.cenaSuma = item.ilosc * item.cena;
                            obj.Zamowienia.Add(item);
                            obj.CenaSuma += (decimal)item.cenaSuma;
                        }
                    }
                }
            }
            stanowiskoKelnerskieRestauracjaAdapter.Connection.Close();
            Refresh_RestauracjaList();            
        }       
        public void Refresh_RestauracjaList()
        {            
            OrderListGrid.ItemsSource = null;
            if (RestauracjaListData.Count > 0)
            {
                OrderListGrid.ItemsSource = RestauracjaListData.First().Zamowienia;
                PriceLabel.Content = "Do Zapłaty: " + RestauracjaListData.First().CenaSuma.ToString("N2") + " zł";
                AddBttn.IsEnabled = true;
                EndBttn.IsEnabled = true;
            }
            else
            {
                PriceLabel.Content = "Do Zapłaty: 0,00 zł";
                AddBttn.IsEnabled = false;
                EndBttn.IsEnabled = false;
            }

        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            stanowiskoKelnerskie = ((Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskie)(this.FindResource("stanowiskoKelnerskie")));
            Load_RestaurantDataGrid();
            SeatLabel.Content = "Stolik nr " + TheSeat;
            if (RestauracjaListData.Count > 0) 
            {
                PriceLabel.Content = "Do Zapłaty: " + RestauracjaListData.First().CenaSuma.ToString("N2") + " zł";
            }
            else PriceLabel.Content = "Do Zapłaty: 0,00 zł";
        }        

        private void AddToOrder_OnClick(object sender, RoutedEventArgs e)
        {
            AddToOrderWindow AddOrderWindow = new AddToOrderWindow();
            AddOrderWindow.ShowDialog();
        }

        private void EndOrder_OnClick(object sender, RoutedEventArgs e)
        {
            MessageBoxResult messageBoxResult = System.Windows.MessageBox.Show("Czy na pewno chcesz zakończyć zamówienie?", "", System.Windows.MessageBoxButton.YesNo);
            if (messageBoxResult == MessageBoxResult.Yes)
            {
                Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskieTableAdapters.ZamowieniaRestauracjaTableAdapter stanowiskoKelnerskieRestauracjaAdapter = new Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskieTableAdapters.ZamowieniaRestauracjaTableAdapter();
                stanowiskoKelnerskieRestauracjaAdapter.Fill(stanowiskoKelnerskie.ZamowieniaRestauracja);
                stanowiskoKelnerskieRestauracjaAdapter.Connection.Open();
                SqlCommand cmd = stanowiskoKelnerskieRestauracjaAdapter.Connection.CreateCommand();
                cmd.CommandText = "Delete FROM ZamowieniaRestauracja WHERE NrStolika = " + TheSeat;
                cmd.ExecuteNonQuery();
                Load_RestaurantDataGrid();
                ((MainWindow)Application.Current.MainWindow).DeleteRestaurantOrder(TheSeat);
                MessageBox.Show("Zamówienie zostało zakończone!");
                stanowiskoKelnerskieRestauracjaAdapter.Connection.Close();
            }
        }
    }
}

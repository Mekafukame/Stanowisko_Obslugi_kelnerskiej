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
using System.Data.SqlClient;
using System.Data;

namespace Stanowisko_obsługi_kelnerskiej
{
    /// <summary>
    /// Logika interakcji dla klasy MainWindow.xaml
    /// </summary>
        
    
    public partial class MainWindow : Window
    {
        private Grid actualGrid;
        private Grid lastMenuGrid;        
        private Button lastMenuButton;
        private RadioButton checkedOrderType, checkedTable;
        private int SelectedRowIndex;
        public List<NewOrderClass> OrderList = new List<NewOrderClass>();
        public List<WynosClass> OdbiorWlasnyList = new List<WynosClass>();
        public List<DowozClass> DowozListData = new List<DowozClass>();
        public string actualSeat = string.Empty;
        Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskie stanowiskoKelnerskie;
        public MainWindow()
        {
            InitializeComponent();
            actualGrid = HomePage;
            actualGrid.Visibility = Visibility.Visible;
            NoweZamowienie.Visibility = Visibility.Hidden;
            OdbiorWlasny.Visibility = Visibility.Hidden;
            Restauracja.Visibility = Visibility.Hidden;
            Dostawa.Visibility = Visibility.Hidden;
            OrderListGrid.ItemsSource = OrderList;
            StolikMenu.Visibility = Visibility.Hidden;
            DowozMenu.Visibility = Visibility.Hidden;
            WynosMenu.Visibility = Visibility.Hidden;                
        }

        private void NewOrder_OnClick(object sender, RoutedEventArgs e)
        {
            if (lastMenuButton != null) lastMenuButton.IsEnabled = true;
            lastMenuButton = NewOrderMenuBttn;
            lastMenuButton.IsEnabled = false;
            actualGrid.Visibility = Visibility.Hidden;
            actualGrid = NoweZamowienie;
            actualGrid.Visibility = Visibility.Visible;
        }

        private void Restaurant_OnClick(object sender, RoutedEventArgs e)
        {
            if (lastMenuButton != null) lastMenuButton.IsEnabled = true;
            lastMenuButton = RestaurantMenuBttn;
            lastMenuButton.IsEnabled = false;
            actualGrid.Visibility = Visibility.Hidden;
            actualGrid = Restauracja;
            actualGrid.Visibility = Visibility.Visible;
        }

        private void Colect_OnClick(object sender, RoutedEventArgs e)
        {
            if (lastMenuButton != null) lastMenuButton.IsEnabled = true;
            lastMenuButton = ColectMenuBttn;
            lastMenuButton.IsEnabled = false;
            actualGrid.Visibility = Visibility.Hidden;
            actualGrid = OdbiorWlasny;
            actualGrid.Visibility = Visibility.Visible;
        }

        private void Delivery_OnClick(object sender, RoutedEventArgs e)
        {
            if (lastMenuButton != null) lastMenuButton.IsEnabled = true;
            lastMenuButton = DeliveryMenuBttn;
            lastMenuButton.IsEnabled = false;
            actualGrid.Visibility = Visibility.Hidden;
            actualGrid = Dostawa;
            actualGrid.Visibility = Visibility.Visible;
        }

        private void AddOrder_OnClick(object sender, RoutedEventArgs e)
        {
            NewOrderWindow OrderWindow = new NewOrderWindow();
            OrderWindow.ShowDialog();
        }

        private void Seat_OnClick(object sender, RoutedEventArgs e)
        {            
            Button seat = (Button)sender;           
            SeatInfoPlace.Navigate(new SeatInfo(seat.Content.ToString()));
            actualSeat = seat.Content.ToString();
        }
        public void RefreshList()
        {
            OrderListGrid.ItemsSource = null;
            OrderListGrid.ItemsSource = OrderList;
        }

        private void DeleteOrder_OnClick(object sender, RoutedEventArgs e)
        {
            try
            {
                OrderList.RemoveAt(SelectedRowIndex);
                RefreshList();
            }
            catch { }
        }

        private void RowChange_OnChange(object sender, SelectionChangedEventArgs e)
        {
            SelectedRowIndex = OrderListGrid.SelectedIndex;
        }

        private void Exit_OnClick(object sender, RoutedEventArgs e)
        {
            System.Windows.Application.Current.Shutdown();
        }

        private void Minimalize_OnClick(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }

        private void Drag_OnMouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
                this.DragMove();
        }

        private void Maximize_OnClick(object sender, RoutedEventArgs e)
        {
            if (WindowState == WindowState.Normal)
                WindowState = WindowState.Maximized;
            else if(WindowState == WindowState.Maximized)
                WindowState = WindowState.Normal;
        }
            // walidacja dodawania zamowien
        private void CreateOrder_OnClick(object sender, RoutedEventArgs e)
        {
            if (OrderList.Count > 0)
            {
                if (checkedOrderType != null)
                {
                    if (checkedOrderType == stolikRB)
                    {
                        if (stolik1RB.IsChecked == true)
                        {
                            checkedTable = stolik1RB;
                            DodajZamowienie();
                        }
                        else if (stolik2RB.IsChecked == true)
                        {
                            checkedTable = stolik2RB;
                            DodajZamowienie();
                        }
                        else if (stolik3RB.IsChecked == true)
                        {
                            checkedTable = stolik3RB;
                            DodajZamowienie();
                        }
                        else if (stolik4RB.IsChecked == true)
                        {
                            checkedTable = stolik4RB;
                            DodajZamowienie();
                        }
                        else if (stolik5RB.IsChecked == true)
                        {
                            checkedTable = stolik5RB;
                            DodajZamowienie();
                        }
                        else if (stolik6RB.IsChecked == true)
                        {
                            checkedTable = stolik6RB;
                            DodajZamowienie();
                        }
                        else if (stolik7RB.IsChecked == true)
                        {
                            checkedTable = stolik7RB;
                            DodajZamowienie();
                        }
                        else if (stolik8RB.IsChecked == true)
                        {
                            checkedTable = stolik8RB;
                            DodajZamowienie();
                        }
                        else if (stolik9RB.IsChecked == true)
                        {
                            checkedTable = stolik9RB;
                            DodajZamowienie();
                        }
                        else
                        {
                            MessageBox.Show("Zaznacz wszystkie pola!");
                            return;
                        }
                    }
                    else if (checkedOrderType == WynosRB)
                    {
                        if (NazwiskoWynos.Text != string.Empty && TelefonWynos.Text != string.Empty)
                        {
                            DodajZamowienie();
                        }
                        else
                        {
                            MessageBox.Show("Podaj wszystkie dane!");
                            return;
                        }
                    }
                    else if (checkedOrderType == DowozRB)
                    {
                        if (NazwiskoDowoz.Text != string.Empty && TelefonDowoz.Text != string.Empty && ImieDowoz.Text != string.Empty && MiejscowoscDowoz.Text != string.Empty && UlicaDowoz.Text != string.Empty && NrDomuDowoz.Text != string.Empty)
                        {
                            DodajZamowienie();
                        }
                        else
                        {
                            MessageBox.Show("Podaj wszystkie dane!");
                            return;
                        }
                    }
                }
                else
                {
                    MessageBox.Show("Zaznacz wszystkie pola!");
                    return;
                }
            }
            else MessageBox.Show("Brak pozycji z menu! Dodaj pozycje za pomocą przycisku Dodaj");
           
        }
            // dodawanie zamowien do bazy danych
        private void DodajZamowienie()
        {            
                
            if (checkedOrderType != null)
            {                
                if (checkedOrderType == stolikRB)
                {                                        
                    Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskieTableAdapters.ZamowieniaRestauracjaTableAdapter stanowiskoKelnerskieRestauracjaAdapter = new Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskieTableAdapters.ZamowieniaRestauracjaTableAdapter();
                    stanowiskoKelnerskieRestauracjaAdapter.Fill(stanowiskoKelnerskie.ZamowieniaRestauracja);
                    stanowiskoKelnerskie.ZamowieniaRestauracja.IdColumn.AutoIncrement = true;
                    stanowiskoKelnerskie.ZamowieniaRestauracja.IdColumn.AutoIncrementStep = 1;                    
                    stanowiskoKelnerskieRestauracjaAdapter.Connection.Open();
                    SqlCommandBuilder cmdbuilder = new SqlCommandBuilder(stanowiskoKelnerskieRestauracjaAdapter.Adapter);
                    stanowiskoKelnerskieRestauracjaAdapter.Adapter.UpdateCommand = cmdbuilder.GetUpdateCommand(true);
                    SqlCommand cmd = stanowiskoKelnerskieRestauracjaAdapter.Connection.CreateCommand();                    
                    cmd.CommandText = "SELECT IsNULL(Max(Id),0) as Id FROM ZamowieniaRestauracja";
                    using (SqlDataReader objReader = cmd.ExecuteReader())
                    {
                        if (objReader.HasRows)
                        {
                            while (objReader.Read())
                            {
                                stanowiskoKelnerskie.ZamowieniaRestauracja.IdColumn.AutoIncrementSeed = (objReader.GetInt32(objReader.GetOrdinal("Id")) + 1);
                            }
                        }
                    }                    
                    foreach (NewOrderClass order in OrderList)
                    {

                        StanowiskoKelnerskie.ZamowieniaRestauracjaRow newRestauracjaOrder = stanowiskoKelnerskie.ZamowieniaRestauracja.NewZamowieniaRestauracjaRow();

                        newRestauracjaOrder.Kategoria = order.kategoria;                        
                        newRestauracjaOrder.Nr = order.nr;
                        newRestauracjaOrder.Nazwa = order.nazwa;
                        newRestauracjaOrder.Rozmiar = order.rozmiar;
                        newRestauracjaOrder.Skladniki = order.skladniki;
                        newRestauracjaOrder.Cena = (decimal)order.cena;
                        newRestauracjaOrder.Ilosc = order.ilosc;
                        newRestauracjaOrder.NrStolika = Convert.ToInt32(checkedTable.Content.ToString());                        
                        stanowiskoKelnerskie.ZamowieniaRestauracja.Rows.Add(newRestauracjaOrder);
                        
                        stanowiskoKelnerskieRestauracjaAdapter.Update(stanowiskoKelnerskie.ZamowieniaRestauracja);                        
                    }
                    cmd.CommandText = "Set IDENTITY_INSERT ZamowieniaRestauracja OFF";
                    cmd.ExecuteNonQuery();
                    stanowiskoKelnerskieRestauracjaAdapter.Connection.Close();
                    Load_Restauracja();
                }
                else if (checkedOrderType == WynosRB)
                {
                    Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskieTableAdapters.ZamowieniaWynosTableAdapter stanowiskoKelnerskieWynosAdapter = new Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskieTableAdapters.ZamowieniaWynosTableAdapter();
                    stanowiskoKelnerskieWynosAdapter.Fill(stanowiskoKelnerskie.ZamowieniaWynos);
                    stanowiskoKelnerskie.ZamowieniaWynos.IdColumn.AutoIncrement = true;
                    stanowiskoKelnerskie.ZamowieniaWynos.IdColumn.AutoIncrementStep = 1;
                    stanowiskoKelnerskieWynosAdapter.Connection.Open();
                    SqlCommandBuilder cmdbuilder = new SqlCommandBuilder(stanowiskoKelnerskieWynosAdapter.Adapter);
                    stanowiskoKelnerskieWynosAdapter.Adapter.UpdateCommand = cmdbuilder.GetUpdateCommand(true);
                    SqlCommand cmd = stanowiskoKelnerskieWynosAdapter.Connection.CreateCommand();
                    int nrZamowienia = 1;
                    cmd.CommandText = "SELECT IsNULL(Max(Id),0) as Id FROM ZamowieniaWynos";
                    using (SqlDataReader objReader = cmd.ExecuteReader())
                    {
                        if (objReader.HasRows)
                        {
                            while (objReader.Read())
                            {
                                stanowiskoKelnerskie.ZamowieniaDowoz.IdColumn.AutoIncrementSeed = (objReader.GetInt32(objReader.GetOrdinal("Id")) + 1);
                            }
                        }
                    }
                    cmd.CommandText = "SELECT IsNULL(Max(NrZamowienia),0) as NrZamowienia FROM ZamowieniaWynos  ";
                    using (SqlDataReader objReader = cmd.ExecuteReader())
                    {
                        if (objReader.HasRows)
                        {
                            while (objReader.Read())
                            {
                                nrZamowienia = (objReader.GetInt32(objReader.GetOrdinal("NrZamowienia")) + 1);
                            }
                        }
                    }
                    foreach (NewOrderClass order in OrderList)
                    {

                        StanowiskoKelnerskie.ZamowieniaWynosRow newRestauracjaOrder = stanowiskoKelnerskie.ZamowieniaWynos.NewZamowieniaWynosRow();
                        
                        newRestauracjaOrder.Kategoria = order.kategoria;
                        newRestauracjaOrder.Nr = order.nr;
                        newRestauracjaOrder.Nazwa = order.nazwa;
                        newRestauracjaOrder.Rozmiar = order.rozmiar;
                        newRestauracjaOrder.Skladniki = order.skladniki;
                        newRestauracjaOrder.Cena = (decimal)order.cena;
                        newRestauracjaOrder.Ilosc = order.ilosc;
                        newRestauracjaOrder.Nazwisko = NazwiskoWynos.Text;
                        newRestauracjaOrder.Telefon = TelefonWynos.Text;
                        newRestauracjaOrder.NrZamowienia = nrZamowienia;
                        stanowiskoKelnerskie.ZamowieniaWynos.Rows.Add(newRestauracjaOrder);                        
                        stanowiskoKelnerskieWynosAdapter.Update(stanowiskoKelnerskie.ZamowieniaWynos);
                    }
                    cmd.CommandText = "Set IDENTITY_INSERT ZamowieniaWynos OFF";
                    cmd.ExecuteNonQuery();
                    stanowiskoKelnerskieWynosAdapter.Connection.Close();
                    Load_OdbiorWlasnyDataGrid();
                }
                else if (checkedOrderType == DowozRB)
                {
                    Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskieTableAdapters.ZamowieniaDowozTableAdapter stanowiskoKelnerskieDowozAdapter = new Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskieTableAdapters.ZamowieniaDowozTableAdapter();
                    stanowiskoKelnerskieDowozAdapter.Fill(stanowiskoKelnerskie.ZamowieniaDowoz);
                    stanowiskoKelnerskie.ZamowieniaDowoz.IdColumn.AutoIncrement = true;
                    stanowiskoKelnerskie.ZamowieniaDowoz.IdColumn.AutoIncrementStep = 1;
                    stanowiskoKelnerskieDowozAdapter.Connection.Open();
                    SqlCommandBuilder cmdbuilder = new SqlCommandBuilder(stanowiskoKelnerskieDowozAdapter.Adapter);
                    stanowiskoKelnerskieDowozAdapter.Adapter.UpdateCommand = cmdbuilder.GetUpdateCommand(true);
                    SqlCommand cmd = stanowiskoKelnerskieDowozAdapter.Connection.CreateCommand();
                    cmd.CommandText = "SELECT IsNULL(Max(Id),0) as Id FROM ZamowieniaDowoz  ";
                    int nrZamowienia = 1;
                    using (SqlDataReader objReader = cmd.ExecuteReader())
                    {
                        if (objReader.HasRows)
                        {
                            while (objReader.Read())
                            {
                                stanowiskoKelnerskie.ZamowieniaDowoz.IdColumn.AutoIncrementSeed = (objReader.GetInt32(objReader.GetOrdinal("Id")) + 1);
                            }
                        }
                    }
                    cmd.CommandText = "SELECT IsNULL(Max(NrZamowienia),0) as NrZamowienia FROM ZamowieniaDowoz  ";
                    using (SqlDataReader objReader = cmd.ExecuteReader())
                    {
                        if (objReader.HasRows)
                        {
                            while (objReader.Read())
                            {
                                nrZamowienia = (objReader.GetInt32(objReader.GetOrdinal("NrZamowienia")) + 1);
                            }
                        }
                    }
                    foreach (NewOrderClass order in OrderList)
                    {

                        StanowiskoKelnerskie.ZamowieniaDowozRow newRestauracjaOrder = stanowiskoKelnerskie.ZamowieniaDowoz.NewZamowieniaDowozRow();

                       
                        newRestauracjaOrder.Kategoria = order.kategoria;
                        newRestauracjaOrder.Nr = order.nr;
                        newRestauracjaOrder.Nazwa = order.nazwa;
                        newRestauracjaOrder.Rozmiar = order.rozmiar;
                        newRestauracjaOrder.Skladniki = order.skladniki;
                        newRestauracjaOrder.Cena = (decimal)order.cena;
                        newRestauracjaOrder.Ilosc = order.ilosc;
                        newRestauracjaOrder.Nazwisko = NazwiskoDowoz.Text;
                        newRestauracjaOrder.Telefon = TelefonDowoz.Text;
                        newRestauracjaOrder.Ulica = UlicaDowoz.Text;
                        newRestauracjaOrder.Miejscowosc = MiejscowoscDowoz.Text;
                        newRestauracjaOrder.Imie = ImieDowoz.Text;
                        newRestauracjaOrder.NrDomu = NrDomuDowoz.Text;
                        newRestauracjaOrder.NrMieszkania = NrMieszkaniaDowoz.Text;
                        newRestauracjaOrder.NrZamowienia = nrZamowienia;
                        stanowiskoKelnerskie.ZamowieniaDowoz.Rows.Add(newRestauracjaOrder);

                        stanowiskoKelnerskieDowozAdapter.Update(stanowiskoKelnerskie.ZamowieniaDowoz);
                    }                    
                    stanowiskoKelnerskieDowozAdapter.Connection.Close();
                    Load_DowozDataGrid();
                }
                else
                {
                    MessageBox.Show("Wystąpił błąd!");
                    return;
                }
                OrderList.Clear();
                RefreshList();
                ResetForm();
                MessageBox.Show("Zamówienie zostało pomyślnie dodane!");
            }
            
            
        }
            // Reset formularza
        private void ResetForm()
        {
            
            lastMenuGrid.Visibility = Visibility.Hidden;
            lastMenuGrid = null;
            checkedOrderType.IsChecked = false;            
            foreach (RadioButton tb in FindVisualChildren<RadioButton>(Stoliki1))
            {
                if (tb.IsChecked == true)
                {
                    tb.IsChecked = false;
                }
            }
            foreach (TextBox tb in FindVisualChildren<TextBox>(DowozDane))
            {
                tb.Text = string.Empty;
            }
            foreach (TextBox tb in FindVisualChildren<TextBox>(DaneKontaktowe))
            {
                tb.Text = string.Empty;
            }
            
        }
        public static IEnumerable<T> FindVisualChildren<T>(DependencyObject depObj) where T : DependencyObject
        {
            if (depObj != null)
            {
                for (int i = 0; i < VisualTreeHelper.GetChildrenCount(depObj); i++)
                {
                    DependencyObject child = VisualTreeHelper.GetChild(depObj, i);
                    if (child != null && child is T)
                    {
                        yield return (T)child;
                    }

                    foreach (T childOfChild in FindVisualChildren<T>(child))
                    {
                        yield return childOfChild;
                    }
                }
            }
        }
       
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            stanowiskoKelnerskie = ((Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskie)(this.FindResource("stanowiskoKelnerskie")));
            Load_OdbiorWlasnyDataGrid();
            Load_DowozDataGrid();
            Load_Restauracja();
        }

        private void RodzajZamowienia_OnChange(object sender, RoutedEventArgs e)
        {
            if (lastMenuGrid != null)
            {
                lastMenuGrid.Visibility = Visibility.Hidden;
            }
            if (stolikRB.IsChecked == true)
            {
                checkedOrderType = stolikRB;
                StolikMenu.Visibility = Visibility.Visible;
                lastMenuGrid = StolikMenu;
            }
            else if (DowozRB.IsChecked == true)
            {
                checkedOrderType = DowozRB;
                DowozMenu.Visibility = Visibility.Visible;
                lastMenuGrid = DowozMenu;
            }
            else if (WynosRB.IsChecked == true)
            {
                checkedOrderType = WynosRB;
                WynosMenu.Visibility = Visibility.Visible;
                lastMenuGrid = WynosMenu;
            }           
            
        }
        private void Refresh_WynosList()
        {
            WynosList.ItemsSource = null;
            WynosList.ItemsSource = OdbiorWlasnyList;
        }
        
            //zaladowanie odbior wlasny grid
        private void Load_OdbiorWlasnyDataGrid()
        {
            OdbiorWlasnyList.Clear();
            Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskieTableAdapters.ZamowieniaWynosTableAdapter stanowiskoKelnerskieWynosAdapter = new Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskieTableAdapters.ZamowieniaWynosTableAdapter();
            stanowiskoKelnerskieWynosAdapter.Fill(stanowiskoKelnerskie.ZamowieniaWynos);
            stanowiskoKelnerskieWynosAdapter.Connection.Open();
                        
            SqlCommand cmd = stanowiskoKelnerskieWynosAdapter.Connection.CreateCommand();
            cmd.CommandText = "SELECT DISTINCT NrZamowienia, Nazwisko, telefon FROM ZamowieniaWynos";
            using (SqlDataReader objReader = cmd.ExecuteReader())
            {
                if (objReader.HasRows)
                {
                    while (objReader.Read())
                    {
                        WynosClass item = new WynosClass();
                        item.NrZamowienia = objReader.GetInt32(objReader.GetOrdinal("NrZamowienia"));
                        item.Nazwisko = objReader.GetString(objReader.GetOrdinal("Nazwisko"));
                        item.Telefon = objReader.GetString(objReader.GetOrdinal("Telefon"));
                        OdbiorWlasnyList.Add(item);
                    }
                }
            }
            foreach(WynosClass obj in OdbiorWlasnyList)
            {
                cmd.CommandText = "SELECT Nr, Kategoria, Nazwa, Rozmiar, Cena, Ilosc FROM ZamowieniaWynos WHERE NrZamowienia = " + obj.NrZamowienia;
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
            stanowiskoKelnerskieWynosAdapter.Connection.Close();
            Refresh_WynosList();
        }
            //zaladowanie dowoz grid
        private void Load_DowozDataGrid()
        {
            DowozListData.Clear();
            Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskieTableAdapters.ZamowieniaDowozTableAdapter stanowiskoKelnerskieDowozAdapter = new Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskieTableAdapters.ZamowieniaDowozTableAdapter();
            stanowiskoKelnerskieDowozAdapter.Fill(stanowiskoKelnerskie.ZamowieniaDowoz);
            stanowiskoKelnerskieDowozAdapter.Connection.Open();

            SqlCommand cmd = stanowiskoKelnerskieDowozAdapter.Connection.CreateCommand();
            cmd.CommandText = "SELECT DISTINCT NrZamowienia, Nazwisko, Imie, telefon, Ulica, Miejscowosc, NrDomu, NrMieszkania FROM ZamowieniaDowoz";
            using (SqlDataReader objReader = cmd.ExecuteReader())
            {
                if (objReader.HasRows)
                {
                    while (objReader.Read())
                    {
                        DowozClass item = new DowozClass();
                        item.NrZamowienia = objReader.GetInt32(objReader.GetOrdinal("NrZamowienia"));
                        item.Imie = objReader.GetString(objReader.GetOrdinal("Imie"));
                        item.Nazwisko = objReader.GetString(objReader.GetOrdinal("Nazwisko"));
                        item.Telefon = objReader.GetString(objReader.GetOrdinal("Telefon"));
                        item.Ulica = objReader.GetString(objReader.GetOrdinal("Ulica"));
                        item.Miejscowosc = objReader.GetString(objReader.GetOrdinal("Miejscowosc"));
                        item.NrDomu = objReader.GetString(objReader.GetOrdinal("NrDomu"));
                        item.NrMieszkania = objReader.GetString(objReader.GetOrdinal("NrMieszkania"));
                        DowozListData.Add(item);
                    }
                }
            }
            foreach (DowozClass obj in DowozListData)
            {
                cmd.CommandText = "SELECT Nr, Kategoria, Nazwa, Rozmiar, Cena, Ilosc FROM ZamowieniaDowoz WHERE NrZamowienia = " + obj.NrZamowienia;
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
            stanowiskoKelnerskieDowozAdapter.Connection.Close();
            Refresh_DowozList();
        }
        private void Refresh_DowozList()
        {
            DowozList.ItemsSource = null;
            DowozList.ItemsSource = DowozListData;
        }
        private void Load_Restauracja()
        {
            Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskieTableAdapters.ZamowieniaRestauracjaTableAdapter stanowiskoKelnerskieRestauracjaAdapter = new Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskieTableAdapters.ZamowieniaRestauracjaTableAdapter();
            stanowiskoKelnerskieRestauracjaAdapter.Fill(stanowiskoKelnerskie.ZamowieniaRestauracja);
            stanowiskoKelnerskieRestauracjaAdapter.Connection.Open();

            SqlCommand cmd = stanowiskoKelnerskieRestauracjaAdapter.Connection.CreateCommand();
            cmd.CommandText = "SELECT DISTINCT NrStolika FROM ZamowieniaRestauracja";
            using (SqlDataReader objReader = cmd.ExecuteReader())
            {
                if (objReader.HasRows)
                {
                    while (objReader.Read())
                    {
                        object obj = Stoliki.FindName("Stolik" + objReader.GetInt32(objReader.GetOrdinal("NrStolika")).ToString());
                        if(obj is Button)
                        {
                            Button Table = obj as Button;
                            Table.Background = new LinearGradientBrush(Colors.Red, Colors.DarkRed, 90);                            
                        }
                        obj = Stoliki.FindName("stolik" + objReader.GetInt32(objReader.GetOrdinal("NrStolika")).ToString() + "RB");                        
                        if (obj is RadioButton)
                        {
                            RadioButton Table = obj as RadioButton;
                            Table.IsEnabled = false;
                        }
                    }
                }
            }
            stanowiskoKelnerskieRestauracjaAdapter.Connection.Close();
        }
        
        private void DeleteWynosOrder(object sender, RoutedEventArgs e)
        {
            if (WynosList.SelectedIndex != -1)
            {
                MessageBoxResult messageBoxResult = System.Windows.MessageBox.Show("Czy na pewno chcesz zakończyć zamówienie?", "", System.Windows.MessageBoxButton.YesNo);
                if (messageBoxResult == MessageBoxResult.Yes)
                {
                    Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskieTableAdapters.ZamowieniaWynosTableAdapter stanowiskoKelnerskieWynosAdapter = new Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskieTableAdapters.ZamowieniaWynosTableAdapter();
                    stanowiskoKelnerskieWynosAdapter.Fill(stanowiskoKelnerskie.ZamowieniaWynos);
                    stanowiskoKelnerskieWynosAdapter.Connection.Open();
                    SqlCommand cmd = stanowiskoKelnerskieWynosAdapter.Connection.CreateCommand();
                    cmd.CommandText = "Delete From ZamowieniaWynos WHERE NrZamowienia =" + OdbiorWlasnyList[WynosList.SelectedIndex].NrZamowienia;
                    cmd.ExecuteNonQuery();
                    Load_OdbiorWlasnyDataGrid();
                    MessageBox.Show("Zamówienie zostało zakończone!");
                    stanowiskoKelnerskieWynosAdapter.Connection.Close();
                }
            }
        }
        private void DeleteDeliveryOrder(object sender, RoutedEventArgs e)
        {
            if (DowozList.SelectedIndex != -1)
            {
                MessageBoxResult messageBoxResult = System.Windows.MessageBox.Show("Czy na pewno chcesz zakończyć zamówienie?", "", System.Windows.MessageBoxButton.YesNo);
                if (messageBoxResult == MessageBoxResult.Yes)
                {
                    Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskieTableAdapters.ZamowieniaDowozTableAdapter stanowiskoKelnerskieDowozAdapter = new Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskieTableAdapters.ZamowieniaDowozTableAdapter();
                    stanowiskoKelnerskieDowozAdapter.Fill(stanowiskoKelnerskie.ZamowieniaDowoz);
                    stanowiskoKelnerskieDowozAdapter.Connection.Open();
                    SqlCommand cmd = stanowiskoKelnerskieDowozAdapter.Connection.CreateCommand();
                    cmd.CommandText = "Delete From ZamowieniaDowoz WHERE NrZamowienia =" + DowozListData[DowozList.SelectedIndex].NrZamowienia;
                    cmd.ExecuteNonQuery();
                    Load_DowozDataGrid();
                    MessageBox.Show("Zamówienie zostało zakończone!");
                    stanowiskoKelnerskieDowozAdapter.Connection.Close();
                }
            }
        }
        public void DeleteRestaurantOrder(string seat)
        {
            object obj = Stoliki.FindName("Stolik" + seat.ToString());
            if (obj is Button)
            {
                Button Table = obj as Button;
                Table.Background = new LinearGradientBrush(Colors.Lime, Colors.Green, 90);
            }
            obj = Stoliki.FindName("stolik" + seat.ToString() + "RB");
            if (obj is RadioButton)
            {
                RadioButton Table = obj as RadioButton;
                Table.IsEnabled = true;
            }
        }
        public void AddOrderToTable(NewOrderClass order)
        {
            Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskieTableAdapters.ZamowieniaRestauracjaTableAdapter stanowiskoKelnerskieRestauracjaAdapter = new Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskieTableAdapters.ZamowieniaRestauracjaTableAdapter();
            stanowiskoKelnerskieRestauracjaAdapter.Fill(stanowiskoKelnerskie.ZamowieniaRestauracja);
            stanowiskoKelnerskie.ZamowieniaRestauracja.IdColumn.AutoIncrement = true;
            stanowiskoKelnerskie.ZamowieniaRestauracja.IdColumn.AutoIncrementStep = 1;
            stanowiskoKelnerskieRestauracjaAdapter.Connection.Open();
            SqlCommandBuilder cmdbuilder = new SqlCommandBuilder(stanowiskoKelnerskieRestauracjaAdapter.Adapter);
            stanowiskoKelnerskieRestauracjaAdapter.Adapter.UpdateCommand = cmdbuilder.GetUpdateCommand(true);
            SqlCommand cmd = stanowiskoKelnerskieRestauracjaAdapter.Connection.CreateCommand();
            cmd.CommandText = "SELECT IsNULL(Max(Id),0) as Id FROM ZamowieniaRestauracja";
            using (SqlDataReader objReader = cmd.ExecuteReader())
            {
                if (objReader.HasRows)
                {
                    while (objReader.Read())
                    {
                        stanowiskoKelnerskie.ZamowieniaRestauracja.IdColumn.AutoIncrementSeed = (objReader.GetInt32(objReader.GetOrdinal("Id")) + 1);
                    }
                }
            }
            StanowiskoKelnerskie.ZamowieniaRestauracjaRow newRestauracjaOrder = stanowiskoKelnerskie.ZamowieniaRestauracja.NewZamowieniaRestauracjaRow();

            newRestauracjaOrder.Kategoria = order.kategoria;
            newRestauracjaOrder.Nr = order.nr;
            newRestauracjaOrder.Nazwa = order.nazwa;
            newRestauracjaOrder.Rozmiar = order.rozmiar;
            newRestauracjaOrder.Skladniki = order.skladniki;
            newRestauracjaOrder.Cena = (decimal)order.cena;
            newRestauracjaOrder.Ilosc = order.ilosc;
            newRestauracjaOrder.NrStolika = Convert.ToInt32(actualSeat);
            stanowiskoKelnerskie.ZamowieniaRestauracja.Rows.Add(newRestauracjaOrder);

            stanowiskoKelnerskieRestauracjaAdapter.Update(stanowiskoKelnerskie.ZamowieniaRestauracja);
            stanowiskoKelnerskieRestauracjaAdapter.Connection.Close();
            SeatInfoPlace.Refresh();
        }    
    }
}

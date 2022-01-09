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
using System.Windows.Shapes;
using System.Data;
using System.ComponentModel;
using Stanowisko_obsługi_kelnerskiej;

namespace Stanowisko_obsługi_kelnerskiej
{
    /// <summary>
    /// Logika interakcji dla klasy NewOrderWindow.xaml
    /// </summary>
    public partial class AddToOrderWindow : Window
    {
        NewOrderClass row = new NewOrderClass();
        List<PhotoClass> photos = new List<PhotoClass>();
        
        public AddToOrderWindow()
        {
            InitializeComponent();
            Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskie stanowiskoKelnerskie = ((Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskie)(this.FindResource("stanowiskoKelnerskie")));
            Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskieTableAdapters.CategoryImagesTableAdapter stanowiskoKelnerskieImagesAdapter = new Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskieTableAdapters.CategoryImagesTableAdapter();
            stanowiskoKelnerskieImagesAdapter.Fill(stanowiskoKelnerskie.CategoryImages);
            DataTable dt = new DataTable("CategoryImages");            
            dt = stanowiskoKelnerskie.Tables[1];
            photos = (from DataRow dr in dt.Rows
                           select new PhotoClass()
                           {
                               Id = Convert.ToInt32(dr["Id"]),
                               Kategoria = dr["Kategoria"].ToString(),
                               Zdjecie = dr["Zdjecie"].ToString()                              
                           }).ToList();
            
        }
        
        private void Cancel_OnClick(object sender, RoutedEventArgs e)
        {
           
            this.Close();
        }

        private void MenuData_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            try
            {
                if (MenuData.SelectedItem != null)
                {                    
                    row.nr = int.Parse(((DataRowView)MenuData.SelectedItem).Row[0].ToString());
                    row.kategoria = ((DataRowView)MenuData.SelectedItem).Row[1].ToString();
                    row.nazwa = ((DataRowView)MenuData.SelectedItem).Row[2].ToString();
                    row.rozmiar = ((DataRowView)MenuData.SelectedItem).Row[3].ToString();
                    row.skladniki = ((DataRowView)MenuData.SelectedItem).Row[4].ToString();
                    row.cena = double.Parse(((DataRowView)MenuData.SelectedItem).Row[5].ToString());
                    row.ilosc = Convert.ToInt32(txtNum.Text);
                    AddBttn.IsEnabled = true;                                                      
                }
                if(row != null)
                {
                    SelectedName.Text = row.nazwa;
                    Price.Text = (row.cena * Convert.ToInt32(txtNum.Text)).ToString("N2");
                }
                if(photos != null)
                {                    
                    foreach (PhotoClass photo in photos)
                    {
                        
                        if (photo.Kategoria == row.kategoria)
                        {                           
                           Photo.Source = new BitmapImage(new Uri(AppDomain.CurrentDomain.BaseDirectory + "Zdjecia/" + photo.Zdjecie, UriKind.Absolute));
                        }
                    }
                }
            }
            catch { }
        }
                
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            
            Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskie stanowiskoKelnerskie = ((Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskie)(this.FindResource("stanowiskoKelnerskie")));
            // Załaduj dane do tabeli Menu. Możesz modyfikować ten kod w razie potrzeby.
            Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskieTableAdapters.MenuTableAdapter stanowiskoKelnerskieMenuTableAdapter = new Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskieTableAdapters.MenuTableAdapter();
            stanowiskoKelnerskieMenuTableAdapter.Fill(stanowiskoKelnerskie.Menu);
            
            System.Windows.Data.CollectionViewSource menuViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("menuViewSource")));
            menuViewSource.View.MoveCurrentToFirst();
            
        }
      
        private void cmdUp_Click(object sender, RoutedEventArgs e)
        {            
            var val = Convert.ToInt32(txtNum.Text);
            var price = Convert.ToDouble(Price.Text) / val;
            if (val < 100)
            {
                txtNum.Text = (++val).ToString();
                Price.Text = (price * val).ToString("N2");
                row.ilosc = val;
            }
        }

        private void cmdDown_Click(object sender, RoutedEventArgs e)
        {
            int val = Convert.ToInt32(txtNum.Text);
            var price = Convert.ToDouble(Price.Text) / val;
            if (val > 1)
            {
                txtNum.Text = (--val).ToString();
                Price.Text = (price * val).ToString("N2");
                row.ilosc = val;
            }
        }

        private void AddBttn_OnClick(object sender, RoutedEventArgs e)
        {
            row.cenaSuma = row.cena * row.ilosc;            
            ((MainWindow)Application.Current.MainWindow).AddOrderToTable(row);
            this.Close();
        }
        private void Drag_OnMouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
                this.DragMove();
        }
    }
}

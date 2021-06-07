using CarsService.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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

namespace CarsService.Dialogs
{
	/// <summary>
	/// Interaction logic for ServiceAdd.xaml
	/// </summary>
	public partial class ServiceAdd : Window
	{
		private Context dbContext;
		private ObservableCollection<ServiceM> tableModel;

		public ServiceAdd()
		{
			InitializeComponent();


		}

		private void Add(object sender, RoutedEventArgs e)
		{

		}
	}
}

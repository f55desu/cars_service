using CarsService.Models;
using System.Collections.ObjectModel;
using System.Data.Entity;
using System.Windows;

namespace CarsService
{
	/// <summary>
	/// Interaction logic for MainWindow.xaml
	/// </summary>
	public partial class MainWindow : Window
	{
		private Context dbContext;
		private ObservableCollection<CarM> tableModel;

		public MainWindow()
		{
			InitializeComponent();
			dbContext = Context.GetInstance();
			dbContext = new Context();

			dbContext.Cars.Load();
			var bindingList = dbContext.Cars.Local.ToBindingList();
			tableModel = new ObservableCollection<CarM>();

			for (var i = 0; i < bindingList.Count; i++)
			{
				CarM carModel = new CarM();

				carModel.Car_Obj = bindingList[i];
				carModel.Row_Number = (i + 1);
				tableModel.Add(carModel);
			}
			CarsTable.ItemsSource = tableModel;
		}

		private void Repair(object sender, RoutedEventArgs e)
		{
			new RepairsTable().Show();
		}

		private void Car_Add(object sender, RoutedEventArgs e)
		{
			
		}

		private void Car_Edit(object sender, RoutedEventArgs e)
		{

		}

		private void Car_Delete(object sender, RoutedEventArgs e)
		{

		}

		private void Service(object sender, RoutedEventArgs e)
		{
			new ServiceTable().Show();
		}
	}
}

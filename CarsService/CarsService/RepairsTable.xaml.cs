using CarsService.Dialogs;
using CarsService.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data.Entity;
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

namespace CarsService
{
	/// <summary>
	/// Interaction logic for RepairsTable.xaml
	/// </summary>
	public partial class RepairsTable : Window
	{
		private Context dbContext;
		private ObservableCollection<RepairM> tableModel;
		public RepairsTable()
		{
			InitializeComponent();
			dbContext = new Context();

			dbContext.Repairs.Load();
			var bindingList = dbContext.Repairs.Local.ToBindingList();
			tableModel = new ObservableCollection<RepairM>();

			for (int i = 0; i < bindingList.Count; i++)
			{
				RepairM repairModel = new RepairM();

				repairModel.Repair_Obj = bindingList[i];
				repairModel.Row_Number = (i + 1);
				tableModel.Add(repairModel);
			}
			RepairGrid.ItemsSource = tableModel;
		}

		private void Add_Click(object sender, RoutedEventArgs e)
		{
			new RepairAdd(tableModel).ShowDialog();
		}

		private void Edit_Click(object sender, RoutedEventArgs e)
		{

		}

		private void Delete_Click(object sender, RoutedEventArgs e)
		{

		}
	}
}

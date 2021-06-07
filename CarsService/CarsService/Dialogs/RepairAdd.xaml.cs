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

namespace CarsService.Dialogs
{
	/// <summary>
	/// Interaction logic for RepairAdd.xaml
	/// </summary>
	public partial class RepairAdd : Window
	{
		private Context dbContext;
		private ObservableCollection<RepairM> tableModel;
		public RepairAdd(ObservableCollection<RepairM> tableModel)
		{
			InitializeComponent();
			this.tableModel = tableModel;

			dbContext = new Context();
			dbContext.Repairs.Load();

			IsDone.Items.Add("Нет");
			IsDone.Items.Add("Да");
		}

		private void Add(object sender, RoutedEventArgs e)
		{
			string dateOfIssue = DateOfIssue.Text;
			string issue = Issue.Text;
			string isDone = IsDone.Text;

			if (dateOfIssue == null || dateOfIssue.Equals(""))
			{
				MessageBox.Show("Укажите фамилию!", "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
				return;
			}
			else if (issue == null || issue.Equals(""))
			{
				MessageBox.Show("Укажите имя!", "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
				return;
			}
			else if (isDone == null || isDone.Equals(""))
			{
				MessageBox.Show("Укажите фамилию!", "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
				return;
			}
			if (Price.Text == null || Price.Text == "")
			{
				MessageBox.Show("Укажите цену на данный рейс!", "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
				return;
			}
			double result;
			if (!double.TryParse(Price.Text, out result))
			{
				MessageBox.Show("Некорректная цена!", "Ошибка!", MessageBoxButton.OK, MessageBoxImage.Error);
				return;
			}

			RepairM repairModel = new RepairM();
			repairModel.Repair_Obj = new Tables.Repairs();

			repairModel.Row_Number = tableModel.Count + 1;
			repairModel.Repair_Obj._date_of_repair = dateOfIssue;
			repairModel.Repair_Obj._issue = issue;
			repairModel.Repair_Obj._repair_done = isDone;
			repairModel.Repair_Obj._cost = float.Parse(Price.Text);

			dbContext.Repairs.Add(repairModel.Repair_Obj);
			dbContext.SaveChanges();

			tableModel.Add(repairModel);

			DateOfIssue.Text = "";
			Issue.Text = "";
			IsDone.SelectedIndex = 0;
			Price.Text = "0.0";
		}
	}
}

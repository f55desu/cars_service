   M S B A M L   `   `   `  ����F  BCarsService, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:CarsServiceCarsService  5   	       CarsService.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:CarsService     5   	     � Title$  Сервис��5   	   $	��768��6   $
��1024��6%    � WindowStartupLocation$ CenterScreen=�62    � 
ResizeMode$ CanMinimize=�6W   .��5	      � .+�5
   
   &   System.Windows.Controls.DataGrid  -   5          Name$ 	CarsTable��5
         AutoGenerateColumns .  $��0,382,-0.4,0.4q�5         Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$	 №��6%      FontSize$ 24Q�5   %      Width5  /System.Windows.Controls.DataGridLengthConverter$ 70 5   %   	   
IsReadOnly	 . 1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 5   %   �� *
Row_Number+5   %     5      $ Гос. номер��6%   $ 24Q�5   %   $	 150 5   %   	 . 
 5   %   �� *Car_Obj._gov_number+5   %     5      $ Год выпуска��6%   $ 24Q�5   %   $	 100 5   %   	 .    CanUserSort . 
 5   %   �� *Car_Obj._year_of_issue+5   %     5      $ 
Марка��6%   $ 24Q�5   %   $	 100 63   	 . 
 5    %   �� *Car_Obj._mark+5!   %     5"      $ Модель��6%   $	 200 5#   %   $ 24Q�5$   %   	 . 
 5%   %   �� *Car_Obj._model+5&   %     5'      $ Цвет��6%   $	 110 5(   %   $ 24Q�5)   %   	 . 
 5*   %   �� *Car_Obj._colour+5+   %     5,      $" Ф.И.О. Владельца��6%   $	 280 5-   %   $ 24Q�5.   %   	 . 
 5/   %   �� *Car_Obj._owner_name+50   %   52      �� 54   
   -   5        $��Ремонт��54      $
��Left=�56   	   $��	10,63,0,0q�57   	   $��25(�58   	   $	��Top=�59   	   $	��252��5:   	   $��53��6   �� 5<   
   $"��Другие таблицы:��6   $
��Left=�5=   	   $��Center=�5>   	   $��	10,10,0,0q�5?   	   $��28(�5A   	   $	��Top=�5B   	   $	��241��5C   	   �� 5D   
   -   5        $'��!Типы обслуживания��5D      $
��Left=�5E      $��
10,155,0,0q�5F      $��25(�5G      $	��Top=�5H      $	��252��5I      $��53��6   6%   �� 5J   
   $,��&Таблица автомобилей:��6   $
��Left=�5K      $��Center=�5L      $��
354,10,0,0q�5M      $��28(�5O      $	��Top=�5P      $	��303��5Q      �� 5R   
   -   5        $��Добавить��5R      $
��Left=�5T      $��
403,64,0,0q�5U      $��25(�5V      $	��Top=�5W      $	��212��5X      $��53��6   �� 5Y   
   -   5        $��Изменить��5Y      $
��Left=�5[      $��403,156,0,0q�5\      $��25(�5]      $	��Top=�5^      $	��212��5_      $��53��6   �� 5`   
   -   5        $��Удалить��5`      $
��Left=�5b      $��403,252,0,0q�5c      $��25(�5d      $	��Top=�5e      $	��212��5f      $��53��6   5g      5h      
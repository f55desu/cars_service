   M S B A M L   `   `   `  ����F  BCarsService, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:CarsServiceCarsService  5   	       CarsService.RepairsTable   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:CarsService     5   	     � Title$  Сервис��5   	   $	��450��6   $��626.176��6%    � WindowStartupLocation$ CenterScreen=�65    � 
ResizeMode$ CanMinimize=�6Z   .��5	      � .+�5
   
   &   System.Windows.Controls.DataGrid  -   5          Name$ 
RepairGrid��5
         AutoGenerateColumns .  $��
0,160,-1,0q�5         Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$	 №��6%      FontSize$ 24Q�5   %      Width5  /System.Windows.Controls.DataGridLengthConverter$ 70 5   %   	   
IsReadOnly	 . 1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 5   %   �� *
Row_Number+5   %     5      $ Дата��6%   $ 24Q�5   %   $	 130 5   %   	 . 
 5   %   �� *Repair_Obj._date_of_repair+5   %     5      $ Проблема��6%   $ 24Q�5   %   $	 250 5   %   	 .    CanUserSort . 
 5   %   �� *Repair_Obj._issue+5   %     5      $ Сделано��6%   $ 24Q�5   %   $ 80 63   	 . 
 5    %   �� *Repair_Obj._repair_done+5!   %     5"      $ Стоимость��6%   $ 90 5#   %   $ 24Q�5$   %   	 . 
 5%   %   �� *Repair_Obj._cost+5&   %   5(      �� 5*   
   -   5        $��Добавить��5*      $
��Left=�5+   	   $��
135,83,0,0q�5,   	   $	��Top=�5-   	   $��97��5.   	   $��30��6   5/   	   �� 50   
   $��Действия:��6   $��21(�6$   $
��Left=�62   $��Center=�6M   $��
250,23,0,0q�6q   $	��Top=�6�   $	��114��6�   �� 51   
   -   5        $��Изменить��51      $
��Left=�52      $��
256,83,0,0q�53      $	��Top=�54      $��97��55      $��30��6   56      �� 57   
   -   5        $��Удалить��57      $
��Left=�58      $��
376,83,0,0q�59      $	��Top=�5:      $��97��5;      $��30��6   5<      5>      5?      
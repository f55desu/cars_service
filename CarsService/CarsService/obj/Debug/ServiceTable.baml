   M S B A M L   `   `   `  ����F  BCarsService, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:CarsServiceCarsService  5   	       CarsService.ServiceTable   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:CarsService     5   	     � Title$  Сервис��5      $	��450��6   $��626.176��6$    � WindowStartupLocation$ CenterScreen=�64    � 
ResizeMode$ CanMinimize=�6Y   .��5	      � .+�5
   
   &   System.Windows.Controls.DataGrid  -   5          Name$ ServiceGrid��5
         AutoGenerateColumns .  $��171,144,177,41q�5         Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$	 №��6%      FontSize$ 24Q�5   %      Width5  /System.Windows.Controls.DataGridLengthConverter$ 70 5   %   	   
IsReadOnly	 . 1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 5   %   �� *
Row_Number+5   %     5      $ Тип услуги��6%   $ 24Q�5   %   $	 200 5   %   	 . 
 5   %   �� *Service_Obj._type_of_service+5   %   5      �� 5   
   -   5        $��Добавить��5      $
��Left=�5   	   $��
135,83,0,0q�5   	   $	��Top=�5   	   $��97��5   	   $��30��6   5    	   �� 5!   
   $��Действия:��6   $��21(�6$   $
��Left=�62   $��Center=�6M   $��
250,23,0,0q�6q   $	��Top=�6�   $	��114��6�   �� 5"   
   -   5        $��Изменить��5"      $
��Left=�5#      $��
256,83,0,0q�5$      $	��Top=�5%      $��97��5&      $��30��6   5'      �� 5(   
   -   5        $��Удалить��5(      $
��Left=�5)      $��
376,83,0,0q�5*      $	��Top=�5+      $��97��5,      $��30��6   5-      5/      50      
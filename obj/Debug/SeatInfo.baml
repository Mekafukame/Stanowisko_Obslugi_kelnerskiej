   M S B A M L   `   `   `  ����Z  VStanowisko obsługi kelnerskiej, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:Stanowisko_obsługi_kelnerskiejStanowisko_obsługi_kelnerskiej  5      .    (Stanowisko_obsługi_kelnerskiej.SeatInfo   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ?local-clr-namespace:Stanowisko_obsługi_kelnerskiej     5      -   5          N� Title$  SeatInfo��5	       � 	Resources 5      :   4Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskie   stanowiskoKelnerskie  ButtonControlTemp �� 
TargetType ��Name �� CornerRadius �� EndPoint � MappingMode �� 
StartPoint � Color	 � Offset
 ��Name �� TextAlignment �� Padding �� Triggers P� Property P� Value �� 
TargetName �� Property �� Value��%  &	        &	        5   
   6%   �� 5   
   " ��64   .R�5      �� $ ButtonBorder��6R   $��1q�6   ���	#FF121212$ 0��6A   ��5      �� 5      $ 0.5,1&�6*   $ RelativeToBoundingBox=�6;   $ 0.5,0&�6_   .��5      � $ 	LightGray��6'   $	 0Q�69   � 5      $
 Gray��6'   $	 1Q�64   5      ._�5      �� $
 txtBlock��6   $ Center=�6.   $��20(�6E   $��
Constantia)�6S   $	 2.5q�6k   
���iii�$��Center=�6�   $
��Bold"�6�   �� 6�   .F�5      �� 5      6+   5       5      P� 5       �@J�IsMouseOver . . �5      �� $ ButtonBorder��6    � �� 5      �� 5      $ 0.5,1&�62   $ RelativeToBoundingBox=�6C   $ 0.5,0&�6g   .��5   "   � $
 Gray��6/   $	 0Q�6<   � 5    "   $ DimGray��6/   $	 1Q�6?   5!      5#      �� 5$      $ txtBlock��6    � ��
 �����6I   5%      P� 5&       � {� .  . �5'      �� $ ButtonBorder��6    � �� 5(      �� 5)      $ 0.5,1&�62   $ RelativeToBoundingBox=�6C   $ 0.5,0&�6g   .��5*   "   � $ 	#FF515151��6/   $	 0Q�6A   � 5+   "   $ 	#FF3C3C3C��6/   $	 1Q�6A   5,      5.      �� 5/      $ txtBlock��6    � ��
 �����6I   50      52      53      .��54      �  � ColumnDefinitions 55   
   �� 56      $��* �6    � RowDefinitions 58   
   �� 5:      $	��10* �6   �� 5;      $��5* �6   �� 5<      $	��70* �6   �� 5=      $��8* �6   �� 5>      $��8* �6   �� 5?      $��8* �6   .+�5A   
   (�  (� Stretch$ Uniform=�6   .��5B      �� -   5         ��Name$ 	SeatLabel��5B      $��Stolik nr $��6'   $��Center=�6=   $��Center=�6Z   $��25(�6u   $��0��6�   $��0��6�   $��
Constantia)�6�   $
��Bold"�6�   
�������6�   5C      (� 5D   
   $ Uniform=�6   $��1��6$   $	��Top=�61   .��5E      �� -   5        $ HeaderNewOrder��5E      $��1��6-   ���	#FF424242$	��Top=�6Q   $��30��6i   $��0,0,2,2q�6u   ���	#FF121212._�5F      � -   5         �Name$ Header��5F      $��Stretch=�6'   $��0,0,0,0q�6F   $��Stretch=�6W    5G      �� 5H      $��* �6+   �� 5I      ��6+   �� *ActualWidth+ �� ElementName$ idColumn���� 5J      ��6+   �� *ActualWidth+$ kategoriaColumn���� 5K      ��6+   �� *ActualWidth+$ nazwaColumn���� 5L      ��6+   �� *ActualWidth+$ rozmiarColumn���� 5M      ��6+   �� *ActualWidth+$ 
cenaColumn���� 5N      ��6+   �� *ActualWidth+$ iloscColumn���� 5P      $��* �6+   .+�5R      �� $��1��6    $��Nr��60   $��Center=�6:   $��Stretch=�6U   $ Center=�6s   $��22(�6�   $��
Constantia)�6�   
�������$
��Bold"�6�   $��Italic$�6�   ��6�   Z� �� 5S      $��2��6    $��	Kategoria��60   $��Center=�6A   $��Stretch=�6\   $ Center=�6z   $��22(�6�   $��
Constantia)�6�   
�������$
��Bold"�6�   $��Italic$�6�   ��6�   Z� �� 5T      $��3��6    $��Nazwa��60   $��Center=�6=   $��Stretch=�6X   $ Center=�6v   $��22(�6�   $��
Constantia)�6�   
�������$
��Bold"�6�   $��Italic$�6�   ��6�   Z� �� 5U      $��4��6    $��Rozmiar��60   $��Center=�6?   $��Stretch=�6Z   $ Center=�6x   $��22(�6�   $��
Constantia)�6�   
�������$
��Bold"�6�   $��Italic$�6�   ��6�   Z� �� 5V      $��5��6    $
��Cena��60   $��Center=�6<   $��Stretch=�6W   $ Center=�6u   $��22(�6�   $��
Constantia)�6�   
�������$
��Bold"�6�   $��Italic$�6�   ��6�   Z� �� 5W      $��6��6    $��Ilość��60   $��Center=�6=   $��Stretch=�6X   $ Center=�6v   $��22(�6�   
�������$��
Constantia)�6�   $
��Bold"�6�   $��Italic$�6�   ��6�   Z� 5X      5Y      5Z      &   System.Windows.Controls.DataGrid  5[   
   -   5          Name$ OrderListGrid��5[      $��0��6+      EnableRowVirtualization .    RowDetailsVisibilityMode$ VisibleWhenSelected=�6Z   $��Stretch=�6�   $��Stretch=�6�   $��Stretch=�6�   $��Center=�6�   ���	#FF252525   	RowHeight$ 25Q�6!     
IsReadOnly . $y�Visible=�6B     GridLinesVisibility$
 None=�6W  $��24(�6r  
���   ����	#FF121212$��0,0,0,0q�6�     SelectionMode$ Single=�6�      CanUserResizeRows  .  !   HeadersVisibility$
! None=�6�  "   CanUserReorderColumns" .  #   AutoGenerateColumns# .  $��2��6I  $   RowStyle$ 5]      �� 5^      % �� 
TargetType)  #System.Windows.Controls.DataGridRow"%  6   .�5_      ��  � ��$ 1,1,1,0q�6/   �� 5`       � ��$ Center=�6C   �� 5a       � ��$ Center=�6A   �� 5c       � �� 5d      �� 5e      "  6.   .R�5g   "   �� $ 	RowBorder��6u   $ 5��6)   $��1q�6:   $
��auto��6N   & �� Padding$	& 5,5q�6\   $��1q�6j   ��5h   &   �� 5i   *   $ 0.5,1&�6>   $ 0.5,0&�6O   .��5j   .   � $ 	#FF5F5F5F��6;   $	 0Q�6M   � 5k   .   $ Black��6;   $	 1Q�6I   5l   +   ��5n   &   �� 5o   *   $ 0.5,1&�6>   $ RelativeToBoundingBox=�6O   $ 0.5,0&�6s   .��5p   .   � $ 	LightGray��6;   $	 0Q�6M   � 5q   .   $
 Gray��6;   $	 1Q�6H   5r   +   ._�5t   &   ?  9System.Windows.Controls.Primitives.SelectiveScrollingGrid  $��Center=�6=   $��Center=�6X    5u   *   �� 5v   .   $
��Auto �6?   �� 5w   .   $��* �6?    5y   *   �� 5z   .   $
��auto �6<   �� 5{   .   $��* �6<   .+�5}   *   ?  9System.Windows.Controls.Primitives.DataGridCellsPresenter  '  Name$' Content��6Q   $��1��6A   (   
ItemsPanel#��z( 5~   -   ) J� SnapsToDevicePixels#) z) 5   -   $��Center=�6i   $��Center=�6�   $��Center=�6�   $��Center=�6�   $��20(�6�   $
��Bold"�6�   
���   �$��30��6  A  ;System.Windows.Controls.Primitives.DataGridDetailsPresenter  5�   *   $��1��6C   $��1��5�   )   *   DetailsVisibility#y�z* 5�   )   $+   SelectiveScrollingOrientation+ 5�   )   �� *AreRowDetailsFrozen+;  5System.Windows.Controls.SelectiveScrollingOrientation,   Vertical- �� ConverterParameter#- Z, #.   RowDetailsScrollingConverter/ �� 	Converter#/ Z. 0 �� RelativeSource0 �� 1 �� AncestorType"1  5�   )   :  4System.Windows.Controls.Primitives.DataGridRowHeader  5�   *   $��2��6<   $+ Vertical=�5�   -   y�5�   -   �� *HeadersVisibility+7	  1System.Windows.Controls.DataGridHeadersVisibility
2 	  Row#- Z2 !3   HeadersVisibilityConverter#/ Z3 0 �� "1  5�   '   5�   #    5�   "   P� 5�   &    �@J�IsMouseOver . . �5�   *   �� $ 	RowBorder��61    � �� �	#FFE0E0E06^   5�   '   P� 5�   &    �@ 
IsSelected . . �5�   *   �� $ 	RowBorder��61    � �� 5�   .   �� 5�   2   $ 0.5,1&�6F   $ RelativeToBoundingBox=�6W   $ 0.5,0&�6{   .��5�   6   � $ DimGray��6C   $	 0Q�6S   � 5�   6   $ 	#FF444444��6C   $	 1Q�6U   5�   3   5�   +   �� 5�   *   $ Content��61    � ��
 �   �6\   5�   '   5�      5�      5�      4   	CellStyle4 5�      �� 5�      *
  $System.Windows.Controls.DataGridCell"% 
 6   .�5�      ��  � �� 5�      �� 5�      " 
 6.   .R�5�   "   �� $ border��6)   $��0q�6:   $��Center=�6N   $��Center=�6j   ._�5�   &   �� $
��auto��67   5�   #   5�      5�      5�      5   Columns5 5�      0  *System.Windows.Controls.DataGridTextColumn  5�      -   5        idColumn��,  &System.Windows.Controls.DataGridColumn6   Header$6 Nr��5�   N   7   Width5  /System.Windows.Controls.DataGridLengthConverter$
7 auto 6Z   8   CanUserResize8 .  9   
Foreground
9 �����1  +System.Windows.Controls.DataGridBoundColumn:   Binding: 67   �� *nr+6}     5�      -   5        kategoriaColumn��$6 	Kategoria��5�   \   $
7 auto 6o   8 .  
9 �����: 6>   �� *	kategoria+6�     5�      -   5        nazwaColumn��$6 Nazwa��5�   T   $
7 auto 6c   8 .  
9 �����: 6:   �� *nazwa+6�     5�      -	   5        rozmiarColumn��$6 Rozmiar��5�   X   $
7 auto 6i   8 .  
9 �����: 6<   �� *	rozmiar+6�     5�      -
   5        
cenaColumn��$
6 Cena��5�   q   $
7 auto 6   8 .  
9 �����: 69   �� *
cenaSuma+; �� StringFormat$; {0:N2} zł.��6�     5�      -   5        iloscColumn��$6 Ilość��5�   m   $
7 auto 6|   8 .  
9 �����: 6:   �� *ilosc+$; {0} szt.��6�   5�      �� 5�   
   -   5        < ��Name$< AddBttn��5�      $��Dodaj do zamówienia��6"   $��Stretch=�6[   $��Stretch=�6y   $��3��6�   $��2��6�   #���  6�   (� 5�   
   $ Uniform=�6   $��4��6$   .��5�      �� -   5        $ 
PriceLabel��5�      $��Do zapłaty: $��6(   $��Center=�6@   $��Center=�6]   $��25(�6x   $��
Constantia)�6�   $
��Bold"�6�   
�������6�   5�      �� 5�   
   -   5        $< EndBttn��5�      $��Zakończ Zamówienie��6"   $��6��6X   $��Stretch=�6e   $��Stretch=�6�   #���  6�   5�      5�      
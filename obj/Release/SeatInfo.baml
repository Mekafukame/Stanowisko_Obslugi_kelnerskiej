   M S B A M L   `   `   `  ���� Z  VStanowisko obsługi kelnerskiej, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:Stanowisko_obsługi_kelnerskiejStanowisko_obsługi_kelnerskiej  .    (Stanowisko_obsługi_kelnerskiej.SeatInfo   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     ?local-clr-namespace:Stanowisko_obsługi_kelnerskiej     -     N� Title$  SeatInfo�� � 	Resources :   4Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskie   stanowiskoKelnerskie  ButtonControlTemp �� 
TargetType ��Name �� CornerRadius �� EndPoint � MappingMode �� 
StartPoint � Color	 � Offset
 ��Name �� TextAlignment �� Padding �� Triggers P� Property P� Value �� 
TargetName �� Property �� Value��%  &	        &	        �� " ��.R��� $ ButtonBorder��$��1q����	#FF121212$ 0������ $ 0.5,1&�$ RelativeToBoundingBox=�$ 0.5,0&�.��� $ 	LightGray��$	 0Q�� $
 Gray��$	 1Q�._��� $
 txtBlock��$ Center=�$��20(�$��
Constantia)�$	 2.5q�
���iii�$��Center=�$
��Bold"��� .F���  P�  �@J�IsMouseOver . . ��� $ ButtonBorder�� � �� �� $ 0.5,1&�$ RelativeToBoundingBox=�$ 0.5,0&�.��� $
 Gray��$	 0Q�� $ DimGray��$	 1Q��� $ txtBlock�� � ��
 �����P�  � {� .  . ��� $ ButtonBorder�� � �� �� $ 0.5,1&�$ RelativeToBoundingBox=�$ 0.5,0&�.��� $ 	#FF515151��$	 0Q�� $ 	#FF3C3C3C��$	 1Q��� $ txtBlock�� � ��
 �����.���  � ColumnDefinitions �� $��* � � RowDefinitions �� $	��10* ��� $��5* ��� $	��70* ��� $��8* ��� $��8* ��� $��8* �.+�(�  (� Stretch$ Uniform=�.���� -    ��Name$ 	SeatLabel��$��Stolik nr $��$��Center=�$��Center=�$��25(�$��0��$��0��$��
Constantia)�$
��Bold"�
�������(� $ Uniform=�$��1��$	��Top=�.���� -   $ HeaderNewOrder��$��1�����	#FF424242$	��Top=�$��30��$��0,0,2,2q����	#FF121212._�� -    �Name$ Header��$��Stretch=�$��0,0,0,0q�$��Stretch=� �� $��* ��� ���� *ActualWidth+ �� ElementName$ idColumn���� ���� *ActualWidth+$ kategoriaColumn���� ���� *ActualWidth+$ nazwaColumn���� ���� *ActualWidth+$ rozmiarColumn���� ���� *ActualWidth+$ 
cenaColumn���� ���� *ActualWidth+$ iloscColumn���� $��* �.+��� $��1��$��Nr��$��Center=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��2��$��	Kategoria��$��Center=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��3��$��Nazwa��$��Center=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��4��$��Rozmiar��$��Center=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��5��$
��Cena��$��Center=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��6��$��Ilość��$��Center=�$��Stretch=�$ Center=�$��22(�
�������$��
Constantia)�$
��Bold"�$��Italic$���Z� &   System.Windows.Controls.DataGrid  -     Name$ OrderListGrid��$��0��   EnableRowVirtualization .    RowDetailsVisibilityMode$ VisibleWhenSelected=�$��Stretch=�$��Stretch=�$��Stretch=�$��Center=����	#FF252525   	RowHeight$ 25Q�   
IsReadOnly . $y�Visible=�   GridLinesVisibility$
 None=�$��24(�
���   ����	#FF121212$��0,0,0,0q�   SelectionMode$ Single=�    CanUserResizeRows  .  !   HeadersVisibility$
! None=�"   CanUserReorderColumns" .  #   AutoGenerateColumns# .  $��2��$   RowStyle$ �� % �� 
TargetType)  #System.Windows.Controls.DataGridRow"%  .���  � ��$ 1,1,1,0q���  � ��$ Center=���  � ��$ Center=���  � �� �� "  .R��� $ 	RowBorder��$ 5��$��1q�$
��auto��& �� Padding$	& 5,5q�$��1q����� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FF5F5F5F��$	 0Q�� $ Black��$	 1Q����� $ 0.5,1&�$ RelativeToBoundingBox=�$ 0.5,0&�.��� $ 	LightGray��$	 0Q�� $
 Gray��$	 1Q�._�?  9System.Windows.Controls.Primitives.SelectiveScrollingGrid  $��Center=�$��Center=� �� $
��Auto ��� $��* � �� $
��auto ��� $��* �.+�?  9System.Windows.Controls.Primitives.DataGridCellsPresenter  '  Name$' Content��$��1��(   
ItemsPanel#��z( ) J� SnapsToDevicePixels#) z) $��Center=�$��Center=�$��Center=�$��Center=�$��20(�$
��Bold"�
���   �$��30��A  ;System.Windows.Controls.Primitives.DataGridDetailsPresenter  $��1��$��1��*   DetailsVisibility#y�z* $+   SelectiveScrollingOrientation+ �� *AreRowDetailsFrozen+;  5System.Windows.Controls.SelectiveScrollingOrientation,   Vertical- �� ConverterParameter#- Z, #.   RowDetailsScrollingConverter/ �� 	Converter#/ Z. 0 �� RelativeSource0 �� 1 �� AncestorType"1  :  4System.Windows.Controls.Primitives.DataGridRowHeader  $��2��$+ Vertical=�y��� *HeadersVisibility+7	  1System.Windows.Controls.DataGridHeadersVisibility
2 	  Row#- Z2 !3   HeadersVisibilityConverter#/ Z3 0 �� "1   P�  �@J�IsMouseOver . . ��� $ 	RowBorder�� � �� �	#FFE0E0E0P�  �@ 
IsSelected . . ��� $ 	RowBorder�� � �� �� $ 0.5,1&�$ RelativeToBoundingBox=�$ 0.5,0&�.��� $ DimGray��$	 0Q�� $ 	#FF444444��$	 1Q��� $ Content�� � ��
 �   �4   	CellStyle4 �� *
  $System.Windows.Controls.DataGridCell"% 
 .���  � �� �� " 
 .R��� $ border��$��0q�$��Center=�$��Center=�._��� $
��auto��5   Columns5 0  *System.Windows.Controls.DataGridTextColumn  -   idColumn��,  &System.Windows.Controls.DataGridColumn6   Header$6 Nr��7   Width5  /System.Windows.Controls.DataGridLengthConverter$
7 auto 8   CanUserResize8 .  9   
Foreground
9 �����1  +System.Windows.Controls.DataGridBoundColumn:   Binding: �� *nr+  -   kategoriaColumn��$6 	Kategoria��$
7 auto 8 .  
9 �����: �� *	kategoria+  -   nazwaColumn��$6 Nazwa��$
7 auto 8 .  
9 �����: �� *nazwa+  -	   rozmiarColumn��$6 Rozmiar��$
7 auto 8 .  
9 �����: �� *	rozmiar+  -
   
cenaColumn��$
6 Cena��$
7 auto 8 .  
9 �����: �� *
cenaSuma+; �� StringFormat$; {0:N2} zł.��  -   iloscColumn��$6 Ilość��$
7 auto 8 .  
9 �����: �� *ilosc+$; {0} szt.���� -   < ��Name$< AddBttn��$��Dodaj do zamówienia��$��Stretch=�$��Stretch=�$��3��$��2��#���  (� $ Uniform=�$��4��.���� -   $ 
PriceLabel��$��Do zapłaty: $��$��Center=�$��Center=�$��25(�$��
Constantia)�$
��Bold"�
��������� -   $< EndBttn��$��Zakończ Zamówienie��$��6��$��Stretch=�$��Stretch=�#���  
   M S B A M L   `   `   `  ����Z  VStanowisko obsługi kelnerskiej, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:Stanowisko_obsługi_kelnerskiejStanowisko_obsługi_kelnerskiej  5   	   6    0Stanowisko_obsługi_kelnerskiej.AddToOrderWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ?local-clr-namespace:Stanowisko_obsługi_kelnerskiej     5   	   -   5          � WindowStyle$
  None=�5   	    � Title$ NewOrderWindow��5	   	   $	��560��6    $
��1000��6-    � 
ResizeMode$ NoResize=�6:    � WindowStartupLocation$ CenterScreen=�6g   ���	#FF121212$��2q�6�    � 	Resources 5
      :   4Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskie   stanowiskoKelnerskie  menuViewSource �� Source �� Source  ButtonUPDown �� 
TargetType ��Name	 �� CornerRadius
 �� EndPoint � MappingMode �� 
StartPoint � Color � Offset ��Name �� TextAlignment �� Triggers P� Property P� Value �� 
TargetName �� Property �� Value  ButtonControlTemp �� Padding  
ButtonExit��%�  &	        &	      7   &	 =     &	 �    &	 �      5   
   6%   �� 5   
    66   �� *Menu+8   �� 5   
   " ��6/   .R�5      �� $ ButtonBorder��6e   $��20��6   $��20��6    $��1q�6,   
���   �$	 5��6T   ��5      �� 5      $
 0.5,1&�6*   $ RelativeToBoundingBox=�6;   $ 0.5,0&�6_   .��5      � $ 	LightGray��6'   � 5      $
 Gray��6'   $ 1Q�64   5      ._�5      �� $ txtBlock��6   $ Center=�6.   
���iii�$
��Bold"�6Z   �� 5      $��Stretch=�6'   $��Stretch=�6C   5      5       5      P� 5       �@J�IsMouseOver . . �5      �� $ ButtonBorder��6    � �� 5      �� 5      $
 0.5,1&�62   $ RelativeToBoundingBox=�6C   $ 0.5,0&�6g   .��5   "   � $
 Gray��6/   $ 0Q�6<   � 5   "   $ DimGray��6/   $ 1Q�6?   5       5"      �� 5#      $ txtBlock��6    � ��
 �����6I   5$      5&      �� 5'   
   " ��64   .R�5(      �� $ ButtonBorder��6N   $��1q�6   
���   �$	 5��6=   ��5)      �� 5*      $
 0.5,1&�6*   $ RelativeToBoundingBox=�6;   $ 0.5,0&�6_   .��5+      � $ 	LightGray��6'   $ 0Q�69   � 5,      $
 Gray��6'   $ 1Q�64   5-      ._�5/      �� $ txtBlock��6   $ Center=�6.   $��20(�6E   $��
Constantia)�6S   $	 2.5q�6k   
���iii�$��Center=�6�   $
��Bold"�6�   �� 50      51      52       53      P� 54       �@J�IsMouseOver . . �55      �� $ ButtonBorder��6    � �� 56      �� 57      $
 0.5,1&�62   $ RelativeToBoundingBox=�6C   $ 0.5,0&�6g   .��58   "   � $
 Gray��6/   $ 0Q�6<   � 59   "   $ DimGray��6/   $ 1Q�6?   5:      5<      �� 5=      $ txtBlock��6    � ��
 �����6I   5>      5@      �� 5A   
   " ��6-   .R�5B      �� $ xBttnTxt��6{   $��X��6   $ Center=�6!   $��Center=�68   $��20(�6S   $��Segoe Script)�6a   
���   �$
��Bold"�6�   ��6�   Z�  5D      P� 5E       �@J�IsMouseOver . . �5F      �� $ xBttnTxt��6    � ��$ 0,1,1,0q�6E   �� 5G      $ xBttnTxt��6    � ��
 �����6I   5H      5J      5K      .��5L      �  � DataContext# [ 6   ���	#FF252525 � ColumnDefinitions 5M   
   �� 5N      $	��70* �6   �� 5O      $	��30* �6    � RowDefinitions 5Q   
   �� 5S      $��25 �6   �� 5T      $	��95* �6   .+�5V   
   � -   5        $��Stretch=�5V      $��0q�6.   $��2��69   $��Stretch=�6M   $��0��6j   ���	#FF171717.+�5W      �� ���	#FF0F0F0F$��0,0,0,2q�6-   ._�5X      � .+�5Y      �� $
��Left=�6    $��10,0.636,0,2.636q�6;   $
��Wrap=�6U   $��AddToOrderWindow��6i   $��Center=�6�   $ Center=�6�   $��16(�6�   $��
Nirmala UI)�6�   
�������$
��Bold"�6�   �� 5Z      -   5        $��Button��5Z      $��Right=�6.   $��2.5,0q�6J   $��Center=�6p   $��20��6�   $��20��6�   #���  6�   5[      5\      5]      �� 5_   
   -   5         ��Name$ AddBttn��5_      $��Dodaj��6"   $��1��62   $
��Left=�6B   $��5,5,5,5q�6]   $��Bottom=�6�   $	��100��6�   {�.   �� 	IsDefault . #���  6�   $��1��6�   �� 5`   
   -   5        $��Anuluj��5`      $��1��6"   $��Right=�62   $��5,5,5,5q�6N   $��Bottom=�6_   $	��100��6z    �� IsCancel . #���  6�   $��1��6�   �� 5a   
   -   5        $ Header1��5a      $��1��6   ���	#FF424242$��0,0,2,2q�6G   ���	#FF121212._�5b      � -   5         �Name$ Header��5b      $��Stretch=�6#   $��30��6A   $��0,0,0,0q�6M   $	��Top=�6^    5c      �� 5d      $��* �6'   �� 5e      ��6'   �� *ActualWidth+ �� ElementName$ idColumn���� 5f      $��10 �6'   �� 5g      ��6'   �� *ActualWidth+$ kategoriaColumn���� 5h      ��6'   �� *ActualWidth+$ nazwaColumn���� 5i      ��6'   �� *ActualWidth+$ rozmiarColumn���� 5j      ��6'   �� *ActualWidth+$ 
cenaColumn���� 5k      $��10 �6'   �� 5l      $��* �6'   .+�5n      �� $��1��6   $��Nr��6-   $��Stretch=�67   $��Stretch=�6S   $ Center=�6q   $��22(�6�   $��
Constantia)�6�   
�������$
��Bold"�6�   $��Italic$�6�   ��6�   Z� �� 5o      $��3��6   $��	Kategoria��6-   $��Stretch=�6>   $��Stretch=�6Z   $ Center=�6x   $��22(�6�   $��
Constantia)�6�   
�������$
��Bold"�6�   $��Italic$�6�   ��6�   Z� �� 5p      $��4��6   $��Nazwa��6-   $��Stretch=�6:   $��Stretch=�6V   $ Center=�6t   $��22(�6�   $��
Constantia)�6�   
�������$
��Bold"�6�   $��Italic$�6�   ��6�   Z� �� 5q      $��5��6   $��Rozmiar��6-   $��Stretch=�6<   $��Stretch=�6X   $ Center=�6v   $��22(�6�   $��
Constantia)�6�   
�������$
��Bold"�6�   $��Italic$�6�   ��6�   Z� �� 5r      $��6��6   $
��Cena��6-   $��Stretch=�69   $��Stretch=�6U   $ Center=�6s   $��22(�6�   $��
Constantia)�6�   
�������$
��Bold"�6�   $��Italic$�6�   ��6�   Z� 5s      5t      &   System.Windows.Controls.DataGrid  5u   
   -   5           Name$  MenuData��5u      !   AutoGenerateColumns! .  "   EnableRowVirtualization" . #   RowDetailsVisibilityMode$# VisibleWhenSelected=�6�   $��Stretch=�6�   $��Center=�6�   $��Stretch=�6  $��Center=�62  $   HeadersVisibility$
$ None=�6T  ���	#FF252525%   	RowHeight$% 25Q�6�  &   
IsReadOnly& . $y�Visible=�6�  '   GridLinesVisibility$
' None=�6�  $��24(�6�  $(   HorizontalScrollBarVisibility$( Disabled=�6�  
���   �$��1��6  ���	#FF121212$��0,2,2,0q�6D  )   SelectionMode$) Single=�6^  *   CanUserResizeRows* .  $��0,30,0,0q�6�  ��6�   �� +   RowStyle+ 5v      �� 5w      , �� 
TargetType)  #System.Windows.Controls.DataGridRow",  6   .�5x      ��  � ��$ 
10,10,10,0q�6/   �� 5y       � ��$ Center=�6C   �� 5z       � ��$ Center=�6A   �� 5|       � �� 5}      �� 5~      "  6.   .R�5   "   �� $ 	RowBorder��6m   $	 10��6)   $��1q�6;   $
��auto��6O   - �� Padding$- 10,10q�6]   ��5�   &   �� 5�   *   $
 0.5,1&�6>   $ 0.5,0&�6O   .��5�   .   � $ 	#FF5F5F5F��6;   $ 0Q�6M   � 5�   .   $ Black��6;   $ 1Q�6I   5�   +   ��5�   &   �� 5�   *   $
 0.5,1&�6>   $ RelativeToBoundingBox=�6O   $ 0.5,0&�6s   .��5�   .   � $ 	LightGray��6;   $ 0Q�6M   � 5�   .   $
 Gray��6;   $ 1Q�6H   5�   +   ._�5�   &   ?  9System.Windows.Controls.Primitives.SelectiveScrollingGrid  $��Center=�6=   $��Center=�6X    5�   *   �� 5�   .   $
��Auto �6?   �� 5�   .   $��* �6?    5�   *   �� 5�   .   $��* �6<   �� 5�   .   $
��auto �6<   .+�5�   *   ?  9System.Windows.Controls.Primitives.DataGridCellsPresenter  .  Name$. Content��6Q   $��1��6A   /   
ItemsPanel#��z/ 5�   1   0 J� SnapsToDevicePixels#0 z0 5�   1   $��Center=�6m   $��Center=�6�   $��Stretch=�6�   $��Stretch=�6�   $��24(�6�   $��32��6�   $��0��6
  $
��Bold"�6  
���   �6)  A  ;System.Windows.Controls.Primitives.DataGridDetailsPresenter  5�   *   $��1��6C   $��1��5�   3   1   DetailsVisibility#y�z1 5�   3   $2   SelectiveScrollingOrientation2 5�   3   �� *AreRowDetailsFrozen+;  5System.Windows.Controls.SelectiveScrollingOrientation3   Vertical4 �� ConverterParameter#4 Z3 #5   RowDetailsScrollingConverter6 �� 	Converter#6 Z5 7 �� RelativeSource7 �� 8 �� AncestorType"8  5�   3   :  4System.Windows.Controls.Primitives.DataGridRowHeader  5�   *   $��2��6<   $2 Vertical=�5�   ,   y�5�   ,   �� *HeadersVisibility+7	  1System.Windows.Controls.DataGridHeadersVisibility
9 	  Row#4 Z9 !:   HeadersVisibilityConverter#6 Z: 7 �� "8  5�   '   5�   #    5�   "   P� 5�   &    �@J�IsMouseOver . . �5�   *   �� $ 	RowBorder��61    � �� �	#FFE0E0E06^   5�   '   P� 5�   &    �@ 
IsSelected . . �5�   *   �� $ 	RowBorder��61    � �� 5�   .   �� 5�   2   $
 0.5,1&�6F   $ RelativeToBoundingBox=�6W   $ 0.5,0&�6{   .��5�   6   � $ DimGray��6C   $ 0Q�6S   � 5�   6   $ 	#FF444444��6C   $ 1Q�6U   5�   3   5�   +   �� 5�   *   $ Content��61    � ��
 �   �6\   5�   '   5�      5�      5�      ;   	CellStyle; 5�      �� 5�      *
  $System.Windows.Controls.DataGridCell", 
 6   .�5�      ��  � �� 5�      �� 5�      " 
 6.   .R�5�   "   �� $ border��6)   $��0q�6:   $��Center=�6N   $��Center=�6j   ._�5�   &   �� $
��auto��67   5�   #   5�      5�      5�      <   RowDetailsTemplate< 5�      �� 5�      .R�5�      �� $��Stretch=�6<   $��Center=�6X   $
��auto��6u   $��16(�6�   $
��Wrap=�6�   
���������6    �� *	Skladniki+��6�   �� *ActualWidth+$ 	RowBorder��6�   5�      =   Columns= 5�      0  *System.Windows.Controls.DataGridTextColumn  5�      -	   5        idColumn��,  &System.Windows.Controls.DataGridColumn>   Header$> Id��5�   N   ?   Width5  /System.Windows.Controls.DataGridLengthConverter$
? auto 6Z   @   CanUserResize@ .  A   
Foreground
A �����1  +System.Windows.Controls.DataGridBoundColumnB   BindingB 67   �� *Id+6}     5�      -
   5        kategoriaColumn��$> 	Kategoria��5�   \   $
? auto 6o   @ .  
A �����B 6>   �� *	Kategoria+6�     5�      -   5        nazwaColumn��$> Nazwa��5�   T   $
? auto 6c   @ .  
A �����B 6:   �� *Nazwa+6�     5�      -   5        rozmiarColumn��$> Rozmiar��5�   X   $
? auto 6i   @ .  
A �����B 6<   �� *	Rozmiar+6�     5�      -   5        
cenaColumn��$
> Cena��5�   m   $
? auto 6{   @ .  
A �����B 69   �� *Cena+C �� StringFormat$C {0:N2} zł.��6�   5�      �� 5�   
   -   5        $ SelectedName��5�      $��1��6*   $��Center=�6:   $��0,10,0,0q�6W   $
��Wrap=�6i   $
��Name��6}   $	��Top=�6�   $��20(�6�   $
��Bold"�6�   $��Rockwell Extra Bold)�6�   $ Center=�6�   
�������$��1��6*  ��6�   Z� 6*  �� 5�   
   -   5        $ Price��5�      $��1��6#   $��Center=�63   $��0,0,0,50q�6P   $
��Wrap=�6b   $��Price��6v   $��Bottom=�6�   $
��Bold"�6�   $��36(�6�   $��Rockwell Extra Bold)�6�   $ Center=�6�   
�������$��1��6'  ��6�   Z� 6'  �� 5�   
   D �� Orientation$D 
Horizontal=�6   $��1��6.   $��Center=�6>   $��Bottom=�6[   $��	0,0,0,100q�6v   $��1��6�   .+�5�      �� -   5        $ Number��5�      $
��10,0q�6(   $
��Left=�66   $
��Wrap=�6Q   $��Ilość��6e   $��Center=�6r   $
��Bold"�6�   $��36(�6�   $ Center=�6�   
�������$��Segoe UI Black)�6�   ��6�   Z� 6�   �� 5�      $	 5��6   
���   �$��1q�6:   ��5�      �� 5�      $
 0.5,1&�6*   $ RelativeToBoundingBox=�6;   $ 0.5,0&�6_   .��5�      � $ DimGray��6'   $ 1Q�67   � 5�      $
 Gray��6'   5�      ._�5�      �� -   5        $ txtNum��5�      $��Center=�6,   $��Center=�6I   $��0q�6d   $��1��6o   $��36(�6y   $��Rockwell Extra Bold)�6�   $ Center=�6�   
�������$
��Bold"�6�   5�      �� 5�      .+�5�      �� -   5        $ cmdUp��5�      $��	5,5,0,2.5q�6)   $��˄��6<   $��20��6H   $��Bottom=�6g   $��Center=�6�   #���  6�   
�������6�   �� 5�      -   5        $ cmdDown��5�      $��5,0,0,5q�6+   $��˅��6=   $��20��6I   $	��Top=�6j   $��Center=�6�   #���  6�   
�������6�   5�      5�      �� 5�   
   -   5        E ��Name$E Photo��5�      $��1��6   $��Stretch=�6/   $��20,50,20,200q�6N   $��Stretch=�6d   $��1��6�   $��	Title.png��6�   5�      5�      
   M S B A M L   `   `   `  ���� Z  VStanowisko obsługi kelnerskiej, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:Stanowisko_obsługi_kelnerskiejStanowisko_obsługi_kelnerskiej  6    0Stanowisko_obsługi_kelnerskiej.AddToOrderWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     ?local-clr-namespace:Stanowisko_obsługi_kelnerskiej     -     � WindowStyle$
  None=� � Title$ NewOrderWindow��$	��560��$
��1000�� � 
ResizeMode$ NoResize=� � WindowStartupLocation$ CenterScreen=����	#FF121212$��2q� � 	Resources :   4Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskie   stanowiskoKelnerskie  menuViewSource �� Source �� Source  ButtonUPDown �� 
TargetType ��Name	 �� CornerRadius
 �� EndPoint � MappingMode �� 
StartPoint � Color � Offset ��Name �� TextAlignment �� Triggers P� Property P� Value �� 
TargetName �� Property �� Value  ButtonControlTemp �� Padding  
ButtonExit��%N  &	        &	      7   &	 !     &	     &	 "      ��  �� *Menu+8   �� " ��.R��� $ ButtonBorder��$��20��$��20��$��1q�
���   �$	 5������ $
 0.5,1&�$ RelativeToBoundingBox=�$ 0.5,0&�.��� $ 	LightGray��� $
 Gray��$ 1Q�._��� $ txtBlock��$ Center=�
���iii�$
��Bold"��� $��Stretch=�$��Stretch=� P�  �@J�IsMouseOver . . ��� $ ButtonBorder�� � �� �� $
 0.5,1&�$ RelativeToBoundingBox=�$ 0.5,0&�.��� $
 Gray��$ 0Q�� $ DimGray��$ 1Q��� $ txtBlock�� � ��
 ������� " ��.R��� $ ButtonBorder��$��1q�
���   �$	 5������ $
 0.5,1&�$ RelativeToBoundingBox=�$ 0.5,0&�.��� $ 	LightGray��$ 0Q�� $
 Gray��$ 1Q�._��� $ txtBlock��$ Center=�$��20(�$��
Constantia)�$	 2.5q�
���iii�$��Center=�$
��Bold"���  P�  �@J�IsMouseOver . . ��� $ ButtonBorder�� � �� �� $
 0.5,1&�$ RelativeToBoundingBox=�$ 0.5,0&�.��� $
 Gray��$ 0Q�� $ DimGray��$ 1Q��� $ txtBlock�� � ��
 ������� " ��.R��� $ xBttnTxt��$��X��$ Center=�$��Center=�$��20(�$��Segoe Script)�
���   �$
��Bold"���Z�  P�  �@J�IsMouseOver . . ��� $ xBttnTxt�� � ��$ 0,1,1,0q��� $ xBttnTxt�� � ��
 �����.���  � DataContext# [ ���	#FF252525 � ColumnDefinitions �� $	��70* ��� $	��30* � � RowDefinitions �� $��25 ��� $	��95* �.+�� -   $��Stretch=�$��0q�$��2��$��Stretch=�$��0�����	#FF171717.+��� ���	#FF0F0F0F$��0,0,0,2q�._�� .+��� $
��Left=�$��10,0.636,0,2.636q�$
��Wrap=�$��AddToOrderWindow��$��Center=�$ Center=�$��16(�$��
Nirmala UI)�
�������$
��Bold"��� -   $��Button��$��Right=�$��2.5,0q�$��Center=�$��20��$��20��#���  �� -    ��Name$ AddBttn��$��Dodaj��$��1��$
��Left=�$��5,5,5,5q�$��Bottom=�$	��100��{�.   �� 	IsDefault . #���  $��1���� -   $��Anuluj��$��1��$��Right=�$��5,5,5,5q�$��Bottom=�$	��100�� �� IsCancel . #���  $��1���� -   $ Header1��$��1�����	#FF424242$��0,0,2,2q����	#FF121212._�� -    �Name$ Header��$��Stretch=�$��30��$��0,0,0,0q�$	��Top=� �� $��* ��� ���� *ActualWidth+ �� ElementName$ idColumn���� $��10 ��� ���� *ActualWidth+$ kategoriaColumn���� ���� *ActualWidth+$ nazwaColumn���� ���� *ActualWidth+$ rozmiarColumn���� ���� *ActualWidth+$ 
cenaColumn���� $��10 ��� $��* �.+��� $��1��$��Nr��$��Stretch=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��3��$��	Kategoria��$��Stretch=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��4��$��Nazwa��$��Stretch=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��5��$��Rozmiar��$��Stretch=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��6��$
��Cena��$��Stretch=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� &   System.Windows.Controls.DataGrid  -      Name$  MenuData��!   AutoGenerateColumns! .  "   EnableRowVirtualization" . #   RowDetailsVisibilityMode$# VisibleWhenSelected=�$��Stretch=�$��Center=�$��Stretch=�$��Center=�$   HeadersVisibility$
$ None=����	#FF252525%   	RowHeight$% 25Q�&   
IsReadOnly& . $y�Visible=�'   GridLinesVisibility$
' None=�$��24(�$(   HorizontalScrollBarVisibility$( Disabled=�
���   �$��1�����	#FF121212$��0,2,2,0q�)   SelectionMode$) Single=�*   CanUserResizeRows* .  $��0,30,0,0q����� +   RowStyle+ �� , �� 
TargetType)  #System.Windows.Controls.DataGridRow",  .���  � ��$ 
10,10,10,0q���  � ��$ Center=���  � ��$ Center=���  � �� �� "  .R��� $ 	RowBorder��$	 10��$��1q�$
��auto��- �� Padding$- 10,10q����� $
 0.5,1&�$ 0.5,0&�.��� $ 	#FF5F5F5F��$ 0Q�� $ Black��$ 1Q����� $
 0.5,1&�$ RelativeToBoundingBox=�$ 0.5,0&�.��� $ 	LightGray��$ 0Q�� $
 Gray��$ 1Q�._�?  9System.Windows.Controls.Primitives.SelectiveScrollingGrid  $��Center=�$��Center=� �� $
��Auto ��� $��* � �� $��* ��� $
��auto �.+�?  9System.Windows.Controls.Primitives.DataGridCellsPresenter  .  Name$. Content��$��1��/   
ItemsPanel#��z/ 0 J� SnapsToDevicePixels#0 z0 $��Center=�$��Center=�$��Stretch=�$��Stretch=�$��24(�$��32��$��0��$
��Bold"�
���   �A  ;System.Windows.Controls.Primitives.DataGridDetailsPresenter  $��1��$��1��1   DetailsVisibility#y�z1 $2   SelectiveScrollingOrientation2 �� *AreRowDetailsFrozen+;  5System.Windows.Controls.SelectiveScrollingOrientation3   Vertical4 �� ConverterParameter#4 Z3 #5   RowDetailsScrollingConverter6 �� 	Converter#6 Z5 7 �� RelativeSource7 �� 8 �� AncestorType"8  :  4System.Windows.Controls.Primitives.DataGridRowHeader  $��2��$2 Vertical=�y��� *HeadersVisibility+7	  1System.Windows.Controls.DataGridHeadersVisibility
9 	  Row#4 Z9 !:   HeadersVisibilityConverter#6 Z: 7 �� "8   P�  �@J�IsMouseOver . . ��� $ 	RowBorder�� � �� �	#FFE0E0E0P�  �@ 
IsSelected . . ��� $ 	RowBorder�� � �� �� $
 0.5,1&�$ RelativeToBoundingBox=�$ 0.5,0&�.��� $ DimGray��$ 0Q�� $ 	#FF444444��$ 1Q��� $ Content�� � ��
 �   �;   	CellStyle; �� *
  $System.Windows.Controls.DataGridCell", 
 .���  � �� �� " 
 .R��� $ border��$��0q�$��Center=�$��Center=�._��� $
��auto��<   RowDetailsTemplate< �� .R��� $��Stretch=�$��Center=�$
��auto��$��16(�$
��Wrap=�
����������� *	Skladniki+���� *ActualWidth+$ 	RowBorder��=   Columns= 0  *System.Windows.Controls.DataGridTextColumn  -	   idColumn��,  &System.Windows.Controls.DataGridColumn>   Header$> Id��?   Width5  /System.Windows.Controls.DataGridLengthConverter$
? auto @   CanUserResize@ .  A   
Foreground
A �����1  +System.Windows.Controls.DataGridBoundColumnB   BindingB �� *Id+  -
   kategoriaColumn��$> 	Kategoria��$
? auto @ .  
A �����B �� *	Kategoria+  -   nazwaColumn��$> Nazwa��$
? auto @ .  
A �����B �� *Nazwa+  -   rozmiarColumn��$> Rozmiar��$
? auto @ .  
A �����B �� *	Rozmiar+  -   
cenaColumn��$
> Cena��$
? auto @ .  
A �����B �� *Cena+C �� StringFormat$C {0:N2} zł.���� -   $ SelectedName��$��1��$��Center=�$��0,10,0,0q�$
��Wrap=�$
��Name��$	��Top=�$��20(�$
��Bold"�$��Rockwell Extra Bold)�$ Center=�
�������$��1����Z� �� -   $ Price��$��1��$��Center=�$��0,0,0,50q�$
��Wrap=�$��Price��$��Bottom=�$
��Bold"�$��36(�$��Rockwell Extra Bold)�$ Center=�
�������$��1����Z� �� D �� Orientation$D 
Horizontal=�$��1��$��Center=�$��Bottom=�$��	0,0,0,100q�$��1��.+��� -   $ Number��$
��10,0q�$
��Left=�$
��Wrap=�$��Ilość��$��Center=�$
��Bold"�$��36(�$ Center=�
�������$��Segoe UI Black)���Z� �� $	 5��
���   �$��1q����� $
 0.5,1&�$ RelativeToBoundingBox=�$ 0.5,0&�.��� $ DimGray��$ 1Q�� $
 Gray��._��� -   $ txtNum��$��Center=�$��Center=�$��0q�$��1��$��36(�$��Rockwell Extra Bold)�$ Center=�
�������$
��Bold"��� .+��� -   $ cmdUp��$��	5,5,0,2.5q�$��˄��$��20��$��Bottom=�$��Center=�#���  
��������� -   $ cmdDown��$��5,0,0,5q�$��˅��$��20��$	��Top=�$��Center=�#���  
��������� -   E ��Name$E Photo��$��1��$��Stretch=�$��20,50,20,200q�$��Stretch=�$��1��$��	Title.png��
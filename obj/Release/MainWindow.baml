   M S B A M L   `   `   `  ���� Z  VStanowisko obsługi kelnerskiej, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:Stanowisko_obsługi_kelnerskiejStanowisko_obsługi_kelnerskiej  0    *Stanowisko_obsługi_kelnerskiej.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    >d2http://schemas.microsoft.com/expression/blend/2008    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     ?local-clr-namespace:Stanowisko_obsługi_kelnerskiej     -     � Title$  Restauracja++��$	��560��$
��1000�� � WindowStyle$
 None=����	#FF252525���	#FF121212$��2q� � 
ResizeMode$ NoResize=� � 	Resources    
ButtonExit �� 
TargetType ��Name �� TextAlignment �� Triggers P� Property	 P� Value
 �� 
TargetName �� Property �� Value  ButtonMinimalize  ButtonMaximalize �� Padding  ButtonControlTemp ��Name �� CornerRadius �� EndPoint � MappingMode �� 
StartPoint � Color � Offset   RadioButtonControlZamowienie �� 
TargetType  RadioButtonFocusVisual �� 
Background �� Bullet ��Name �� RadiusX �� RadiusY'  !System.Windows.VisualStateManager   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard �� 
TargetName �� TargetProperty  �� KeyTime! �� Value" R� KeyTime  System.Windows.Visibility#   Visible$ R� Value ' #RadioButtonControlZamowienieStoliki  TextBoxStyle  ButtonDisabled% �� Triggers 	 BttnTxtDisabled 
 
StolikBttn:   4Stanowisko_obsługi_kelnerskiej.StanowiskoKelnerskie  stanowiskoKelnerskie��%�  &	        &	 �     &	 �    &	 �    &	 �    &	 _
    &	     &	     &		 �    &	
 �    &	 [    �� " ��.R��� $ xBttnTxt��$��X��$ Center=�$��Center=�$��20(�$��Segoe Script)�
���   �$
��Bold"���Z�  P�  �@J�IsMouseOver	 . . ��� $
 xBttnTxt�� � ��$ 0,1,1,0q��� $
 xBttnTxt�� � ��
 ������� " ��.R��� $ xBttnTxt��$��-��$ Center=�$��Center=�$��40(�$��Segoe Script)�
���   �$
��Bold"���Z�  P�  �@J�IsMouseOver	 . . ��� $
 xBttnTxt�� � ��$ 0,1,1,0q��� $
 xBttnTxt�� � ��
 ������� " ��.R��� $ xBttnTxt��$	��□��$ Center=�$��Center=�$��30(�$��Segoe Script)�
���   �$��Normal"�$ 0,0,0,3q���Z�  P�  �@J�IsMouseOver	 . . ��� $
 xBttnTxt�� � ��$ 0,1,1,0q��� $
 xBttnTxt�� � ��
 ������� " ��.R��� $ ButtonBorder��$��1q����	#FF121212$ 0������ $ 0.5,1&�$ RelativeToBoundingBox=�$ 0.5,0&�.��� $ 	LightGray��$ 0Q�� $
 Gray��$ 1Q�._��� $ txtBlock��$ Center=�$��20(�$��
Constantia)�$	 2.5q�
���iii�$��Center=�$
��Bold"��� .F���  P�  �@J�IsMouseOver	 . . ��� $
 ButtonBorder�� � �� �� $ 0.5,1&�$ RelativeToBoundingBox=�$ 0.5,0&�.��� $
 Gray��$ 0Q�� $ DimGray��$ 1Q��� $
 txtBlock�� � ��
 �����P�  � {�	 .  . ��� $
 ButtonBorder�� � �� �� $ 0.5,1&�$ RelativeToBoundingBox=�$ 0.5,0&�.��� $ 	#FF515151��$ 0Q�� $ 	#FF3C3C3C��$ 1Q��� $
 txtBlock�� � ��
 ������� " 	�.���  �@J�SnapsToDevicePixels . ��  �@�OverridesDefaultStyle . ��  �@�FocusVisualStyle# �  ��  � ��$ 
Constantia)���  � ��$ 25(���  � ��
 �������  � ��$ Center=���  � �� �	#FF2C2C2C��  � ��$
 Bold"���  � ��$
 20,5q���  � ��$ 10q���  � �� �� " 	�.R��� 
 ����  � $��25��$��25��.+��� $ Border��$ 5��$ 5������ $ 0.5,1&�$ 0.5,0&�.��� $ 	LightGray��$ 0Q�� $
 Gray��$ 1Q��� $ centerRectangle��$ 5��$ 5��
���iii�$y�Visible=�$��3q��� $ 	CheckMark��$��X��
�������$y�	Collapsed=�$��5q�$��Segoe Print)�$
��Bold"�$��14(�$��Stretch=�$��Center=�$ Center=�   CommonStates��.   
Normal��  	MouseOver��  Pressed��  Disabled��. �� .���� $ centerRectangle��$ 
Fill.Color�.g�p� $  0��$	! Red��  CheckStates��.   Checked��. �� .��T� $ 	CheckMark��$ (UIElement.Visibility)�..�i� $" 0��#$ Z#   	Unchecked��  Indeterminate��._��� $��4,0,0,0q�$��Center=�$
��Left=���. �� " 	�.���  �@J�SnapsToDevicePixels . ��  �@�OverridesDefaultStyle . ��  �@�FocusVisualStyle# �  ��  � ��$ Arial Rounded MT Bold)���  � ��$ 25(���  � ��
 �������  � ��$ Center=���  � ��$ Stretch=���  � ��$ Stretch=���  � �� �	#FF2C2C2C��  � ��$
 Bold"���  � ��$
 20,5q���  � ��$ 10q���  � �� �� " 	�.R��� 
 ����  � $��25��$��25��.+��� $ Border��$ 5��$ 5������ $ 0.5,1&�$ 0.5,0&�.��� $ 	LightGray��$ 0Q�� $
 Gray��$ 1Q��� $ centerRectangle��$ 5��$ 5��
���iii�$y�Visible=�$��3q��� $ 	CheckMark��$��X��
�������$y�	Collapsed=�$��5q�$��Segoe Print)�$
��Bold"�$��14(�$��Stretch=�$��Center=�$ Center=�   CommonStates��.   
Normal��  	MouseOver��  Pressed��  Disabled��. �� .���� $ centerRectangle��$ 
Fill.Color�.g�p� $  0��$	! Red��  CheckStates��.   Checked��. �� .��T� $ 	CheckMark��$ (UIElement.Visibility)�..�i� $" 0��#$ Z#   	Unchecked��  Indeterminate��._��� $��4,0,0,0q�$��Center=�$
��Left=���. �� " ��.���  � ��$ 3q���  � �� �	#FF171717��  � ��
 �������  � ��$ 16(���  � ��$ 
Constantia)���  � �� �� $ 0.5,1&�$ 0.5,0&�.��� $
 Gray��$ 0Q�� $ DimGray��$ 1Q��� " ��% P�  � {�	 .  . ���  � �� �� $ 0.5,1&�$ RelativeToBoundingBox=�$ 0.5,0&�.��� $
 Gray��$ 0Q�� $ DimGray��$ 1Q��� " ��% P�  � {�	 .  . ���  � ��
 ������� " ��.���  � �� �� $ 0.5,1&�$ RelativeToBoundingBox=�$ 0.5,0&�.��� $ 	#FFC97751��$ 0Q�� $ SaddleBrown��$ 1Q���  � ��$ Arial Rounded MT Bold)���  � �� �	#FF555555��  � ��$ 40(���  � �� �� $ 0.5,1&�$ 0.5,0&�.��� $
 Lime��$ 0Q�� $ Green��$ 1Q���  � ��$ 5q�  .��� & � ColumnDefinitions& �� $
��100* �' � RowDefinitions' �� $��25 ��� $	��10* ��� $	��90* �.+�� -   $��Stretch=�$��Stretch=�$��0�����	#FF171717.+��� ���	#FF0F0F0F$��0,0,0,2q�._�� .+��� $
��Left=�$��10,0.636,0,2.636q�$
��Wrap=�$��Restauracja++��$��Center=�$ Center=�$��16(�$��
Nirmala UI)�
�������$
��Bold"��� -   $��Button��$��Right=�$��2.5,0q�$��Center=�$��20��$��20��#���   �� -   $��Button��$��Right=�$��32.5,0q�$��Center=�$��20��$��20��#���  �� -   $��Button��$��Right=�$��62.5,0q�$��Center=�$��20��$��20��#���  �� $��1��$��0,0,0,2q����	#FF0F0F0F._�� $��2��$��Stretch=�$��Stretch=�& �� $	��25* ��� $	��25* ��� $	��25* ��� $	��25* �.+��� -   ( ��Name$( NewOrderMenuBttn��$��0��$��Nowe zamówienie��$��Stretch=�4  .System.Windows.Automation.AutomationProperties)   Name$) NewOrderBttn��#���  �� -   $( RestaurantMenuBttn��$��1��$��Restauracja��$��Stretch=�$) RestaurantBttn��#���  �� -   $( ColectMenuBttn��$��2��$��Odbiór własny��$��Stretch=�$) 
ColectBttn��#���  �� -	   $( DeliveryMenuBttn��$��3��$��Dostawa��$��Stretch=�$) DeliveryBttn��#���  � -
   * �Name$* HomePage��$��2��$��Stretch=�$��Stretch=�$��2��.+��� $��Stretch=�$��Stretch=�$��	Title.png��� -   $* NoweZamowienie��$��2��$��Stretch=�$��Stretch=�$��2��& �� $	��60* ��� $	��40* �.+��� -   $ HeaderNewOrder�����	#FF424242$	��Top=�$��30��$��0,0,2,2q����	#FF121212._�� -   $* Header��$��Stretch=�$��0,0,0,0q�$��Stretch=�& �� $��* ��� ���� *ActualWidth++ �� ElementName$+ idColumn���� ���� *ActualWidth+$+ kategoriaColumn���� ���� *ActualWidth+$+ nazwaColumn���� ���� *ActualWidth+$+ rozmiarColumn���� ���� *ActualWidth+$+ 
cenaColumn���� ���� *ActualWidth+$+ iloscColumn���� $��* �.+��� $��1��$��Nr��$��Center=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��2��$��	Kategoria��$��Center=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��3��$��Nazwa��$��Center=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��4��$��Rozmiar��$��Center=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��5��$
��Cena��$��Center=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��6��$��Ilość��$��Center=�$��Stretch=�$ Center=�$��22(�
�������$��
Constantia)�$
��Bold"�$��Italic$���Z� &   System.Windows.Controls.DataGrid  -   ,  Name$, OrderListGrid��$��0��-   EnableRowVirtualization- . .   RowDetailsVisibilityMode$. VisibleWhenSelected=�$��Stretch=�$��Stretch=�$��Stretch=�$��Center=����	#FF252525/   	RowHeight$/ 25Q�0   
IsReadOnly0 . $y�Visible=�1   GridLinesVisibility$
1 None=�$��24(�
���   ����	#FF121212$��0,0,2,0q�2   SelectionMode$2 Single=�3   CanUserResizeRows3 .  $��1��$��	0,30,0,30q�4   HeadersVisibility$
4 None=�5   CanUserReorderColumns5 .  6   AutoGenerateColumns6 .  7   RowStyle7 �� )  #System.Windows.Controls.DataGridRow"  .���  � ��$ 1,1,1,0q���  � ��$ Center=���  � ��$ Center=���  � �� �� "  .R��� $ 	RowBorder��$ 5��$��1q�$
��auto��8 �� Padding$	8 5,5q�$��1q����� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FF5F5F5F��$ 0Q�� $ Black��$ 1Q����� $ 0.5,1&�$ RelativeToBoundingBox=�$ 0.5,0&�.��� $ 	LightGray��$ 0Q�� $
 Gray��$ 1Q�._�?	  9System.Windows.Controls.Primitives.SelectiveScrollingGrid	  $��Center=�$��Center=�& �� $
��Auto ��� $��* �' �� $
��auto ��� $��* �.+�?
  9System.Windows.Controls.Primitives.DataGridCellsPresenter
  9 
 Name$9 Content��$��1��:   
ItemsPanel#��z: ; J� SnapsToDevicePixels#; z; $��Center=�$��Center=�$��Center=�$��Center=�$��20(�$
��Bold"�
���   �$��30��A  ;System.Windows.Controls.Primitives.DataGridDetailsPresenter  $��1��$��1��<   DetailsVisibility#y�z< $= 	  SelectiveScrollingOrientation= �� *AreRowDetailsFrozen+;  5System.Windows.Controls.SelectiveScrollingOrientation>   Vertical? �� ConverterParameter#? Z> #@   RowDetailsScrollingConverterA �� 	Converter#A Z@ B �� RelativeSourceB �� C �� AncestorType"C  :  4System.Windows.Controls.Primitives.DataGridRowHeader  $��2��$= Vertical=�y��� *HeadersVisibility+7  1System.Windows.Controls.DataGridHeadersVisibility
D   Row#? ZD !E   HeadersVisibilityConverter#A ZE B �� "C   P�  �@J�IsMouseOver	 . . ��� $
 	RowBorder�� � �� �	#FFE0E0E0P�  �@ 
IsSelected	 . . ��� $
 	RowBorder�� � �� �� $ 0.5,1&�$ RelativeToBoundingBox=�$ 0.5,0&�.��� $ DimGray��$ 0Q�� $ 	#FF444444��$ 1Q��� $
 Content�� � ��
 �   �F   	CellStyleF �� *  $System.Windows.Controls.DataGridCell"  .���  � �� �� "  .R��� $ border��$��0q�$��Center=�$��Center=�._��� $
��auto��G   ColumnsG 0  *System.Windows.Controls.DataGridTextColumn  -   idColumn��,  &System.Windows.Controls.DataGridColumnH   Header$H Nr��I   Width5  /System.Windows.Controls.DataGridLengthConverter$
I auto J   CanUserResizeJ .  K   
Foreground
K �����1  +System.Windows.Controls.DataGridBoundColumnL   BindingL �� *nr+  -   kategoriaColumn��$H 	Kategoria��$
I auto J .  
K �����L �� *	kategoria+  -   nazwaColumn��$H Nazwa��$
I auto J .  
K �����L �� *nazwa+  -   rozmiarColumn��$H Rozmiar��$
I auto J .  
K �����L �� *	rozmiar+  -   
cenaColumn��$
H Cena��$
I auto J .  
K �����L �� *
cenaSuma+M �� StringFormat$M {0:N2} zł.��  -   iloscColumn��$H Ilość��$
I auto J .  
K �����L �� *ilosc+$M {0} szt.��� & �� $	��50* ��� $	��50* �.+��� -   #���  $��0��$��Dodaj��$��Stretch=�$��Bottom=�$��30���� -   #���  $��1��$��Usuń��$��Stretch=�$��Bottom=�$��30���� $��1��N �� Orientation$N Vertical=�$	��Top=�$��Stretch=�$��0,0,0,0q�.+��� $��Rodzaj zamówienia��$��40(�$
��auto��$	��Top=�$��Stretch=�$ Center=�
�������$
��Bold"�$��
Constantia)�	� -   O 	�Name$O stolikRB��$��Stolik��P 	� 	GroupName$P 
zamowienie��$
��auto��$
��auto��$��Center=�#���  	� -   $O WynosRB��$��Odbiór własny��$P 
zamowienie��$
��auto��$
��auto��$��Center=�#���  	� -   $O DowozRB��$��Dowóz��$P 
zamowienie��$
��auto��$
��auto��$��Center=�#���  � -   $* 
StolikMenu��$��1��$��Stretch=�$��Stretch=�$��
0,184,0,50q�$y�Hidden=�.+��� $��Wybierz Stolik��$��40(�$
��auto��$	��Top=�$��Stretch=�$ Center=�
�������$
��Bold"�$��
Constantia)�� -   $* Stoliki1��$��Stretch=�$��Stretch=�$��0,50,0,0q�& �� $��* ��� $��* ��� $��* ��� $��* ��� $��* ��� $��* ��� $��* ��� $��* �' �� $��* ��� $��* ��� $��* �.+�(� Q (� Stretch$Q Uniform=�$��0��$��0��$��2��.��	� -   $O 	stolik1RB��$��1��$P stolikiZamowienie��#���  (� $Q Uniform=�$��0��$��2��$��2��.��	� -   $O 	stolik2RB��$��2��$P stolikiZamowienie��#���  (� $Q Uniform=�$��0��$��4��$��2��.��	� -   $O 	stolik3RB��$��3��$P stolikiZamowienie��#���  (� $Q Uniform=�$��0��$��6��$��2��.��	� -   $O 	stolik4RB��$��4��$P stolikiZamowienie��#���  (� $Q Uniform=�$��1��$��0��$��2��.��	� -    $O 	stolik5RB��$��5��$P stolikiZamowienie��#���  (� $Q Uniform=�$��2��$��0��$��2��.��	� -!   $O 	stolik6RB��$��6��$P stolikiZamowienie��#���  (� $Q Uniform=�$��1��$��3��$��2��.��	� -"   $O 	stolik7RB��$��7��$P stolikiZamowienie��#���  (� $Q Uniform=�$��2��$��3��$��2��.��	� -#   $O 	stolik8RB��$��8��$P stolikiZamowienie��#���  (� $Q Uniform=�$��1��$��6��$��2��$��2��.��	� -$   $O 	stolik9RB��$��9��$P stolikiZamowienie��#���  � -%   $* 	WynosMenu��$��1��$��Stretch=�$��Stretch=�$��
0,184,0,50q�$y�Hidden=�.+��� $��
Podaj Dane��$��40(�$
��auto��$	��Top=�$��Stretch=�$ Center=�
�������$
��Bold"�$��
Constantia)�� -&   $* DaneKontaktowe��$��Stretch=�$��Stretch=�$��0,50,0,0q�& �� $��* ��� $��* ��� $��* �' �� $��* ��� $��* ��� $��* �.+��� $��0��$��0��$��Nazwisko��$��20(�$
��auto��$��Center=�$��Stretch=�$ Center=�
�������$
��Bold"�$��
Constantia)��� -'   R ��Name$R NazwiskoWynos��$��0��$��1��$��2��$��Center=�$��Stretch=�$��Center=�$
��20,0q�#���  �� $��0��$��1��$��Telefon��$��20(�$
��auto��$��Center=�$��Stretch=�$ Center=�
�������$
��Bold"�$��
Constantia)��� -(   $R TelefonWynos��$��1��$��1��$��2��$��Center=�$��Stretch=�$��Center=�$
��20,0q�#���  � -)   $* 	DowozMenu��$��1��$��Stretch=�$��Stretch=�$��
0,184,0,50q�$y�Hidden=�.+��� $��
Podaj Dane��$��40(�$
��auto��$	��Top=�$��Stretch=�$ Center=�
�������$
��Bold"�$��
Constantia)�� -*   $* 	DowozDane��$��Stretch=�$��Stretch=�$��0,50,0,0q�& �� $��* ��� $��* ��� $��* ��� $��* ��� $��* �' �� $��* ��� $��* ��� $��* ��� $��* ��� $��* ��� $��* �.+��� $��0��$��0��$��2��$��Nazwisko��$��20(�$
��auto��$��Center=�$��Stretch=�$ Center=�
�������$
��Bold"�$��
Constantia)��� -+   $R NazwiskoDowoz��$��0��$��2��$��3��$��Center=�$��Stretch=�$��Center=�$
��20,0q�#���  �� $��0��$��1��$��2��$��Imię��$��20(�$
��auto��$��Center=�$��Stretch=�$ Center=�
�������$
��Bold"�$��
Constantia)��� -,   $R 	ImieDowoz��$��1��$��2��$��3��$��Center=�$��Stretch=�$��Center=�$
��20,0q�#���  �� $��0��$��2��$��2��$��Miejscowość��$��20(�$
��auto��$��Center=�$��Stretch=�$ Center=�
�������$
��Bold"�$��
Constantia)��� --   $R MiejscowoscDowoz��$��2��$��2��$��3��$��Center=�$��Stretch=�$��Center=�$
��20,0q�#���  �� $��0��$��3��$��2��$��Ulica��$��20(�$
��auto��$��Center=�$��Stretch=�$ Center=�
�������$
��Bold"�$��
Constantia)��� -.   $R 
UlicaDowoz��$��3��$��2��$��3��$��Center=�$��Stretch=�$��Center=�$
��20,0q�#���  �� $��0��$��4��$��2��$��0,0,50,0q�$��Nr Domu��$��20(�$
��auto��$��Center=�$��Stretch=�$ Center=�
�������$
��Bold"�$��
Constantia)��� -/   $R NrDomuDowoz��$��4��$��1��$��1��$��Center=�$��Stretch=�$��Center=�$��30,0,0,0q�#���  �� $��2��$��4��$��2��$��0,0,0,0q�$��Nr Mieszkania��$��20(�$
��auto��$��Center=�$��Stretch=�$ Center=�
�������$
��Bold"�$��
Constantia)��� -0   $R NrMieszkaniaDowoz��$��4��$��4��$��1��$��Center=�$��Stretch=�$��Center=�$��	10,0,20,0q�#���  �� $��0��$��5��$��2��$��Telefon��$��20(�$
��auto��$��Center=�$��Stretch=�$ Center=�
�������$
��Bold"�$��
Constantia)��� -1   $R TelefonDowoz��$��5��$��2��$��3��$��Center=�$��Stretch=�$��Center=�$
��20,0q�#���  �� -2   $��1��#���  $��Dodaj Zamówienie��$��Stretch=�$��Bottom=�$��30��� -3   $* Restauracja��$��2��$��Stretch=�$��Stretch=�$��2��.+�� $��Stretch=�$��Stretch=�& �� $��* ��� $	��65* ��� $	��35* �.+��� 
���   �$��5q�$��Stretch=�$��
2,10,10,10q�$��Stretch=�$��1�����	#FF555555._�� -4   $* Stoliki��& �� $��* ��� $��* ��� $��* ��� $��* �' �� $��* ��� $��* ��� $��* �.+��� -5   $( Stolik1��$��1��$��0��$��0��#��� 
 $��Stretch=�$��Stretch=�$��25q��� -6   $( Stolik2��$��2��$��1��$��0��#��� 
 $��Stretch=�$��Stretch=�$��25q��� -7   $( Stolik3��$��3��$��2��$��0��#��� 
 $��Stretch=�$��Stretch=�$��25q��� -8   $( Stolik4��$��4��$��3��$��0��#��� 
 $��Stretch=�$��Stretch=�$��25q��� -9   $( Stolik5��$��5��$��0��$��1��#��� 
 $��Stretch=�$��Stretch=�$��25q��� -:   $( Stolik6��$��6��$��0��$��2��#��� 
 $��Stretch=�$��Stretch=�$��25q��� -;   $( Stolik7��$��7��$��1��$��1��#��� 
 $��2��$��Stretch=�$��Stretch=�$��25q��� -<   $( Stolik8��$��8��$��1��$��2��#��� 
 $��2��$��Stretch=�$��Stretch=�$��25q��� -=   $( Stolik9��$��9��$��3��$��1��#��� 
 $��2��$��Stretch=�$��Stretch=�$��25q��� 
���   �$��2q�$��2��$��Stretch=�$��
0,10,10,10q�$��Stretch=�._� � ->   S  �Name$S SeatInfoPlace��$�� ��T  � NavigationUIVisibility$T Hidden=�� -?   $* OdbiorWlasny��$��2��$��Stretch=�$��Stretch=�$��2��.+��� -@   $ HeaderWynos��$	��Top=����	#FF424242$��Stretch=�$��0,0,2,2q�$��30�����	#FF121212$��0,0,0,0q�._�� -A   $* Header2��$��Stretch=�$��0,0,0,0q�$��Stretch=�& �� �� ���� *ActualWidth+$+ NrZamowienia1���� ���� *ActualWidth+$+ 	Nazwisko1���� ���� *ActualWidth+$+ Telefon1���� ���� *ActualWidth+$+ 	CenaSuma1���� .+��� $��1��$��Nr��$��Center=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��2��$��Nazwisko��$��Center=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��3��$��Telefon��$��Center=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��4��$
��Cena��$��Center=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z�   -B   $, 	WynosList��$��0��- . $. VisibleWhenSelected=�$��Stretch=�$��Stretch=�$��Stretch=�$��Center=����	#FF252525$/ 25Q�0 . $y�Visible=�$
1 None=�$��24(�
���   ����	#FF121212$��0,0,0,0q�$2 Single=�3 .  $��1��$��	0,30,0,30q�$
4 None=�5 .  6 .  7 �� "  .���  � ��$ 1,1,1,0q���  � ��$ Center=���  � ��$ Center=���  � �� �� "  .R��� $ 	RowBorder��$ 5��$��1q�$
��auto��$	8 5,5q�$��1q����� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FF5F5F5F��$ 0Q�� $ Black��$ 1Q����� $ 0.5,1&�$ RelativeToBoundingBox=�$ 0.5,0&�.��� $ 	LightGray��$ 0Q�� $
 Gray��$ 1Q�._�	  $��Center=�$��Center=�& �� $
��Auto ��� $��* �' �� $
��auto ��� $��* �.+�
  $9 Content��$��1��#��z: #; z; $��Center=�$��Center=�$��Center=�$��Center=�$��20(�$
��Bold"�
���   �$��30��  $��1��$��1��$��Stretch=�#y�z< = �� *AreRowDetailsFrozen+#? Z> #A Z@ B �� "C    $��2��$= Vertical=�y��� *HeadersVisibility+#? ZD #A ZE B �� "C   P�  �@J�IsMouseOver	 . . ��� $
 	RowBorder�� � �� �	#FFE0E0E0P�  �@ 
IsSelected	 . . ��� $
 	RowBorder�� � �� �� $ 0.5,1&�$ RelativeToBoundingBox=�$ 0.5,0&�.��� $ DimGray��$ 0Q�� $ 	#FF444444��$ 1Q��� $
 Content�� � ��
 �   �F �� "  .���  � �� �� "  .R��� $ border��$��0q�$��Center=�$��Center=�._��� $
��auto��U   RowDetailsTemplateU �� .R�� .+��� $ HeaderNewOrder��
�������$��Stretch=�$	��Top=�$��30��$��2,0,2,2q�
�������$ 5,5,5,5��._�� $* Header��$��Stretch=�$��Stretch=�$��0,0,0,0q�& �� $��* ��� ���� *ActualWidth+$+ idColumn���� ���� *ActualWidth+$+ kategoriaColumn���� ���� *ActualWidth+$+ nazwaColumn���� ���� *ActualWidth+$+ rozmiarColumn���� ���� *ActualWidth+$+ 
cenaColumn���� ���� *ActualWidth+$+ iloscColumn���� $��* �.+��� $��1��$��Nr��$��Center=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��2��$��	Kategoria��$��Center=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��3��$��Nazwa��$��Center=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��4��$��Rozmiar��$��Center=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��5��$
��Cena��$��Center=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��6��$��Ilość��$��Center=�$��Stretch=�$ Center=�$��22(�
�������$��
Constantia)�$
��Bold"�$��Italic$���Z�   $	��300��$��0,30,0,0q�$��0��- . $. VisibleWhenSelected=�$��Stretch=�$��Stretch=�$��Stretch=�$��Center=�$/ 25Q�0 . $y�Visible=�$
1 None=�$��24(�
���   �$��0,2,2,0q�$2 Single=�3 .  $��1��$
4 None=�5 .  6 .  ���� *
Zamowienia+��Z� ��Z� 7 �� "  .���  � ��$ 1,1,1,0q���  � ��$ Center=���  � ��$ Center=���  � �� �� "  .R��� $ 	RowBorder��$ 5��$��1q�$
��auto��$	8 5,5q�$��1q�
���iii�
�������._�	  $��Center=�$��Center=�& �� $
��auto ��� $��* �' �� $
��auto ��� $��* �.+�
  $9 Content��$��1��#��z: #; z; $��Center=�$��Center=�$��Stretch=�$��Center=�$��20(�$
��Bold"�
���   �$��30��  $��1��$��1��#y�z< = �� *AreRowDetailsFrozen+#? Z> #A Z@ B �� "C    $��2��$= Vertical=�y��� *HeadersVisibility+#? ZD #A ZE B �� "C  F �� "  .���  � �� �� "  .R��� $ border��$��0q�$��Center=�$��Center=�._��� $
��auto��G   idColumn��$H Nr��$
I auto J .  
K �����L �� *nr+  kategoriaColumn��$H 	Kategoria��$
I auto J .  
K �����L �� *	kategoria+  nazwaColumn��$H Nazwa��$
I auto J .  
K �����L �� *nazwa+  rozmiarColumn��$H Rozmiar��$
I auto J .  
K �����L �� *	rozmiar+  
cenaColumn��$
H Cena��$
I auto J .  
K �����L �� *
cenaSuma+$M {0:N2} zł.��  iloscColumn��$H Ilość��$
I auto J .  
K �����L �� *ilosc+$M {0} szt.��G   -C   NrZamowienia1��$H Nr��$
I auto J .  
K �����L �� *NrZamowienia+  -D   	Nazwisko1��$H 	Kategoria��$
I auto J .  
K �����L �� *
Nazwisko+  -E   Telefon1��$H Nazwa��$
I auto J .  
K �����L �� *	Telefon+  -F   	CenaSuma1��$H Rozmiar��$
I auto J .  
K �����L �� *
CenaSuma+$M {0:N2} zł.���� -G   $( EndOrderWynos��$��0��$��30��$��Zakończ Zamówienie��$��Bottom=�$��Stretch=�$) NewOrderBttn��#���  � -H   $* Dostawa��$��2��$��Stretch=�$��Stretch=�$��2��& �� $	��37* ��� $
��227* �.+��� -I   $ HeaderWynos_Copy��$	��Top=����	#FF424242$��Stretch=�$��0,0,2,2q�$��30�����	#FF121212$��0,0,0,0q�$��2��._�� -J   $* Header1��$��Stretch=�$��0,0,0,0q�$��Stretch=�& �� �� ���� *ActualWidth+$+ NrZamowienia���� ���� *ActualWidth+$
+ Imie���� ���� *ActualWidth+$+ Nazwisko���� ���� *ActualWidth+$+ Telefon���� ���� *ActualWidth+$+ Ulica���� ���� *ActualWidth+$+ Miejscowosc���� ���� *ActualWidth+$+ NrDomu���� ���� *ActualWidth+$+ NrMieszkania���� ���� *ActualWidth+$+ CenaSuma���� .+��� $��1��$��Nr��$��Center=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��2��$
��Imie��$��Center=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��3��$��Nazwisko��$��Center=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��4��$��Telefon��$��Center=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��5��$��4��$��Adres��$��Center=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��9��$
��Cena��$��Center=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z�   -K   $, 	DowozList��$��0��- . $. VisibleWhenSelected=�$��Stretch=�$��Stretch=�$��Stretch=�$��Center=����	#FF252525$/ 25Q�0 . $y�Visible=�$
1 None=�$��24(�
���   ����	#FF121212$��0,0,0,0q�$2 Single=�3 .  $��2��$��	0,30,0,30q�$
4 None=�5 .  6 .  7 �� "  .���  � ��$ 1,1,1,0q���  � ��$ Center=���  � ��$ Center=���  � �� �� "  .R��� $ 	RowBorder��$ 5��$��1q�$
��auto��$	8 5,5q�$��1q����� $ 0.5,1&�$ 0.5,0&�.��� $ 	#FF5F5F5F��$ 0Q�� $ Black��$ 1Q����� $ 0.5,1&�$ RelativeToBoundingBox=�$ 0.5,0&�.��� $ 	LightGray��$ 0Q�� $
 Gray��$ 1Q�._�	  $��Center=�$��Center=�& �� $
��Auto ��� $��* �' �� $
��auto ��� $��* �.+�
  $9 Content��$��1��#��z: #; z; $��Center=�$��Center=�$��Center=�$��Center=�$��20(�$
��Bold"�
���   �$��30��  $��1��$��1��$��Stretch=�#y�z< = �� *AreRowDetailsFrozen+#? Z> #A Z@ B �� "C    $��2��$= Vertical=�y��� *HeadersVisibility+#? ZD #A ZE B �� "C   P�  �@J�IsMouseOver	 . . ��� $
 	RowBorder�� � �� �	#FFE0E0E0P�  �@ 
IsSelected	 . . ��� $
 	RowBorder�� � �� �� $ 0.5,1&�$ RelativeToBoundingBox=�$ 0.5,0&�.��� $ DimGray��$ 0Q�� $ 	#FF444444��$ 1Q��� $
 Content�� � ��
 �   �F �� "  .���  � �� �� "  .R��� $ border��$��0q�$��Center=�$��Center=�._��� $
��auto��U �� .R�� .+��� $ HeaderNewOrder��
�������$��Stretch=�$	��Top=�$��30��$��2,0,2,2q�
�������$ 5,5,5,5��._�� $* Header��$��Stretch=�$��Stretch=�$��0,0,0,0q�& �� $��* ��� ���� *ActualWidth+$+ idColumn���� ���� *ActualWidth+$+ kategoriaColumn���� ���� *ActualWidth+$+ nazwaColumn���� ���� *ActualWidth+$+ rozmiarColumn���� ���� *ActualWidth+$+ 
cenaColumn���� ���� *ActualWidth+$+ iloscColumn���� $��* �.+��� $��1��$��Nr��$��Center=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��2��$��	Kategoria��$��Center=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��3��$��Nazwa��$��Center=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��4��$��Rozmiar��$��Center=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��5��$
��Cena��$��Center=�$��Stretch=�$ Center=�$��22(�$��
Constantia)�
�������$
��Bold"�$��Italic$���Z� �� $��6��$��Ilość��$��Center=�$��Stretch=�$ Center=�$��22(�
�������$��
Constantia)�$
��Bold"�$��Italic$���Z�   -L   $��0,30,0,0q�$	��300��$��0��- . $. VisibleWhenSelected=�$��Stretch=�$��Stretch=�$��Stretch=�$��Center=�$/ 25Q�0 . $y�Visible=�$
1 None=�$��24(�
���   �$��0,2,2,0q�$2 Single=�3 .  $��1��$
4 None=�5 .  6 .  ���� *
Zamowienia+��Z� ��Z� 7 �� "  .���  � ��$ 1,1,1,0q���  � ��$ Center=���  � ��$ Center=���  � �� �� "  .R��� $ 	RowBorder��$ 5��$��1q�$
��auto��$	8 5,5q�$��1q�
���iii�
�������._�	  $��Center=�$��Center=�& �� $
��auto ��� $��* �' �� $
��auto ��� $��* �.+�
  $9 Content��$��1��#��z: #; z; $��Center=�$��Center=�$��Stretch=�$��Center=�$��20(�$
��Bold"�
���   �$��30��  $��1��$��1��#y�z< = �� *AreRowDetailsFrozen+#? Z> #A Z@ B �� "C    $��2��$= Vertical=�y��� *HeadersVisibility+#? ZD #A ZE B �� "C  F �� "  .���  � �� �� "  .R��� $ border��$��0q�$��Center=�$��Center=�._��� $
��auto��G   idColumn��$H Nr��$
I auto J .  
K �����L �� *nr+  kategoriaColumn��$H 	Kategoria��$
I auto J .  
K �����L �� *	kategoria+  nazwaColumn��$H Nazwa��$
I auto J .  
K �����L �� *nazwa+  rozmiarColumn��$H Rozmiar��$
I auto J .  
K �����L �� *	rozmiar+  
cenaColumn��$
H Cena��$
I auto J .  
K �����L �� *
cenaSuma+$M {0:N2} zł.��  iloscColumn��$H Ilość��$
I auto J .  
K �����L �� *ilosc+$M {0} szt.��G   -M   NrZamowienia��$H Nr��$
I auto J .  
K �����L �� *NrZamowienia+  -N   Imie��$H 	Kategoria��$
I auto J .  
K �����L �� *Imie+  -O   Nazwisko��$H 	Kategoria��$
I auto J .  
K �����L �� *
Nazwisko+  -P   Telefon��$H Nazwa��$
I auto J .  
K �����L �� *	Telefon+  -Q   	Ulica��$H 	Kategoria��$
I auto J .  
K �����L �� *Ulica+  -R   Miejscowosc��$H 	Kategoria��$
I auto J .  
K �����L �� *Miejscowosc+  -S   
NrDomu��$H 	Kategoria��$
I auto J .  
K �����L �� *NrDomu+  -T   NrMieszkania��$H 	Kategoria��$
I auto J .  
K �����L �� *NrMieszkania+  -U   CenaSuma��$H Rozmiar��$
I auto J .  
K �����L �� *
CenaSuma+$M {0:N2} zł.���� -V   $( EndOrderDowoz��$��0��$��30��$��Zakończ Zamówienie��$��Bottom=�$��Stretch=�$) NewOrderBttn��#���  $��2��
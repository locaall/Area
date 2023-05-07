/* 
  Prints area of a shape and draws it
  By RaLe
*/

U0 Menu()
{
  Print("\n\tMENU: \n\n   1) SQUARE\n   2) RECTANGLE\n   3) CIRCLE\n\n   Your choice (1-3) ");
}

U0 Main()
{
  Menu;
  I8 answer = GetChar;
  
  F64 x, y, p;
  CDC *dc = DCAlias;
  
  switch (answer)
  {
     case '1':
        DocClear;
        Print("Selected: SQUARE");
        Sleep(1300);
        DocClear;
       
        Print("Enter width: ");
        x = GetF64;
        Print("Enter height: ");
        y = GetF64;
    
        p = x`2;
        if (x != y)
 	  PrintErr("Not the same size!\n");
  	  break;
       
        SettingsPush;
	dc->color=RED;
	GrRect(dc, 120, 50, x, y);
 	
	dc->color=BLUE;
	GrPrint(dc, 100, 160, "Area: %.2fcm^2\n", p);
   	GetChar;
	DCFill(dc);
	DCDel(dc);
	SettingsPop;
	break;	

     case '2':
	DocClear;
	Print("Selected: RECTANGLE");
	Sleep(1300);
	DocClear;
	
	Print("Enter width: ");
	x = GetF64;
	Print("Enter height: ");
	y = GetF64;
  
	SettingsPush;
	dc->color=RED;
	GrRect(dc, 120, 50, x, y);
 	
	dc->color=BLUE;
	GrPrint(dc, 100, 160, "Area: %.2fcm^2\n", p);
   	GetChar;
	DCFill(dc);
	DCDel(dc);
	SettingsPop;
	break;	
     case '3':
	I64 z = 0;
	DocClear;
	Print("Selected: CIRCLE");
	Sleep(1300);
	DocClear;

	Print("Enter radius: ");
	F64 r = GetF64;
	
	p = r`2 * pi;
	
	SettingsPush;
	dc->color=RED;
	GrFillCircle(dc, 170, 130, z, r);
	
	dc->color=BLUE;
	GrPrint(dc, 100, 260, "Area %.2fcm^2\n", p);
	GetChar;
	DCFill(dc);
	DCDel(dc);
	SettingsPop;
	break;
  }
}
Main;
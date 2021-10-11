unit Cv;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Edit1: TEdit;
    SpinEdit1: TSpinEdit;
    Button12: TButton;
    Timer1: TTimer;
    Button13: TButton;
    Image1: TImage;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    Button16: TButton;
    Image2: TImage;
    Button19: TButton;
    Timer2: TTimer;
    Button20: TButton;
    Timer3: TTimer;
    Button14: TButton;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Button15: TButton;
    Timer4: TTimer;
    Button17: TButton;
    Button18: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Memo1: TMemo;
    Timer5: TTimer;
    Button24: TButton;
    Button25: TButton;
    Button27: TButton;
    Button26: TButton;
    Button28: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Button19Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Timer4Timer(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Timer5Timer(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  drag: boolean;

implementation

uses Scrn;

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var
 dtc: TCanvas;
begin
 dtc:=TCanvas.Create;
 dtc.Handle:=GetDC(Hwnd_Desktop);
 dtc.Pen.Mode:=pmNot;
 dtc.Pen.Width:=50;
 dtc.Pen.Color:=clGreen;
 dtc.LineTo(1000,1000);
 ReleaseDC(dtc.Handle,Hwnd_Desktop);
 dtc.Free;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
 dtc: TCanvas;
begin
 dtc:=TCanvas.Create;
 dtc.Handle:=GetDC(Hwnd_Desktop);
 dtc.Pen.Mode:=pmNot;
 dtc.Pen.Width:=10;
 dtc.Pen.Color:=clGreen;
 dtc.Ellipse(0,0,500,1000);
 ReleaseDC(dtc.Handle,Hwnd_Desktop);
 dtc.Free;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
 dtc: TCanvas;
begin
 dtc:=TCanvas.Create;
 dtc.Handle:=GetDC(Hwnd_Desktop);
 dtc.Pen.Mode:=pmNot;
 dtc.Pen.Width:=5;
 dtc.Pen.Color:=clGreen;
 dtc.Brush.Color:=clBlue;
 dtc.FillRect(ClientRect);
 ReleaseDC(dtc.Handle,Hwnd_Desktop);
 dtc.Free;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
 dtc: TCanvas;
 ris: TBitmap;
 i: integer;
begin
 ris:=TBitmap.Create;
 ris.LoadFromFile('1.bmp');
 dtc.Draw(0,0,ris);
 ris.Free;
 dtc.Free;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
 dtc: TCanvas;
begin
 dtc:=TCanvas.Create;
 dtc.Handle:=GetDC(Hwnd_Desktop);
 dtc.Pen.Mode:=pmNot;
 dtc.Pen.Width:=50;
 dtc.Pen.Color:=clGreen;
 dtc.Arc(0,0,1000,500,700,0,700,500);
 ReleaseDC(dtc.Handle,Hwnd_Desktop);
 dtc.Free;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
 dtc: TCanvas;
begin
 dtc:=TCanvas.Create;
 dtc.Handle:=GetDC(Hwnd_Desktop);
 dtc.Pen.Mode:=pmNot;
 dtc.Pen.Width:=5;
 dtc.Pen.Color:=clGreen;
 dtc.Chord(0,0,1000,500,700,0,700,500);
 ReleaseDC(dtc.Handle,Hwnd_Desktop);
 dtc.Free;
end;

procedure TForm1.Button7Click(Sender: TObject);
var
 dtc: TCanvas;
begin
 dtc:=TCanvas.Create;
 dtc.Handle:=GetDC(Hwnd_Desktop);
 dtc.Pen.Mode:=pmNot;
 dtc.Pen.Width:=5;
 dtc.Pen.Color:=clGreen;
 dtc.Pie(200,200,600,600,800,8800,200,800);
 ReleaseDC(dtc.Handle,Hwnd_Desktop);
 dtc.Free;
end;

procedure TForm1.Button8Click(Sender: TObject);
var
 dtc: TCanvas;
begin
 dtc:=TCanvas.Create;
 dtc.Handle:=GetDC(Hwnd_Desktop);
 dtc.Pen.Mode:=pmNot;
 dtc.Pen.Width:=5;
 dtc.Pen.Color:=clGreen;
 dtc.Rectangle(200,400,600,1000);
 ReleaseDC(dtc.Handle,Hwnd_Desktop);
 dtc.Free;
end;

procedure TForm1.Button9Click(Sender: TObject);
var
 n,y: integer;
 dtc: TCanvas;
begin
 Randomize;
 y:=10;
 for n:=1 to Screen.Height-20  do
  begin
   dtc:=TCanvas.Create;
   dtc.Handle:=GetDC(Hwnd_Desktop);
   dtc.Pen.Mode:=pmNot;
   dtc.Pen.Width:=2;
   dtc.Pen.Color:=Random(65000);
   dtc.MoveTo(Screen.Width div 2,Screen.Height div 2);
   dtc.LineTo(50,y);
   y:=y+1;
   Application.ProcessMessages;
  end;
 ReleaseDC(dtc.Handle,Hwnd_Desktop);
 dtc.Free;
end;

procedure TForm1.Button10Click(Sender: TObject);
var
 dtc: TCanvas;
begin
 dtc:=TCanvas.Create;
 dtc.Handle:=GetDC(Hwnd_Desktop);
// dtc.Pen.Mode:=pmNot;
// dtc.Brush.Style:=bsHorizontal;
// dtc.Brush.Style:=bsVertical;
 dtc.Brush.Style:=bsCross;
// dtc.Brush.Style:=bsDiagCross;
// dtc.Brush.Style:=bsClear;
// dtc.Brush.Style:=bsFDiagonal;
// dtc.Brush.Style:=bsBDiagonal;
 dtc.Brush.Color:=clBlack;
 dtc.Rectangle(0,0,1500,1500);
 ReleaseDC(dtc.Handle,Hwnd_Desktop);
 dtc.Free;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

procedure TForm1.Button11Click(Sender: TObject);
var
 dtc: TCanvas;
begin
 dtc:=TCanvas.Create;
 dtc.Handle:=GetDC(Hwnd_Desktop);
 dtc.Font.Size:=SpinEdit1.Value;
 dtc.Brush.Color:=clGray;
 dtc.Font.Color:=clGreen;
 dtc.TextOut(25,500,Edit1.Text);
 ReleaseDC(dtc.Handle,Hwnd_Desktop);
 dtc.Free;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
 Timer1.Enabled:=true;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
 dtc: TCanvas;
 c: TColor;
begin
 c:=random($1000000);
 dtc:=TCanvas.Create;
 dtc.Handle:=GetDC(Hwnd_Desktop);
 dtc.Brush.Color:=c;
 dtc.Pen.Width:=10;
 dtc.Pen.Color:=clBlack;
 dtc.Ellipse(0,0,500,1000);
 ReleaseDC(dtc.Handle,Hwnd_Desktop);
 dtc.Free;
end;

procedure TForm1.Button13Click(Sender: TObject);
var
 dtc: TCanvas;
begin
 if CheckBox1.Checked then
  begin
   //Form2.Canvas.Brush.Color:=clBtnFace;
   //Form2.Canvas.Create;
  end;
 Form2.Show;
 Form1.Show;
 dtc:=TCanvas.Create;
 dtc.Handle:=GetDC(Hwnd_Desktop);
 Form2.Canvas.CopyRect(Form2.Canvas.ClipRect,dtc,dtc.ClipRect);
 //Form2.Image1.Canvas.CopyRect(Image1.Canvas.ClipRect,dtc,dtc.ClipRect);
 ReleaseDC(dtc.Handle,Hwnd_Desktop);
 dtc.Free;
end;

procedure TForm1.Button16Click(Sender: TObject);
var
 dtc: TCanvas;
 ris: TBitmap;
begin
 ris:=TBitmap.Create;
 dtc:=TCanvas.Create;
 dtc.Handle:=GetDC(Hwnd_Desktop);
 dtc.CopyRect(dtc.ClipRect,Image2.Canvas,Image2.Canvas.ClipRect);
 ReleaseDC(dtc.Handle,Hwnd_Desktop);
 Application.ProcessMessages;
 ris.Free;
 dtc.Free;
end;

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
 dtc: TCanvas;
begin
 if drag then
  begin
   dtc:=TCanvas.Create;
   dtc.Handle:=GetDC(Hwnd_Desktop);
   dtc.Pen.Mode:=pmMaskPenNot;
   dtc.Pen.Color:=clGreen;
   dtc.Pen.Width:=20;
   x:=Mouse.CursorPos.X;
   y:=Mouse.CursorPos.Y;
   dtc.MoveTo(x,y);
   dtc.LineTo(x,y);
   ReleaseDC(dtc.Handle,Hwnd_Desktop);
   dtc.Free;
  end;
end;

procedure TForm1.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 drag:=false;
end;

procedure TForm1.Button19Click(Sender: TObject);
begin
 if Timer2.Enabled=true then Timer2.Enabled:=false
  else Timer2.Enabled:=true;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
var
 x,y: integer;
begin
 Randomize;
// x:=Random(Screen.Width);
// y:=Random(Screen.Height);
 x:=Random(Form1.Width);
 y:=Random(Form1.Height);
 Canvas.Pen.Color:=Random(65535);
 Canvas.Pen.Width:=2;
 Canvas.LineTo(x,y);
end;

procedure TForm1.Button20Click(Sender: TObject);
begin
 if Timer3.Enabled=true then Timer3.Enabled:=false
  else Timer3.Enabled:=true;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
//var
 //x,y: integer;
begin
 Randomize;
// x:=Random(Screen.Width);
// y:=Random(Screen.Height);
 Canvas.Pen.Width:=2;
 Canvas.Pen.Color:=clGreen;
  Canvas.MoveTo(200,300);
 Canvas.LineTo(200,400);
  Canvas.MoveTo(200,300);
 Canvas.LineTo(200,200);
  Canvas.MoveTo(200,300);
 Canvas.LineTo(100,300);
  Canvas.MoveTo(200,300);
 Canvas.LineTo(300,300);
end;

procedure TForm1.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 drag:=true;
end;

procedure TForm1.Timer4Timer(Sender: TObject);
var
 dtc: TCanvas;
begin
 if CheckBox1.Checked then
  begin
   // Form2.Canvas.Brush.Color:=clBtnFace;
   // Form2.Canvas.Create;
  end;
 Form2.Show;
 Form1.Show;
 dtc:=TCanvas.Create;
 dtc.Handle:=GetDC(Hwnd_Desktop);
 Form2.Canvas.CopyRect(Form2.Canvas.ClipRect,dtc,dtc.ClipRect);
 // Form2.Image1.Canvas.CopyRect(Image1.Canvas.ClipRect,dtc,dtc.ClipRect);
 ReleaseDC(dtc.Handle,Hwnd_Desktop);
 dtc.Free;
end;

procedure TForm1.Button14Click(Sender: TObject);
var
 dtc: TCanvas;
begin
 dtc:=TCanvas.Create;
 dtc.Handle:=GetDC(0);
 while true do
  begin
   Yield;
   dtc.Pixels[Random(Screen.Width), Random(Screen.Height)]:=0; // clBlack
   if Application.Terminated then Break;
   Application.ProcessMessages;
  end;
end;

procedure TForm1.Button15Click(Sender: TObject);
var
 bmp: TBitmap;
 DC: HDC;
begin
 bmp:=TBitmap.Create;
 bmp.Height:=Screen.Height;
 bmp.Width:=Screen.Width;
 DC:=GetDC(0);  //Дескpиптоp экpана
 BitBlt(bmp.Canvas.Handle, 0, 0, Screen.Width, Screen.Height,
                                              DC, 0, 0, SRCCOPY);
 bmp.SaveToFile('Screen.bmp');
 ReleaseDC(0, DC);
end;

procedure TForm1.Button17Click(Sender: TObject);
var
 n,x,y,f,fx: integer;
 dtc: TCanvas;
begin
 Randomize;
 x:=Screen.Width div 2;
 y:=6;
 f:=0;
 fx:=0;
 dtc:=TCanvas.Create;
 dtc.Handle:=GetDC(Hwnd_Desktop);
 // dtc.Pen.Mode:=pmNot;
 //dtc.Pen.Mode:=pmMergePenNot;
 dtc.Pen.Mode:=pmMaskPenNot;
 dtc.Pen.Width:=2;
 for n:=1 to Screen.Height*6000 do // Screen.Height*2-26
  begin           // Screen.Height*4-52, Screen.Height*6-78, ...
   dtc.MoveTo(Screen.Width div 2,Screen.Height div 2);
   Sleep(1);
   dtc.LineTo(x,y);
   if (f=0) and (fx=0) then
    begin
     x:=x-1;
     y:=y+1;
     dtc.Pen.Color:=clGreen;
    end;
   if ((x<=0) or (y>=Screen.Height div 2)) and (fx=0) then f:=1;
   if f=1 then
    begin
     x:=x+1;
     y:=y+1;
     dtc.Pen.Color:=clRed;
    end;
   if y>=Screen.Height-6 then
    begin
     f:=2;
     fx:=1;
    end;
   if (f=2) and (fx=1) then
    begin
     x:=x+1;
     y:=y-1;
     dtc.Pen.Color:=clBlue;
    end;
   if ((x>=Screen.Width) or (y<=Screen.Height div 2)) and (fx=1) then
    begin
     f:=3;
     fx:=2;
    end;
   if (f=3) and (fx=2) then
    begin
     x:=x-1;
     y:=y-1;
     dtc.Pen.Color:=clYellow;
    end;
   if ((x<=Screen.Width div 2) or (y<=6)) and (fx=2) then
    begin
     f:=0;
     fx:=0;
    end;
   if Application.Terminated then Break;
   Application.ProcessMessages;
  end;
 ReleaseDC(dtc.Handle,Hwnd_Desktop);
 dtc.Free;
end;

procedure TForm1.Button18Click(Sender: TObject);
var
 n,x,y: integer;
 dtc: TCanvas;
begin
 Randomize;
 x:=Screen.Width div 2;
 y:=6;
 dtc:=TCanvas.Create;
 dtc.Handle:=GetDC(Hwnd_Desktop);
 dtc.Pen.Mode:=pmMergePenNot;
 dtc.Pen.Width:=2;
 dtc.Pen.Color:=clBlue;
 for n:=1 to Screen.Height*6000 do
  begin
   dtc.MoveTo(Mouse.CursorPos.X,Mouse.CursorPos.Y);
   Sleep(1);
   dtc.LineTo(x,y);
   x:=Random(1000);
   y:=Random(1000);
   if Application.Terminated then Break;
   Application.ProcessMessages;
  end;
 ReleaseDC(dtc.Handle,Hwnd_Desktop);
 dtc.Free;
end;

procedure TForm1.Button21Click(Sender: TObject);
var
 i,j1,j2,n,y: integer;
 dtc: TCanvas;
begin
 Randomize;
 dtc:=TCanvas.Create;
 dtc.Handle:=GetDC(Hwnd_Desktop);
 dtc.Pen.Mode:=pmMergePenNot;
 dtc.Pen.Width:=2;
 dtc.Pen.Color:=clBlue;
 i:=99;
 for n:=1 to Screen.Width-200 do
  begin
   inc(i);
   dtc.MoveTo(i,Screen.Height-100);
   j2:=Screen.Height-100-Random(Screen.Height-100);
   y:=Screen.Height-99;
   for j1:=0 to j2 do
    begin
     dec(y);
     dtc.LineTo(i,y);
     Sleep(0);
     if Application.Terminated then Break;
     Application.ProcessMessages;
    end;
   if Application.Terminated then Break;
   Application.ProcessMessages;
  end;
 ReleaseDC(dtc.Handle,Hwnd_Desktop);
 dtc.Free;
end;

procedure TForm1.Button22Click(Sender: TObject);
var
 n: integer;
 dtc: TCanvas;
 s: string;
 LogFont: TLogFont;
 OldFont: TFont;
 TempFont: HFont;
begin
 dtc:=TCanvas.Create;
 dtc.Handle:=GetDC(Hwnd_Desktop);
 dtc.Font.Size:=24;
 dtc.Font.Color:=clRed;
 dtc.Brush.Style:=bsClear; // текст без фона
 TempFont:=0;
 GetObject(dtc.Font.Handle, SizeOf(TLogFont), @LogFont);
 LogFont.lfEscapement:=60;
 LogFont.lfOutPrecision:=OUT_TT_PRECIS;
 TempFont:=CreateFontIndirect(LogFont);
 OldFont:=TFont.Create;
 try
  with dtc do
   begin
    OldFont.Assign(Font);
    Font.Handle:=TempFont;
    TextOut(500, 500, 'Simple text');
    Font.Assign(OldFont);
   end
 finally
  OldFont.Free;
  if TempFont <>0
  then DeleteObject(TempFont);
 end;
 ReleaseDC(dtc.Handle,Hwnd_Desktop);
 dtc.Free;
{ dtc:=TCanvas.Create;
 dtc.Handle:=GetDC(Hwnd_Desktop);
 dtc.Pen.Mode:=pmMergePenNot;
 dtc.Pen.Width:=2;
 dtc.Pen.Color:=clBlue;
 for n:=1 to Screen.Width-200 do
  begin
   dtc.MoveTo(10,Screen.Height-100);
   dtc.LineTo(10,10);
   if Application.Terminated then Break;
   Application.ProcessMessages;
  end;
 ReleaseDC(dtc.Handle,Hwnd_Desktop);
 dtc.Free; }
end;

// для CMYK
procedure RGBTOCMYK(R : byte; G : byte; B : byte; var C : byte;
                       var M : byte; var Y : byte; var K : byte);
begin
 C:=255-R;
 M:=255-G;
 Y:=255-B;
 if C<M
 then K:=C
 else K:=M;
 if Y<K
 then K:=Y;
 if k>0
 then
  begin
   c:=c-k;
   m:=m-k;
   y:=y-k;
  end;
end;

// для CMYK
procedure CMYKTORGB(C : byte; M: byte; Y : byte; K : byte;
                    var R : byte; var G : byte; var B : byte);
begin
 if (Integer(C)+Integer(K))<255
 then R:=255-(C+K)
 else R:=0;
 if (Integer(M)+Integer(K))<255
 then G:=255-(M+K)
 else G:=0;
 if (Integer(Y)+Integer(K))<255
 then B:=255-(Y+K)
 else B:=0;
end;

// для CMYK
procedure ColorCorrectCMYK(var C : byte; var M : byte;
                                   var Y : byte; var K : byte);
var
 MinColor : byte;
begin
 if C<M
 then MinColor:=C
 else MinColor:=M;
 if Y<MinColor
 then MinColor:=Y;
 if MinColor+K>255
 then MinColor:=255-K;
 C:=C-MinColor;
 M:=M-MinColor;
 Y:=Y-MinColor;
 K:=K+MinColor;
end;

// для CMYK
procedure TForm1.Timer5Timer(Sender: TObject);
var
 R,G,B,C,M,Y,K: byte;
 red,green,blue:byte;
begin
 R:=151;
 G:=81;
 B:=55;
 // c:=RGB(red,green,blue);
 // colr:=dtc.Pixels[x,y];
 Memo1.Lines.Clear;
 Memo1.Lines.Add('R = ' + IntToStr(R));
 Memo1.Lines.Add('G = ' + IntToStr(G));
 Memo1.Lines.Add('B = ' + IntToStr(B));
 Memo1.Lines.Add('-------------------');
 RGBTOCMYK(R, G, B, C, M, Y, K);
 Memo1.Lines.Add('C = ' + IntToStr(C));
 Memo1.Lines.Add('M = ' + IntToStr(M));
 Memo1.Lines.Add('Y = ' + IntToStr(Y));
 Memo1.Lines.Add('K = ' + IntToStr(K));
 Memo1.Lines.Add('-------------------');
 CMYKTORGB(C, M, Y, K, R, G, B);
 Memo1.Lines.Add('R = ' + IntToStr(R));
 Memo1.Lines.Add('G = ' + IntToStr(G));
 Memo1.Lines.Add('B = ' + IntToStr(B));
 Memo1.Lines.Add('-------------------');
 RGBTOCMYK(R, G, B, C, M, Y, K);
 c:=c+2;
 m:=m+2;
 y:=y+2;
 ColorCorrectCMYK(C, M, Y, K);
 Memo1.Lines.Add('C = ' + IntToStr(C));
 Memo1.Lines.Add('M = ' + IntToStr(M));
 Memo1.Lines.Add('Y = ' + IntToStr(Y));
 Memo1.Lines.Add('K = ' + IntToStr(K));
end;

procedure TForm1.Button23Click(Sender: TObject);
begin
 if Timer5.Enabled=false
 then
  begin
   Timer5.Enabled:=true;
   Memo1.Visible:=true;
   Memo1.BringToFront;
  end
 else
  begin
   Timer5.Enabled:=false;
   Memo1.Visible:=false;
   Memo1.SendToBack;
  end;
end;

procedure TForm1.Button24Click(Sender: TObject);
var
 Bitmap: TBitmap;
begin
 Bitmap:=TBitmap.Create;
 try
  Bitmap.LoadFromFile(ExtractFilePath(ParamStr(0))+'ate.bmp');
  // установка в битмапе тех пиксел, которые должны быть черными
  Bitmap.Canvas.Pixels[3,2]:=ClBlack;
  Bitmap.Canvas.Pixels[3,3]:=ClBlack;
  Bitmap.Canvas.Pixels[4,2]:=ClBlack;
  Bitmap.Canvas.Pixels[5,2]:=ClBlack;
  Form1.Canvas.Brush.Bitmap:=Bitmap;
  Form1.Canvas.FillRect(Rect(0,0,Bitmap.Width,Bitmap.Height));
 finally
  Form1.Canvas.Brush.Bitmap:=nil;
  Bitmap.Free;
 end;
end;

procedure TForm1.Button25Click(Sender: TObject);
var
 hBmp:THandle;
 Col:TColor;
 dtc: Tcanvas;
 X,Y:integer;
begin
 dtc:=TCanvas.Create;
 dtc.Handle:=GetDC(Hwnd_Desktop);
 hBmp:=dtc.Handle;
 for X:=1 to Form1.Width do
  for Y:=1 to Form1.Height do
   begin
    Col:=GetPixel(hBmp,X,Y);
    Form1.Canvas.Pixels[x,y]:=col;
   end;
 ReleaseDC(dtc.Handle,Hwnd_Desktop);
 dtc.Free;
end;


procedure TForm1.Button27Click(Sender: TObject);
begin
 InvalidateRect(0, nil, true);
 //
 InValidateRect(Canvas.Handle,nil,true);
 // Если вы используете холст формы, то попробуйте следующее:
 InValidateRect(Form1.Handle,nil,true);
 // (или взамен передать дескриптор компонента)
 // Это очистит хост:
 Canvas.FillRect(Canvas.ClipRect);
 // или
 // Canvas.Brush.Color:=ClWhite;
 // Canvas.FillRect(Canvas.ClipRect);
 // Самый быстрый способ очистить Canvas
 PatBlt(Form1.Canvas.Handle, 0, 0,
   Form1.ClientWidth, Form1.ClientHeight, WHITENESS);
end;

procedure TForm1.Button26Click(Sender: TObject);
var
 hBmp:THandle;
 Col:TColor;
 dtc: Tcanvas;
 X,Y:integer;
begin
 dtc:=TCanvas.Create;
 dtc.Handle:=GetDC(Hwnd_Desktop);
 hBmp:=dtc.Handle;
 for X:=1 to Screen.Width do
  for Y:=1 to Screen.Height do
   begin
    Col:=GetPixel(hBmp,X,Y);
    dtc.Pixels[x-10,y-40]:=Col;
    if Application.Terminated then Break;
    Application.ProcessMessages;
   end;
 ReleaseDC(dtc.Handle,Hwnd_Desktop);
 dtc.Free;
end;

procedure TForm1.Button28Click(Sender: TObject);
var
 logfont: TLogFont;
 font: Thandle;
 count: integer;
begin
 Form1.Repaint;
 LogFont.lfheight:=20;
 logfont.lfwidth:=20;
 logfont.lfweight:=750;
 LogFont.lfEscapement:=-200;
 logfont.lfcharset:=1;
 logfont.lfoutprecision:=out_tt_precis;
 logfont.lfquality:=draft_quality;
 logfont.lfpitchandfamily:=FF_Modern;
 font:=CreateFontInDirect(logfont);
 SelectObject(Form1.canvas.handle, font);
 SetTextColor(Form1.canvas.handle, rgb(0, 0, 200));
 SetBKmode(Form1.canvas.handle, transparent);
 for count:=1 to 10 do
  begin
   Canvas.TextOut(Random(form1.width), Random(form1.height), 'Autorun CD v 1.1');
   SetTextColor(form1.canvas.handle, rgb(Random(255), Random(255), Random(255)));
  end;
 DeleteObject(font);
end;

initialization
 randomize;

end.

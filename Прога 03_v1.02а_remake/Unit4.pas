unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls, ComCtrls, Grids, CheckLst,Unit1;

type
  TForm4 = class(TForm)
    Image1: TImage;
    GroupBox1: TGroupBox;
    CheckBox2: TCheckBox;
    GroupBox2: TGroupBox;
    Edit13: TEdit;
    Edit14: TEdit;
    Label19: TLabel;
    Label18: TLabel;
    GroupBox3: TGroupBox;
    ComboBox2: TComboBox;
    Label20: TLabel;
    Button2: TButton;
    Edit15: TEdit;
    Label21: TLabel;
    Label22: TLabel;
    Edit16: TEdit;
    RadioGroup1: TRadioGroup;
    GroupBox4: TGroupBox;
    ComboBox1: TComboBox;
    ComboBox3: TComboBox;
    Label1: TLabel;
    Edit1: TEdit;
    GroupBox5: TGroupBox;
    Edit2: TEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}
Var MapGraph:TBitMap;

Type TFuncs=
array of
record
 Mass:array of
  record
   flag:boolean;
   RealPoint:
    record
    X:extended;
    Y:extended;
    end;
   Point:TPoint;
  end;
 Code:String;
 minFx:extended;
 maxFx:extended;
end;

Var Funcs:TFuncs;

Procedure GridGraph;  //Рисование сетки:
Var hx,hy,nx,ny,h,i,w,n0:longint;                  //nx,nx - начальные значения x,y
    PenSave:TPen;                                  //hx,hy - шаг по x,y
    InsertGrid:TRect;
begin
InsertGrid:=Rect(40,15,Form4.Image1.Width-51,Form4.Image1.Height-30);

PenSave:=Form4.Image1.Canvas.Pen;
Form4.Image1.Canvas.Pen.Style:=psDot;
Form4.Image1.Canvas.Pen.Width:=1;
Form4.Image1.Canvas.Pen.Color:=clSilver;

w:=InsertGrid.BottomRight.X-InsertGrid.TopLeft.X+1;
h:=InsertGrid.BottomRight.Y-InsertGrid.TopLeft.Y+1;

hx:=round(w/StrToInt(Form4.Edit13.Text));

nx:=InsertGrid.TopLeft.X+hx-1;
n0:=Round(w/hx);
For i:=1 to n0-1 do
begin
Form4.Image1.Canvas.MoveTo(nx,InsertGrid.TopLeft.Y);
Form4.Image1.Canvas.LineTo(nx,InsertGrid.BottomRight.Y);
nx:=nx+hx;
end;//For i:=1 to n0-1 do//

hy:=round(h/StrToInt(Form4.Edit14.Text));
ny:=InsertGrid.TopLeft.Y+hy-1;

n0:=Round(h/hy);
For i:=1 to n0-1 do
begin
Form4.Image1.Canvas.MoveTo(InsertGrid.TopLeft.X,ny);
Form4.Image1.Canvas.LineTo(InsertGrid.BottomRight.X,ny);
ny:=ny+hy;
end;//For i:=1 to n0-1 do//

Form4.Image1.Canvas.Pen:=PenSave;
end;//GridGraph//

Procedure DrawGraph(q,dh,k:longint;Var Map:TBitMap;k0:longint);
//q - номер выбр. ф-ции, dh - шаг, k - кол-во пикселов,
//Map -передаваемая картинка,k0-коэффициент утолщения линии
Var s,i:longint;
begin
Randomize;
Map.Canvas.Pen.Color:=RGB(round(Random(255)),round(Random(255)),round(Random(255)));
Map.Canvas.Pen.Width:=StrToInt(Form4.Edit2.Text)*k0;
s:=-1;
Repeat
Inc(s);
Until Funcs[q].Mass[s].flag=true;
For i:=1 to dh do Inc(s);
For i:=s to k-1 do
begin
If Funcs[q].Mass[i].flag=true then
If Funcs[q].Mass[i-dh].flag=true then
begin
Map.Canvas.MoveTo(Funcs[q].Mass[i-dh].Point.X,Funcs[q].Mass[i-dh].Point.Y);
Map.Canvas.LineTo(Funcs[q].Mass[i].Point.X,Funcs[q].Mass[i].Point.Y);
end;//If Funcs[q].Mass[i-dh].flag=true then//
end;//For i:=0 to k-1 do// ///
end;//DrawGraph//

Procedure DrawOnMap; //Вычисления,рисование на битовый образ графиков
Var q,i,k,s,kh,dh:longint;
    h,x,minFx,maxFx,Height,x1,y1,min_minFx,max_maxFx:extended;
    flagCall,flagMessage,flagMIN_MAX:boolean;
    St:string;
    MapBufer:TBitMap;
begin
MapGraph.FreeImage;
SetLength(Funcs,0);
SetLength(Funcs,Form4.ComboBox2.Items.Count);

k:=round((Form4.Image1.Width-91));   // кол-во точек
kh:=round((Form4.Image1.Height-45));
MapGraph.Width:=k;
MapGraph.Height:=kh;

For q:=0 to High(Funcs) do
begin
Funcs[q].Code:=Form4.ComboBox2.Items.Strings[q];
flagCall:=false;
dh:=StrToInt(Form4.Edit1.Text); // кол-во пикселей за шаг
SetLength(Funcs[q].Mass,k);
h:=(StrToFloat(Form4.Edit16.Text)-StrToFloat(Form4.Edit15.Text))/k; // шаг изменения ф-ции
x:=StrToFloat(Form4.Edit15.Text);  //нач. значение x

//Подсчет минимума и максимума ф-ции,заполнение массива Mass для текущей ф-ции:
flagMIN_MAX:=false;
For i:=0 to k-1 do
begin
//Подсчёт ф-ции
Funcs[q].Mass[i].flag:=true;
St:=StringReplace(Funcs[q].Code,'@',FloatToStr(x),[rfReplaceAll]);
St:=StringReplace(St,',','.',[rfReplaceAll]);
If (Generate(St,flagMessage,flagCall))or(flagMessage=false) then
begin
Funcs[q].Mass[i].flag:=false;x:=x+h;
Continue;
end;//If (flagMessage=false)or ... //
Funcs[q].Mass[i].RealPoint.X:=x;
St:=StringReplace(St,'.',',',[rfReplaceAll]);
Funcs[q].Mass[i].RealPoint.Y:=StrToFloat(St);  ////
If flagMIN_MAX=false then
begin
flagMIN_MAX:=true;
minFx:=Funcs[q].Mass[i].RealPoint.Y;
maxFx:=Funcs[q].Mass[i].RealPoint.Y;
end//If flagMIN_MAX=false then//
Else
begin
If Funcs[q].Mass[i].RealPoint.Y<minFx then minFx:=Funcs[q].Mass[i].RealPoint.Y;
If Funcs[q].Mass[i].RealPoint.Y>maxFx then maxFx:=Funcs[q].Mass[i].RealPoint.Y;
end;//Else//
x:=x+h;
end;//For i:=0 to k-1 do // ////
Funcs[q].maxFx:=maxFx;
Funcs[q].minFx:=minFx;
Height:=maxFx-minFx;

//Формирование координат точек Point
For i:=0 to k-1 do
begin
If Funcs[q].Mass[i].flag=false then Continue;
Funcs[q].Mass[i].Point.X:=i;
Funcs[q].Mass[i].Point.Y:=kh-round(kh*(Funcs[q].Mass[i].RealPoint.Y-minFx)/Height);
end;//For i:=0 to k-1 do II//  ////

If q=0 then //Поиск min_minFx и max_maxFx
begin
min_minFx:=Funcs[q].minFx;
max_maxFx:=Funcs[q].maxFx;
end;//If q=0 then//
If Funcs[q].minFx<min_minFx then min_minFx:=Funcs[q].minFx;
If Funcs[q].maxFx>max_maxFx then max_maxFx:=Funcs[q].maxFx; ////

end;//For q:=0 to High(Funcs) do//

For q:=0 to High(Funcs) do
begin
//Рисование на БитМапе графиков:
If Form4.RadioGroup1.ItemIndex=0 then DrawGraph(q,dh,k,MapGraph,1)
else
begin
MapBufer:=TBitMap.Create;
MapBufer.Width:=MapGraph.Width;
MapBufer.Height:=MapGraph.Height;
MapBufer.Canvas.FloodFill(0,0,clWhite,fsBorder);
s:=round((1/5)*(max_maxFx-min_minFx)/(Funcs[q].maxFx-Funcs[q].minFx));
DrawGraph(q,dh,k,MapBufer,s);
i:=round(MapGraph.Height*abs((max_maxFx-Funcs[q].maxFx)/(max_maxFx-min_minFx))-1);
s:=round(MapGraph.Height*abs((Funcs[q].minFx-min_minFx)/(max_maxFx-min_minFx)));
MapBufer.Transparent:=true;
MapBufer.TransparentColor:=clWhite;
MapGraph.Canvas.StretchDraw(Rect(0,i,MapGraph.Width-1,MapGraph.Height-s),MapBufer);
MapBufer.Free;
end;//else//  ////
end;//For q:=0 to High(Funcs) do//

end;//DrawOnMap//

procedure TForm4.FormResize(Sender: TObject);
begin
Form4.Image1.Width:=Form4.ClientWidth-168;
Form4.Image1.Height:=Form4.ClientHeight-16;
Form4.Image1.Canvas.FloodFill(0,0,clCaptionText,fsBorder);
Form4.Image1.Canvas.Brush.Color:=clBlack;
Form4.Image1.Canvas.FillRect(Rect(37,13,Form4.Image1.Width-48,Form4.Image1.Height-27));
Form4.Image1.Canvas.Brush.Color:=clWhite;
Form4.Image1.Canvas.FillRect(Rect(40,15,Form4.Image1.Width-51,Form4.Image1.Height-30));
If Form4.CheckBox2.Checked then GridGraph();
MapGraph.Transparent:=true;
MapGraph.TransparentColor:=clWhite;
Form4.Image1.Canvas.StretchDraw(Rect(40,15,Form4.Image1.Width-51,Form4.Image1.Height-30),MapGraph);
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
DoubleBuffered:=true;
//Заготовка битового образа для рисования
MapGraph:=TBitMap.Create;
MapGraph.Width:=StrToInt(Form4.Edit1.Text);
MapGraph.Height:=StrToInt(Form4.Edit1.Text);
MapGraph.Canvas.Brush.Color:=clWhite;
MapGraph.Canvas.FloodFill(0,0,clRed,fsBorder);//
Form4.Height:=9000;
Form4.Width:=9000;

Application.ProcessMessages;
DrawOnMap;
Form4.Height:=500;
Form4.Width:=800;
end;

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
MapGraph.FreeImage;
DoubleBuffered:=true;
//Заготовка битового образа для рисования
MapGraph:=TBitMap.Create;
MapGraph.Width:=StrToInt(Form4.Edit1.Text);
MapGraph.Height:=StrToInt(Form4.Edit1.Text);
MapGraph.Canvas.Brush.Color:=clWhite;
MapGraph.Canvas.FloodFill(0,0,clRed,fsBorder);//

Application.ProcessMessages;
DrawOnMap;

If Form4.CheckBox2.Checked then GridGraph();
MapGraph.Transparent:=true;
MapGraph.TransparentColor:=clWhite;

Form4.Image1.Canvas.StretchDraw(Rect(40,15,Form4.Image1.Width-51,Form4.Image1.Height-30),MapGraph);
FormResize(Form4);
end;

end.


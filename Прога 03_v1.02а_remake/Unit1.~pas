unit Unit1;

interface

uses
  Math,Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, Buttons, ToolWin, XPMan,
  OleServer, WordXP, Mask, Grids, Menus, DBCtrls, TeeProcs, TeEngine,
  Chart, DbChart;

Type St_mass = array of string;

Function DelAllSpaces(St:string):string;
Function NumChar(ch:char;n:word):string;
Function DelSpacesChar(St:string;Ch:char):string;
Procedure ObrabotkaChar (St:string;ch:char;Var A:St_mass);
Function rTransformEdit (n:word;St0:string):string;
Function CheckNum (St:string):boolean;
Function Changing (Var St:string;Name_Operation:string;Var flagMessage:boolean;flagCall:boolean):boolean;
Function Kalcul(Var St:string;Var flagMessage:boolean;flagCall:boolean):boolean;
Function Num_of_Char(St:string;E:char):longint;
Function Obrabotchik(Var St:string;Var flagMessage:boolean;flagCall:boolean):boolean;
Function FuncPos(St:string;Var Func:string;flagCall:boolean):longint;
Function WorkUnderFunc(Var StNameResult:string;FuncArgum:St_mass;Var flagMessage:boolean;flagCall:boolean):boolean;
Function Generate (Var St:string;Var flagMessage:boolean;flagCall:boolean):boolean;


type
  TMainForm = class(TForm)
    Panel: TPanel;
    Button_Press_log: TSpeedButton;
    Button_PressLeftSkob: TSpeedButton;
    Button_PressRightSkob: TSpeedButton;
    Button_Press_exp: TSpeedButton;
    Button_Press_sin: TSpeedButton;
    Button_Press_arcsin: TSpeedButton;
    Button_Press_div: TSpeedButton;
    Button_Press_cos: TSpeedButton;
    Button_Press_arccos: TSpeedButton;
    Button_Press_mod: TSpeedButton;
    Button_Press_tg: TSpeedButton;
    Button_Press_arctg: TSpeedButton;
    Button_Press_Stepen: TSpeedButton;
    Button_Press_abs: TSpeedButton;
    Button_Press_ln: TSpeedButton;
    Button_Press_plus: TSpeedButton;
    Button_Press_minus: TSpeedButton;
    Button_Press_delenie: TSpeedButton;
    Button_Press_pi: TSpeedButton;
    Button_Press_proisvedenie: TSpeedButton;
    Button_Press_Result: TSpeedButton;
    Button_Press_tochka: TSpeedButton;
    Button_Press_ChangeSign: TSpeedButton;
    Button_Press_0: TSpeedButton;
    Button_Press_1: TSpeedButton;
    Button_Press_2: TSpeedButton;
    Button_Press_3: TSpeedButton;
    Button_Press_ch: TSpeedButton;
    Button_Press_MemPlus: TSpeedButton;
    Button_Press_MemMinus: TSpeedButton;
    Button_Press_4: TSpeedButton;
    Button_Press_5: TSpeedButton;
    Button_Press_6: TSpeedButton;
    Button_Press_sh: TSpeedButton;
    Button_Press_e: TSpeedButton;
    Button_Press_9: TSpeedButton;
    Button_Press_8: TSpeedButton;
    Button_Press_MemClear: TSpeedButton;
    Button_Press_MemResult: TSpeedButton;
    Backcpace: TSpeedButton;
    ClearEdit: TSpeedButton;
    Rad: TRadioButton;
    Cycle: TRadioButton;
    Button_Press_7: TSpeedButton;
    MainMenu: TMainMenu;
    N1: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    Deg: TRadioButton;
    Grad: TRadioButton;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    PopupMenu1: TPopupMenu;
    N15: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N20: TMenuItem;
    Memo: TMemo;
    N2: TMenuItem;
    N3: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N19: TMenuItem;
    N16: TMenuItem;
    N21: TMenuItem;
    procedure BackcpaceClick(Sender: TObject);
    procedure ClearEditClick(Sender: TObject);
    procedure Button_Press_ResultClick(Sender: TObject);
    procedure Button_Press_piClick(Sender: TObject);
    procedure Button_Press_eClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button_Press_MemPlusClick(Sender: TObject);
    procedure Button_Press_MemClearClick(Sender: TObject);
    procedure Button_Press_MemResultClick(Sender: TObject);
    procedure Button_Press_ChangeSignClick(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure Button_Press_logClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MemoKeyPress(Sender: TObject; var Key: Char);
    procedure N3Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
  TDialogForm = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
TFuncRec=record
FuncName:string[255];
FuncKod:string[255];
flagTwoArg:boolean;
end;//FuncRec//
tFile=file of TFuncRec;
Var fv:tFile;

var DialogForm: TDialogForm;

Var FuncMass,FuncMass2:St_mass;

var
  MainForm: TMainForm;
  Memory:string='';
  Bufer:string='';
implementation

uses Unit2, Unit3, Unit4;

{$R *.dfm}

////Процедура удаления всех пробелов:
Function DelAllSpaces(St:string):string;
Var i:integer;
BEGIN
Repeat
i:=Pos(' ',St);
If i<>0 then Delete(St,i,1);
Until i=0;
Result:=St;
END;//DelAllSpaces//


Function NumChar(ch:char;n:word):string;
Var i:integer;
begin
Result:='';
For i:=1 to n do Result:=Result+Ch;
end;//NumChar//

////Процедура удаления лишних символов:
Function DelSpacesChar(St:string;Ch:char):string;
Var i:integer;
BEGIN
Repeat
i:=Pos(ch+ch,St);
If i<>0 then Delete(St,i,1);
Until i=0;
If St[1]=ch then Delete(St,1,1);
i:=Length(St);
If (St<>'') and (St[i]=ch) then Delete(St,i,1);
Result:=St;
END;//DelSpacesChar//

////Процедура создания массива слов строки:
Procedure ObrabotkaChar (St:string;ch:char;Var A:St_mass);
Var i,b,k,l:integer;
BEGIN
SetLength(A,0);
St:=DelSpacesChar(St,ch)+ch;
If St=ch then begin Writeln('Stroka ne soderjit slov!');Exit;end;
b:=1;k:=-1;l:=0;
Repeat
i:=Pos(ch,Copy(St,b,Length(St)));
Inc(k);
SetLength(A,k+1);
A[k]:=Copy( Copy(St,b,Length(St)) ,1,i-1);
If A[k]='' then begin SetLength(A,k);Dec(k);end;
b:=l+i+1;l:=l+Length(A[k])+1;
Until i=0;
END;//ObrabotkaChar//

Function rTransformEdit (n:word;St0:string):string;
Var j,k:longint;
begin
j:=Length(St0);                       ///////////
If n<=j then begin Result:=St0;Exit; end;
Result:='';
k:=Length(NumChar(' ',n-Length(St0)));//////////
Result:=NumChar(' ',n-Length(St0))+St0;
end;//rTransformEdit//

Function CheckNum (St:string):boolean;
Var Code:integer;
    x:extended;
begin
Val(St,x,Code);
If (Code=0) and (Pos(' ',St)=0) then Result:=true
Else Result:=false;
end;

Function Changing (Var St:string;Name_Operation:string;Var flagMessage:boolean;flagCall:boolean):boolean;
Var St0:string;
    x1,x2,x:extended;
    i,j,k,Code,n_left,n_right:longint;
begin
TRY
Result:=false;

St:=AnsiLowerCase(St);

If St='' then
begin
If flagCall then
ShowMessage('Обработка пустой строки невозможна');
flagMessage:=false;
Result:=true;Exit;
end;

If (St[1]='-') or (St[1]='+') then St:='0'+St;

If Not(Name_Operation[1] in ['+','-','*','/']) then
begin
ShowMessage('Not exist so name of operation under numbers in Procedure Changing!!!');
flagMessage:=false;
Result:=true;Exit;
end;

St:=DelAllSpaces(St);

REPEAT

If Pos('e+',St)<>0
then St:=StringReplace(St,'e+','e',[rfReplaceAll]);

If Pos('e-',St)<>0
then St:=StringReplace(St,'e-','e'+#13,[rfReplaceAll]);

i:=Pos(Name_Operation,St);
If i<>0 then
BEGIN

n_left:=0;
St0:='';
For j:=i-1 downto 1 do
begin
If (St[j] in ['0'..'9','.','e',#13]) then
begin
St0:=St[j]+St0;Inc(n_left);
end//If (St[j] in ['0'..'9','.','e',#13]) then//
Else Break;
end;//For j:=i-1 to 1 do//

If Pos('e'+#13,St0)<>0
then St0:=StringReplace(St0,'e'+#13,'e-',[rfReplaceAll]);

Val(St0,x1,Code);
If Code<>0 then
begin
If flagCall then
ShowMessage('Невозможно преобразовать левый аргумент у операнда "'+Name_Operation+'"');
flagMessage:=false;
Result:=true;Exit;
end;

n_right:=0;
St0:='';
For j:=i+1 to Length(St) do
begin
If (St[j] in ['0'..'9','.','e',#13])
or ((St[j]='-')and(j=i+1)) then
begin
St0:=St0+St[j];Inc(n_right);
end//If (St[j] in ['0'..'9','.','e',#13]) then//
Else Break;
end;//For j:=i+1 to Length(St) do//

If Pos('e'+#13,St0)<>0
then St0:=StringReplace(St0,'e'+#13,'e-',[rfReplaceAll]);

Val (St0,x2,Code);
If Code<>0 then
begin
If flagCall then
ShowMessage('Невозможно преобразовать правый аргумент у операнда "'+Name_Operation+'"');
flagMessage:=false;
Result:=true;Exit;
end;

If (Name_Operation='/') and (x2=0) then
begin
If flagCall then
ShowMessage('Деление на нуль запрещено');
flagMessage:=false;
Result:=true;Exit;
end;
     If Name_Operation='+' then x:=x1+x2
Else If Name_Operation='-' then x:=x1-x2
Else If Name_Operation='*' then x:=x1*x2
Else If Name_Operation='/' then x:=x1/x2;

Str(x:100:40,St0);
St0:=StringReplace(St0,',','.',[rfIgnoreCase]);

St0:=DelAllSpaces(St0);
Delete(St,i-n_left,n_left+n_right+1);
k:=i-n_left;
Insert(St0,St,k);
END;//If i<>0 then//
If (St[1]='-') and (Pos('-',Copy(St,2,Length(St)))=0) then i:=0;
UNTIL (i=0)or(CheckNum(St));

If Pos('e'+#13,St)<>0
then St:=StringReplace(St,'e'+#13,'e-',[rfReplaceAll]);

EXCEPT
On EMathError do
begin
If flagCall then
ShowMessage('Ошибка операции с плавающей запятой');
flagMessage:=false;
Result:=true;Exit;
end
Else
begin
If flagCall then
ShowMessage('Непредвиденные ошибки в "Changing" !');
flagMessage:=false;
Result:=true;Exit;
end;//Else//
END;//TRY//
end;//Changing//

Function Kalcul(Var St:string;Var flagMessage:boolean;flagCall:boolean):boolean;
Var i,k,n0,Code:longint;
    StBufer,St0:string;
    x,sum:extended;
    flag:boolean;
begin
TRY
Result:=false;

If St='' then
begin
If (flagMessage=true) then
If flagCall then
ShowMessage('Обработка пустой строки невозможна');
flagMessage:=false;
Result:=true;Exit;
end;

If Changing (St,'*',flagMessage,flagCall) then
begin
If (flagMessage=true) then
If flagCall then
ShowMessage('Синтаксическая ошибка с операндом "*"');
flagMessage:=false;
Result:=true;Exit;
end;//If Changing (St,'*') then//

If Changing (St,'/',flagMessage,flagCall) then
begin
If (flagMessage=true) then
If flagCall then
ShowMessage('Синтаксическая ошибка с операндом "/"');
flagMessage:=false;
Result:=true;Exit;
end;//If Changing (St,'/') then//

If CheckNum(St) then begin Result:=false;Exit;end;

i:=Pos('--',St);
If i<>0 then
begin
St:=StringReplace(St,'--','+',[rfReplaceAll]);
end;//If St[i]<>0 then//

i:=Pos('+-',St);
If i<>0 then
begin
St:=StringReplace(St,'+-','-',[rfReplaceAll]);
end;//If St[i]<>0 then//

i:=Pos('-+',St);
If i<>0 then
begin
St:=StringReplace(St,'-+','-',[rfReplaceAll]);
end;//If St[i]<>0 then//

sum:=0;

If Pos('e+',St)<>0
then St:=StringReplace(St,'e+','e',[rfReplaceAll]);

If Pos('e-',St)<>0
then St:=StringReplace(St,'e-','e'+#13,[rfReplaceAll]);

k:=Pos('-',St);
i:=Pos('+',St);
While (k<>0) or (i<>0) do
begin
If flag=false then flag:=true;
k:=Pos('-',St);
i:=Pos('+',St);
If (k=0)and(i=0) then Break;
If (k=0) and (i<>0) then k:=i Else
If (i<k) and (i<>0) then k:=i;
n0:=0;
For i:=k+1 to length(St) do
If St[i] in ['0'..'9','.','e',#13] then
Inc(n0) Else Break;

If Pos('e-',St)<>0
then St:=StringReplace(St,'e'+#13,'e-',[rfReplaceAll]);

StBufer:=Copy(St,1,k+n0);
Delete(St,1,k+n0);

If Changing (StBufer,'+',flagMessage,flagCall) then
begin
If (flagMessage=true) then
If flagCall then
ShowMessage('Синтаксическая ошибка с операндом "+"');
flagMessage:=false;
Result:=true;Exit;
end;//If Changing (St,'+') then//

If Changing (StBufer,'-',flagMessage,flagCall) then
begin
If (flagMessage=true) then
If flagCall then
ShowMessage('Синтаксическая ошибка с операндом "-"');
flagMessage:=false;
Result:=true;Exit;
end;//If Changing (St,'-') then//

Val(StBufer,x,Code);
If Code<>0 then
begin
Result:=true;Exit;
end;
sum:=sum+x;
end;//While (k<>0) or (i<>0) do//

If flag=true then
begin
Str(sum:100:40,St0);
St0:=StringReplace(St0,',','.',[rfIgnoreCase]);
St:=St0+St;
end
Else If Not(CheckNum(St)) then
begin
If (flagMessage=true) then
If flagCall then
ShowMessage('Синтаксическая ошибка при обработке выражения');
flagMessage:=false;
Result:=true;Exit;
end;//Else If Not(CheckNum(St)) then//

St:=DelAllSpaces(St);
EXCEPT
On EMathError do
begin
If (flagMessage=true) then
If flagCall then
ShowMessage('Ошибка операции с плавающей запятой');
flagMessage:=false;
Result:=true;Exit;
end
Else
begin
If (flagMessage=true) then
If flagCall then
ShowMessage('Непредвиденные ошибки в "Kalcul" !');
flagMessage:=false;
Result:=true;Exit;
end;//Else//
END;//TRY//
end;//Kalcul//

Function Num_of_Char(St:string;E:char):longint;
Var i,k:integer;
BEGIN
k:=Length(St);
Result:=0;
For i:=1 to k do
If St[i]=E then Inc(Result);
END;//Num_of_Char//

Function Obrabotchik(Var St:string;Var flagMessage:boolean;flagCall:boolean):boolean;
Var StBufer,St0:string;
    k,i,n0:longint;
BEGIN
TRY
If CheckNum(St) then begin Result:=false;Exit; end;

Result:=false;

If St='' then
begin
If flagCall then
ShowMessage('Обработка пустой строки невозможна');
flagMessage:=false;
Result:=true;Exit;
end;

If Num_of_Char(St,'(')<>Num_of_Char(St,')') then
begin
If flagCall then
ShowMessage('Нарушен баланс скобок');
flagMessage:=false;
Result:=true;Exit;
end;//If Num_of_Char(St,'(')<>Num_of_Char(St,'(') then//

Repeat

St0:='';
For k:=Length(St) downto 1 do
St0:=St0+St[k];
i:=Pos('(',St0);

If i<>0 then
begin
i:=Length(St0)-i+1;
n0:=0;
For k:=i+1 to length(St) do
If (St[k]<>')') then Inc(n0) Else Break;

StBufer:=Copy(St,i+1,n0);
Delete(St,i,n0+2);

n0:=0;
Repeat
k:=Pos('()',St);
If k<>0 then
begin
Delete(St,k,2);Inc(n0);
end;
Until k=0;

If Kalcul(StBufer,flagMessage,flagCall) then
begin
If (flagMessage=true) then
If flagCall then
ShowMessage('Ошибка в процессе вычисления выражения');
Result:=true;Exit;
end;

Insert(StBufer,St,i-n0);

end;//If i<>0 then//

Until  i=0;

If Kalcul(St,flagMessage,flagCall) then
begin
If (flagMessage=true) then
If flagCall then
ShowMessage('Ошибка в процессе вычисления выражения');
Result:=true;Exit;
end;//If Kalcul(St) then//

EXCEPT
On EMathError do
begin
If (flagMessage=true) then
If flagCall then
ShowMessage('Ошибка операции с плавающей запятой');
flagMessage:=false;
Result:=true;Exit;
end
Else
begin
If (flagMessage=true) then
If flagCall then
ShowMessage('Непредвиденные ошибки в "Obrabotchik" !');
flagMessage:=false;
Result:=true;Exit;
end;//Else//
END;//TRY//

END;//Obrabotchik//

//Поиск позиции самой правой фун-ции и имени этой ф-ции
Function FuncPos(St:string;Var Func:string;flagCall:boolean):longint;
Var St0:string;
    i,j:integer;
    fv:tFile;
    FuncRec:TFuncRec;
begin

Assign(fv,'BaseofFunc.dat');
If Not FileExists('BaseofFunc.dat') then
begin
If flagCall then
ShowMessage('Не найден файл BaseofFunc.dat');
result:=0;Exit;
end;

St0:=St;
Result:=0;
For i:=0 to High(FuncMass) do
begin
Repeat
j:=Pos(FuncMass[i],St0);
If Result<j then begin Result:=j;Func:=FuncMass[i];end;
If j<>0 then
begin
Delete(St0,j,Length(FuncMass[i]));
Insert(NumChar('*',Length(FuncMass[i])),St0,j);
end;//If j<>0 then//
Until j=0;
end;//For i:=0 to High(FuncMass) do//

For i:=0 to High(FuncMass2) do
begin
Repeat
j:=Pos(FuncMass2[i],St0);
If Result<j then begin Result:=j;Func:=FuncMass2[i];end;
If j<>0 then
begin
Delete(St0,j,Length(FuncMass2[i]));
Insert(NumChar('*',Length(FuncMass2[i])),St0,j);
end;//If j<>0 then//
Until j=0;
end;//For i:=0 to High(FuncMass2) do//

Reset(fv);
While Not Eof(fv) do
begin
Read(fv,FuncRec);
Repeat
j:=Pos(FuncRec.FuncName,St0);
If Result<j then begin Result:=j;Func:=FuncRec.FuncName;end;
If j<>0 then
begin
Delete(St0,j,Length(FuncRec.FuncName));
Insert(NumChar('*',Length(FuncRec.FuncName)),St0,j);
end;//If j<>0 then//
Until j=0;
end;//While Not Eof(fv) do//
Close(fv);

end;//FuncPos//

Function ConvAngle(x:extended):extended;
begin
If MainForm.Rad.Checked then
Result:=x
Else If MainForm.Deg.Checked then
Result:=DegToRad(x)
Else If MainForm.Cycle.Checked then
Result:=CycleToRad(x)
Else If MainForm.Grad.Checked then
Result:=GradtoRad(x)
Else Result:=x;
end;//ConvAngle//

Function ArcConvAngle(x:extended):extended;
begin
If MainForm.Rad.Checked then
Result:=x
Else If MainForm.Deg.Checked then
Result:=RadToDeg(x)
Else If MainForm.Cycle.Checked then
Result:=RadToCycle(x)
Else If MainForm.Grad.Checked then
Result:=RadToGrad(x)
Else Result:=x;
end;//ArcConvAngle//

Procedure StartCalcul;
Var St:string;
    flagMessage,flagCall:boolean;
begin
St:=MainForm.Memo.Text;
flagCall:=true;
If (St='') or (Generate(St,flagMessage,flagCall)) then
If flagMessage then
begin
ShowMessage('Синтаксическая ошибка генерации строки');
Exit;
end;
MainForm.Memo.Text:=St;
MainForm.Memo.SelStart:=Length(MainForm.Memo.Text);
end;//StartCalcul//

Function WorkUnderFunc(Var StNameResult:string;FuncArgum:St_mass;Var flagMessage:boolean;flagCall:boolean):boolean;
Var St1,St2,St0,StCode:string;
    x,x1,x2:extended;
    Code:integer;
    fv:tFile;
    FuncRec:TFuncRec;
begin

Assign(fv,'BaseofFunc.dat');
If Not FileExists('BaseofFunc.dat') then
begin
If flagCall then
ShowMessage('Не найден файл BaseofFunc.dat');
result:=true;Exit;
end;

St1:='';
For Code:=0 to High(FuncMass) do
St1:=St1+FuncMass[Code]+' ';

St2:='';
For Code:=0 to High(FuncMass2) do
St2:=St2+FuncMass2[Code]+' ';

Result:=false;

If (Length(FuncArgum)>2) or (Length(FuncArgum)=0) then
begin
If flagMessage=true then
If flagCall then
ShowMessage('Несоответствие кол-ва аргументов функции');
flagMessage:=false;
Result:=true;Exit;
end;

If (Pos(StNameResult,St1)<>0) and (Length(FuncArgum)<>1) then
begin
If flagMessage=true then
If flagCall then
ShowMessage('Несоответствие кол-ва аргументов функции');
flagMessage:=false;
Result:=true;Exit;
end;

If (Pos(StNameResult,St1)=0) and (Pos(StNameResult,St2)>0) and (Length(FuncArgum)<>2) then
begin
If flagMessage=true then
If flagCall then
ShowMessage('Несоответствие кол-ва аргументов функции');
flagMessage:=false;
Result:=true;Exit;
end;

If Obrabotchik(FuncArgum[0],flagMessage,flagCall) then
begin
If flagMessage=true then
If flagCall then
ShowMessage('Ошибка обработки аргумента ф-ции');
flagMessage:=false;
Result:=true;Exit;
end;

Val(FuncArgum[0],x1,Code);
If Code<>0 then
begin
If flagMessage=true then
If flagCall then
ShowMessage('Синтаксическая ошибка обработки аргумента ф-ции');
flagMessage:=false;
Result:=true;Exit;
end;

If (Length(FuncArgum)=2) then
begin
If Obrabotchik(FuncArgum[1],flagMessage,flagCall) then
begin
If flagMessage=true then
If flagCall then
ShowMessage('Ошибка обработки второго аргумента ф-ции');
flagMessage:=false;
Result:=true;Exit;
end;
Val(FuncArgum[1],x2,Code);
If Code<>0 then
begin
If flagMessage=true then
If flagCall then
ShowMessage('Синтаксическая ошибка обработки аргумента ф-ции');
flagMessage:=false;
Result:=true;Exit;
end;

end;//If (Length(FuncArgum)=2) then//

TRY

If (Pos(StNameResult,St1)<>0) then
begin
If  StNameResult='arccosh' then x:=ArcCosH(x1);
If  StNameResult='arccos' then x:=ArcConvAngle(ArcCos(x1));
If StNameResult='arcsin' then x:=ArcConvAngle(Arcsin(x1));
If StNameResult='sin' then x:=sin(ConvAngle(x1));
If StNameResult='cos' then x:=cos(ConvAngle(x1));
If StNameResult='abs' then x:=abs(x1);
If StNameResult='arcctg' then x:=ArcConvAngle(arccot(x1));
If StNameResult='arctg' then x:=ArcConvAngle(arctan(x1));
If StNameResult='ctg' then x:=cot(ConvAngle(x1));
If StNameResult='tg' then x:=tan(ConvAngle(x1));
If StNameResult='exp' then x:=exp(x1);
If StNameResult='ln' then x:=ln(x1);
If StNameResult='arccoth' then x:=arccoth(x1);
If StNameResult='arccot' then x:=ArcConvAngle(arccot(x1));
If StNameResult='cot' then x:=cot(ConvAngle(x1));
If StNameResult='arccsch' then x:=arccsch(x1);
If StNameResult='arccsc' then x:=ArcConvAngle(arccsc(x1));
If StNameResult='csch' then x:=csch(x1);
If StNameResult='csc' then x:=csc(ConvAngle(x1));
If StNameResult='arcsech' then x:=arcsech(x1);
If StNameResult='arcsec' then x:=ArcConvAngle(arcsec(x1));
If StNameResult='sech' then x:=sech(x1);
If StNameResult='sec' then x:=sec(ConvAngle(x1));
If StNameResult='sign' then x:=sign(x1);
If StNameResult='cth' then x:=arccoth(x1);
If StNameResult='th' then x:=tanh(x1);
If StNameResult='sh' then x:=sinh(x1);
If StNameResult='ch' then x:=cosh(x1);
If StNameResult='radtodeg' then x:=RadToDeg(x1);
If StNameResult='radtocycle' then x:=RadToCycle(x1);
If StNameResult='radtograd' then x:=RadToGrad(x1);
If StNameResult='degtorad' then x:=DegToRad(x1);
If StNameResult='degtograd' then x:=DegToGrad(x1);
If StNameResult='degtocycle' then x:=DegToCycle(x1);
If StNameResult='gradtorad' then x:=GradToRad(x1);
If StNameResult='gradtodeg' then x:=GradToDeg(x1);
If StNameResult='gradtocycle' then x:=GradToCycle(x1);
If StNameResult='cycletorad' then x:=CycleToRad(x1);
If StNameResult='cycletodeg' then x:=CycleToDeg(x1);
If StNameResult='cycletograd' then x:=CycleToGrad(x1);
If StNameResult='arcconvangle' then x:=ArcConvAngle(x1);
If StNameResult='convangle' then x:=ConvAngle(x1);
If StNameResult='round' then x:=round(x1);
If StNameResult='sqrt' then x:=sqrt(x1);
If StNameResult='sqr' then x:=sqr(x1);

end;//If (Pos(StName,St1)<>0) then//

If (Pos(StNameResult,St2)<>0) then
begin
If (StNameResult='div')or(StNameResult='mod') then
begin
If (Int(x1)<>x1)or(Int(x2)<>x2) then
begin
If flagCall then
ShowMessage('Функции div и mod не могут содержать нецелые аргументы');
flagMessage:=false;
Exit;
end;//If (Int(x1)<>x1)or(Int(x2)<>x2) then//
end;//If (StNameResult='div')or(StNameResult='mod') then//
If StNameResult='div' then x:=round(int(x1)) div round(int(x2));
If StNameResult='mod' then x:=round(int(x1)) mod round(int(x2));
If StNameResult='log' then x:=logN(x1,x2);
If StNameResult='^' then x:=Power(x1,x2);
end;//If (Pos(StName,St2)<>0) then//

If (Pos(StNameResult,St1)=0) and (Pos(StNameResult,St2)=0) then
begin
Reset(fv);
While Not Eof(fv) do
begin
Read(fv,FuncRec);
If FuncRec.FuncName=StNameResult then
begin
St0:=FuncRec.FuncKod;
St0:=StringReplace(St0,'@',StringReplace(FloatToStr(x1),',','.',[rfIgnoreCase]),[rfReplaceAll]);
If FuncRec.flagTwoArg then
St0:=StringReplace(St0,'$',StringReplace(FloatToStr(x2),',','.',[rfIgnoreCase]),[rfReplaceAll]);
If Generate(St0,flagMessage,flagCall) then
begin
Result:=true;
If flagMessage=true then
If flagCall then
ShowMessage('Ошибка ф-ции пользователя');
flagMessage:=false;
Close(fv);Exit;
end;//If Generate(St1,flagMessage) then//
Val(St0,x,Code);
If Code<>0 then
begin
Result:=true;
If flagMessage=true then
If flagCall then
Application.MessageBox('Ошибка ф-ции пользователя','Error',MB_OK);
flagMessage:=false;
Exit;
end;//If Code<>0 then//
end;//If FuncRec.FuncName=StNameResult then//
end;//While Not Eof(fv) do//
Close(fv);
end;//If (Pos(StNameResult,St1)=0) and (Pos(StNameResult,St2)=0) then//
Str(x,StNameResult);
StNameResult:=StringReplace(StNameResult,',','.',[rfIgnoreCase]);
EXCEPT
Else
begin
Result:=true;
flagMessage:=false;
If flagCall then
Application.MessageBox('Произошла ошибка при обработке ф-ции','Error',MB_OK);
Exit;
end;
END;//TRY//
end;//WorkUnderFunc//

Function PravkaNum(Var St:string):boolean;
Var i:longint;
    flag,flagminus:boolean;
begin
Result:=false;
flagminus:=false;
If Not CheckNum(St) then begin Result:=true;Exit;end;
St:=AnsiLowerCase(DelAllSpaces(St));
If St[1]='+' then Delete(St,1,1);
If St[1]='-' then begin Delete(St,1,1);flagminus:=true;end;
i:=Length(St);
While i=Length(St) do
begin
flag:=false;
If St[i]='.' then
begin Delete(St,i,1);Dec(i);flag:=true;end;

If St[i]='0' then
If (Pos('.',St)>0)and(Pos('.',St)<i)and(Pos('e',St)=0) then
If i>2 then
begin Delete(St,i,1);Dec(i);flag:=true; end;

If Not flag then Dec(i);
end;//While i=Length(St) do//

flag:=true;
While flag do
begin
If (St[1]='0')and(St[2] in ['0'..'9']) then
Delete(St,1,1)
Else flag:=false;
end;//While flag do//
If flagminus then St:='-'+St;
If (St='-0') then St:='0';
end;//PravkaNum//

Procedure Pravka (var St:string);
Var St1,St2:string;
    i:longint;
    Amass:St_mass;
begin
If Not CheckNum(St) then Exit;
St:=AnsiLowerCase(DelAllSpaces(St));
i:=Pos('e',St);
If i=0 then begin PravkaNum(St);Exit;end;
ObrabotkaChar(St,'e',Amass);
If PravkaNum(Amass[0]) then Exit;
If PravkaNum(Amass[1]) then Exit;
If Amass[0]='0' then begin St:='0';Exit;end;
If Amass[1]='0' then begin St:=Amass[0];Exit;end;
St:=Amass[0]+'e'+Amass[1];
end;//Pravka//

Function Generate (Var St:string;Var flagMessage:boolean;flagCall:boolean):boolean;
Var i,j,k,m,NumSkobok:longint;
    StBuf,StName,StBufer:string;
    FuncArgum:St_mass;
begin
TRY
Result:=false;
flagMessage:=true;

If St='' then
begin
If (flagMessage=true) then
If flagCall then
ShowMessage('Обработка пустой строки невозможна');
flagMessage:=false;
Result:=true;Exit;
end;

StBuf:=DelAllSpaces(St);
StBuf:=AnsiLowerCase(StBuf);
Repeat
i:=FuncPos(Stbuf,StName,flagCall);

If i=0 then Break;

k:=Length(StName);

If StBuf[i+k]<>'(' then
begin
If (flagMessage=true) then
If flagCall then
ShowMessage('Не заданы аргументы фунции');
flagMessage:=false;
Result:=true;Exit;
end;

m:=Length(Stbuf);
NumSkobok:=0;
StBufer:='';
For j:=i+k to m do
begin
StBufer:=StBufer+Stbuf[j];
If Stbuf[j]='(' then Inc(NumSkobok);
If Stbuf[j]=')' then Dec(NumSkobok);
If NumSkobok=0 then Break;
end;//For j:=i+Length(StName) to Length(Stbuf) do//

If NumSkobok<>0 then
begin
If (flagMessage=true) then
If flagCall then
ShowMessage('Нарушен баланс скобок при задании ф-ции');
flagMessage:=false;
Result:=true;Exit;
end;//If NumSkobok<>0 then//
m:=Length(StName)+Length(Stbufer);
Delete(StBufer,1,1);
Delete(StBufer,Length(StBufer),1);
ObrabotkaChar(StBufer,',',FuncArgum);
StBufer:=StName;
If WorkUnderFunc(StBufer,FuncArgum,flagMessage,flagCall) then Exit;
Delete(Stbuf,i,m);
Insert(Stbufer,Stbuf,i);

Until i=0;

If Obrabotchik(Stbuf,flagMessage,flagCall) then
begin
If (flagMessage=true) then
If flagCall then
ShowMessage('Синтаксическая ошибка при обработке подфункционального выражения');
flagMessage:=false;
Result:=true;Exit;
end;

If Not(CheckNum(Stbuf)) then
begin
If (flagMessage=true) then
If flagCall then
ShowMessage('Синтаксическая ошибка в обработке подфункционального выражения');
flagMessage:=false;
Result:=true;Exit;
end;

Pravka(Stbuf);

St:=Stbuf;
EXCEPT
On EMathError do
begin
If (flagMessage=true) then
If flagCall then
ShowMessage('Ошибка операции с плавающей запятой');
flagMessage:=false;
Result:=true;Exit;
end
Else
begin
If (flagMessage=true) then
If flagCall then
ShowMessage('Непредвиденные ошибки в "Generate" !');
flagMessage:=false;
Result:=true;Exit;
end;//Else//
END;//TRY//
end;//Generate//

procedure TMainForm.BackcpaceClick(Sender: TObject);
Var St,StLeft,StRight,StBuf:string;
    i: LongInt;
begin
StBuf:='';
St:=MainForm.Memo.Text;
i:=MainForm.Memo.SelStart;
StLeft:=Copy(St,1,i);
StRight:=Copy(St,i+1+MainForm.Memo.SelLength,Length(St));
If MainForm.Memo.SelLength=0 then
begin Delete(StLeft,Length(StLeft),1);i:=i-1;end;
St:=StLeft+StBuf+StRight;
MainForm.Memo.Text:=St;
MainForm.Memo.SelStart:=i+Length(StBuf);
end;

procedure TMainForm.ClearEditClick(Sender: TObject);
begin
MainForm.Memo.Text:='';
end;

procedure TMainForm.Button_Press_ResultClick(Sender: TObject);
begin
StartCalcul;
end;

Procedure AddToCursor(StBuf:string);
Var St,StLeft,StRight:string;
    i: LongInt;
begin
St:=MainForm.Memo.Text;
i:=MainForm.Memo.SelStart;
StLeft:=Copy(St,1,i);
StRight:=Copy(St,i+1+MainForm.Memo.SelLength,Length(St));
St:=StLeft+StBuf+StRight;
MainForm.Memo.Text:=St;
MainForm.Memo.SelStart:=i+Length(StBuf);
end;//AddToCursor//

Procedure OnMassButton(Sender:TObject);
begin
AddToCursor((Sender as TSpeedButton).Caption);
end;//OnMassButton//

procedure TMainForm.Button_Press_piClick(Sender: TObject);
begin
AddToCursor('3.141592653589793');
end;

procedure TMainForm.Button_Press_eClick(Sender: TObject);
begin
AddToCursor('2.718281828459045');
end;

procedure TMainForm.FormCreate(Sender: TObject);
Var St:string;
    Code,i:longint;
    fv:file;
const St0='В директории файла запуска не существует файла BaseofFunc.dat ,'+#13#10+
'             необходимого для правильной работы программы.'+
#13#10+'                    Создать его в директории файла запуска?';
begin

St:=Application.ExeName;
If Pos('\',St)<>0 then
begin
For i:=Length(St) downto 1 do
If St[i]<>'\' then Delete(St,i,1)
Else Break;
end;//If Pos('\',St)<>0 then//
ChDir(St);
If Not FileExists(St+'BaseofFunc.dat') then
Code:=MessageBox(0,St0,'Уведомление',MB_YESNO);
If Code=IDYES then
begin
AssignFile(fv,St+'BaseofFunc.dat');
Rewrite(fv);CloseFile(fv);
end;//If Code=IDYES then//

SetLength(FuncMass,46);
FuncMass[0]:='arccosh';
FuncMass[1]:='arccos';
FuncMass[2]:='arcsin';
FuncMass[3]:='sin';
FuncMass[4]:='cos';
FuncMass[5]:='abs';
FuncMass[6]:='arcctg';
FuncMass[7]:='arctg';
FuncMass[8]:='ctg';
FuncMass[9]:='tg';
FuncMass[10]:='exp';
FuncMass[11]:='ln';
FuncMass[12]:='arccoth';
FuncMass[13]:='arccot';
FuncMass[14]:='cot';
FuncMass[15]:='arccsch';
FuncMass[16]:='arccsc';
FuncMass[17]:='csch';
FuncMass[18]:='csc';
FuncMass[19]:='arcsech';
FuncMass[20]:='arcsec';
FuncMass[21]:='sech';
FuncMass[22]:='sec';
FuncMass[23]:='tanh';
FuncMass[24]:='sign';
FuncMass[25]:='cth';
FuncMass[26]:='th';
FuncMass[27]:='sh';
FuncMass[28]:='ch';
FuncMass[29]:='gradtorad';
FuncMass[30]:='gradtodeg';
FuncMass[31]:='gradtocycle';
FuncMass[32]:='radtodeg';
FuncMass[33]:='radtocycle';
FuncMass[34]:='radtograd';
FuncMass[35]:='degtorad';
FuncMass[36]:='degtograd';
FuncMass[37]:='degtocycle';
FuncMass[38]:='cycletorad';
FuncMass[39]:='cycletodeg';
FuncMass[40]:='cycletograd';
FuncMass[41]:='arcconvangle';
FuncMass[42]:='convangle';
FuncMass[43]:='round';
FuncMass[44]:='sqrt';
FuncMass[45]:='sqr';

SetLength(FuncMass2,4);
FuncMass2[0]:='div';
FuncMass2[1]:='mod';
FuncMass2[2]:='log';
FuncMass2[3]:='^';
end;

procedure TMainForm.Button_Press_MemPlusClick(Sender: TObject);
begin
If CheckNum(MainForm.Memo.Text) then
begin
Memory:=MainForm.Memo.Text;
MainForm.Panel.Caption:='M';
end //If CheckNum(MainForm.Edit.Text) then//
Else ShowMessage('Запомнить можно только число');
end;

procedure TMainForm.Button_Press_MemClearClick(Sender: TObject);
begin
MainForm.Panel.Caption:='';
Memory:='';
end;

procedure TMainForm.Button_Press_MemResultClick(Sender: TObject);
begin
AddToCursor(Memory);
end;

procedure TMainForm.Button_Press_ChangeSignClick(Sender: TObject);
Var St:string;
begin
St:=MainForm.Memo.Text;
If CheckNum(St) then
begin
If St[1]='-' then
Delete(St,1,1)
Else St:='-'+St;
MainForm.Memo.Text:=St;
end //If CheckNum(St) then//
Else ShowMessage('Нельзя поменять знак нечисла');
MainForm.Memo.SelStart:=Length(MainForm.Memo.Text);
end;

procedure TMainForm.N5Click(Sender: TObject);
begin
Close;
end;

procedure TMainForm.N4Click(Sender: TObject);
begin
AddFuncDialog.Show;
end;

procedure TMainForm.N9Click(Sender: TObject);
Var i:longint;
begin
FormHelp.Memo.ReadOnly:=false;
FormHelp.Show;
FormHelp.Memo.Text:='' ;
FormHelp.Panel1.Caption:='Список стандартных функций:';
FormHelp.Memo.Text:=#13#10+'Одного аргумента :'+#13#10+#13#10;

For i:=0 to High(FuncMass) do
FormHelp.Memo.Text:=FormHelp.Memo.Text+FuncMass[i]+#13#10;

FormHelp.Memo.Text:=FormHelp.Memo.Text+#13#10+'Двух аргументов :'+#13#10+#13#10;

For i:=0 to High(FuncMass2) do
FormHelp.Memo.Text:=FormHelp.Memo.Text+FuncMass2[i]+#13#10;

FormHelp.Memo.ReadOnly:=true;
end;

procedure TMainForm.N10Click(Sender: TObject);
Var fv:tFile;
    FuncRec:TFuncRec;
    flag:boolean;
begin
FormHelp.Memo.Text:='';

AssignFile(fv,'BaseofFunc.dat');
If Not FileExists('BaseofFunc.dat') then
begin
ShowMessage('Не найден файл BaseofFunc.dat');
Exit;
end;

FormHelp.Memo.ReadOnly:=false;
FormHelp.Show;

FormHelp.Panel1.Caption:='Список функций пользователя :';

FormHelp.Memo.Text:=#13#10+'Одного аргумента :'+#13#10+#13#10;

flag:=false;
Reset(fv);
While Not Eof(fv) do
begin
Read(fv,FuncRec);
If Not FuncRec.flagTwoArg then
begin
If Not flag then flag:=true;
FormHelp.Memo.Text:=FormHelp.Memo.Text+FuncRec.FuncName+#13#10;
FormHelp.Memo.Text:=FormHelp.Memo.Text+'['+FuncRec.FuncKod+']'+#13#10+#13#10;
end;//If Not FuncRec.flagTwoArg then//
end;//While Not Eof(fv) do//
CloseFile(fv);

If Not flag then
FormHelp.Memo.Text:=FormHelp.Memo.Text+#13#10+'Не имеются'+#13#10+#13#10;

FormHelp.Memo.Text:=FormHelp.Memo.Text+#13#10+'Двух аргументов :'+#13#10+#13#10;

flag:=false;

Reset(fv);
While Not Eof(fv) do
begin
Read(fv,FuncRec);
If FuncRec.flagTwoArg then
begin
If Not flag then flag:=true;
FormHelp.Memo.Text:=FormHelp.Memo.Text+FuncRec.FuncName+#13#10;
FormHelp.Memo.Text:=FormHelp.Memo.Text+'['+FuncRec.FuncKod+']'+#13#10+#13#10;
end;//If Not FuncRec.flagTwoArg then//
end;//While Not Eof(fv) do//
CloseFile(fv);

If Not flag then
FormHelp.Memo.Text:=FormHelp.Memo.Text+#13#10+'Не имеются'+#13#10+#13#10;

FormHelp.Memo.ReadOnly:=true;
end;

procedure TMainForm.N15Click(Sender: TObject);
var St:string;
begin
St:=MainForm.Memo.Text;
Pravka(St);
MainForm.Memo.Text:=St;
MainForm.Memo.SelStart:=Length(MainForm.Memo.Text);
end;

procedure TMainForm.N17Click(Sender: TObject);
begin
Bufer:=MainForm.Memo.SelText;
end;

procedure TMainForm.N18Click(Sender: TObject);
begin
AddToCursor(Bufer);
end;

procedure TMainForm.N20Click(Sender: TObject);
begin
If MainForm.N20.Checked
then
begin
MainForm.N20.Checked:=false;
MainForm.PopupMenu1.AutoPopup:=false;
end
Else
begin
MainForm.N20.Checked:=true;
MainForm.PopupMenu1.AutoPopup:=true;
end;

end;

procedure TMainForm.N8Click(Sender: TObject);
begin
FormHelp.Memo.ReadOnly:=false;
FormHelp.Show;
FormHelp.Panel1.Caption:='Информация о программе :';
////////////////////////////////
FormHelp.Memo.Text:=#13#10+#13#10+'Программа разработана'+#13#10+
'Москвитиновым Григорием Владимировичем'+#13#10+
'Москва, МГТУ им. Н. Э. Баумана, март 2007 года'+#13#10+
'Спасибо за участие в тестировании!!!'+#13#10+
'www.Gluchishe'+#64+'mail.ru'+#13#10+#13#10+
'Version 1.01a';
FormHelp.Button1.Visible:=true;
FormHelp.Memo.ReadOnly:=true;
end;

procedure TMainForm.N11Click(Sender: TObject);
begin
FormHelp.Memo.ReadOnly:=false;
FormHelp.Show;
FormHelp.Panel1.Caption:='Синтаксис функций :';
////////////////////////////////
FormHelp.Memo.Text:=#13#10+'1) Для нормальной работы программы необходимо,чтобы '
+'в папке с файлом запуска существовал файл BaseofFunc.dat'+#13#10+#13#10+
'2) "+","-","*","/" - элементарные арифеметические функции от двух аргументов :'+#13#10+
'<аргумент 1> <имя функции> <аргумент 2> '+#13#10+#13#10+
'3) Стандартные и пользовательские функции :'+#13#10+#13#10+
'Функции одного аргумента :'+#13#10+
'<имя функции> ( <аргумент> )'+#13#10+#13#10+
'Функции двух аргументов :'+#13#10+
'<имя функции> ( <аргумент 1> , <аргумент 2> )'+#13#10+#13#10;
FormHelp.Memo.ReadOnly:=true;
end;

procedure TMainForm.Button_Press_logClick(Sender: TObject);
begin
OnMassButton((Sender as TSpeedButton));
end;

procedure TMainForm.FormActivate(Sender: TObject);
begin
MainForm.Memo.SetFocus;
end;

procedure TMainForm.MemoKeyPress(Sender: TObject; var Key: Char);
begin
If Key=#13 then begin Key:=#0;StartCalcul;end;
end;

procedure TMainForm.N3Click(Sender: TObject);
Var i,j:longint;
begin
i:=MainForm.Memo.SelStart;
j:=MainForm.Memo.SelLength;
MainForm.N3.Checked:=false;
MainForm.N12.Checked:=false;
MainForm.N13.Checked:=false;
(Sender as TMenuItem).Checked:=true;
If (Sender as TMenuItem).Caption='По левому краю' then
MainForm.Memo.Alignment:=taLeftJustify
Else If (Sender as TMenuItem).Caption='По правому краю' then
MainForm.Memo.Alignment:=taRightJustify
Else MainForm.Memo.Alignment:=taCenter;
MainForm.Memo.SelStart:=i;
MainForm.Memo.SelLength:=j;
end;

procedure TMainForm.N16Click(Sender: TObject);
begin
FormHelp.Memo.ReadOnly:=false;
FormHelp.Show;
FormHelp.Memo.Text:='' ;
FormHelp.Panel1.Caption:='Полезная информация :';
FormHelp.Memo.Text:=#13#10+
'1)При добавлении функции недопустимы имена ф-ций, '+
'которые бы содержались в именах уже существующих'+#13#10+#13#10+
'2)Операция умножения ( * ) приоритетнее,чем деление ( / ) '+#13#10+#13#10+
'3)Функции gradtorad,gradtodeg,gradtocycle,radtodeg,radtocycle,radtograd,degtorad,'+
'degtograd,degtocycle,cycletorad,cycletodeg,cycletograd предназначены для конвертации углов'+#13#10+#13#10+
'4)Аргумент Функции convangle считается представлен в той размерности углов,которая выбрана на панели представления углов (Rad,Deg,Cycle,Grad).Функция конвертирует угол-аргумент в радианы'+#13#10+#13#10+
'5)Аргумент Функции arcconvangle считается углом,представленным в радианах.Функция конвертирует угол-аргумент в то представление углов,которое выбрано на панели представления углов (Rad,Deg,Cycle,Grad).'+#13#10+#13#10+
'6)Поле ввода при обработке (после нажатия "=" или <Enter>)'+
'приводит содержимое к нижнему регистру, пробелы игнорируются и удаляются'+#13#10+#13#10+
'7)Разделяющий десятичный знак - точка (".") '+#13#10+#13#10+
'8)Запятая (",") - символ для разделения аргументов ф-ций (см.'+
'Справка\Вызов справки\Инф-ция о ф-циях\Синтаксис ф-ций)'+#13#10+#13#10+
'9)Символ "е" (кнопка "Е") - предназначен для ввода числа в экспоненциальной форме'+#13#10+#13#10+
'10)числа pi и e(основание натуральных логарифмов) округлены до 15-ти знаков после десятичной точки'+#13#10+#13#10+
'11)При включенном PopupMenu (Файл\PopupMenu поля ввода) активированно меню поля ввода, которое можно вызвать, кликнув правой кнопкой мыши на нём'+#13#10+#13#10+
'12)Пункты PopupMenu "Копировать" и "Вставить" используют буфер калькулятора'+#13#10+#13#10+
'13)Пункт PopupMenu "Корректировать" корректирует поле ввода, если там написано число'+
'(Убирает лишние нули, 0.0 -> 0 , <число>e0 -> <число> и т. п.)'+#13#10+#13#10+
'14)Вычисления в процессе обработки поля ввода совершаются с некторой погрешностью из-за ограниченной разрядной сетки (17 ячеек)';

FormHelp.Memo.ReadOnly:=true;
end;

procedure TMainForm.N14Click(Sender: TObject);
begin
MainForm.Memo.SelectAll;
end;

procedure TMainForm.N21Click(Sender: TObject);
begin
Form4.Show;
end;

end.//Program//
procedure TMainForm.N16Click(Sender: TObject);
begin

end;

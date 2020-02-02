unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TFormHelp = class(TForm)
    Panel1: TPanel;
    Memo: TMemo;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHelp: TFormHelp;

implementation

{$R *.dfm}

procedure TFormHelp.Button1Click(Sender: TObject);
begin
FormHelp.Close;
FormHelp.Memo.ReadOnly:=false;
FormHelp.Show;
FormHelp.Memo.Text:='' ;
FormHelp.Panel1.Caption:='Эволюция патчей:';
FormHelp.Memo.Text:=#13#10+'Version 1.01 :'+#13#10#13#10+
'1)Исправлен серьёзный семантический баг просчёта простых арифметических выражений'+#13#10#13#10+
'2)В PopupMenu добавлена опция выбора типа выравнивания содержимого поля ввода'+#13#10#13#10+
'3)Теперь при любом выравнивании можно редактировать текст'+#13#10#13#10+
'4)Теперь кнопка "MR" и пункт PopupMenu "Вставить" добавляют содержимое буфера '+
'калькулятора в поле ввода на место текущего положения курсора и '+
'перемещают курсор к концу вставленного'+#13#10+#13#10+
'5)Теперь при нажатии кнопок, добавляющих что-либо к содержимому поля ввода '+
'добавление происходит к текущему положению курсора'+#13#10#13#10+
'6)Исправлена кнопка Backspace, работает теперь так же, как '+
'и кнопка Backspace на клавиатуре'+#13#10#13#10+
'7)Теперь пункт PopupMenu "Копировать" копирует в буфер калькулятора '+
'выделенный текст поля ввода'+#13#10#13#10+
'8)Организован диалог создания файла BaseofFunc.dat в случае его несуществования'+
#13#10#13#10+'Version 1.01a :'+#13#10+#13#10+
'1)Расширена справка'+#13#10#13#10+
'2)Введены ограничения у функций div и mod на целочисленность аргументов'+#13#10
+'( раньше вещественные округлялись=) )'+#13#10#13#10#13#10+
'P.S.Программа может содержать ошибки и баги (в том числе и семантические)'+
#13#10+'В случае обнаружения сообщайте разработчику www.Gluchishe@mail.ru'+#13#10#13#10;
FormHelp.Memo.ReadOnly:=true;
end;

procedure TFormHelp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FormHelp.Button1.Visible:=false;
end;

end.

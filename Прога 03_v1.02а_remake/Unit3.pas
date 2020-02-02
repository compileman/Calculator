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
FormHelp.Panel1.Caption:='�������� ������:';
FormHelp.Memo.Text:=#13#10+'Version 1.01 :'+#13#10#13#10+
'1)��������� ��������� ������������� ��� �������� ������� �������������� ���������'+#13#10#13#10+
'2)� PopupMenu ��������� ����� ������ ���� ������������ ����������� ���� �����'+#13#10#13#10+
'3)������ ��� ����� ������������ ����� ������������� �����'+#13#10#13#10+
'4)������ ������ "MR" � ����� PopupMenu "��������" ��������� ���������� ������ '+
'������������ � ���� ����� �� ����� �������� ��������� ������� � '+
'���������� ������ � ����� ������������'+#13#10+#13#10+
'5)������ ��� ������� ������, ����������� ���-���� � ����������� ���� ����� '+
'���������� ���������� � �������� ��������� �������'+#13#10#13#10+
'6)���������� ������ Backspace, �������� ������ ��� ��, ��� '+
'� ������ Backspace �� ����������'+#13#10#13#10+
'7)������ ����� PopupMenu "����������" �������� � ����� ������������ '+
'���������� ����� ���� �����'+#13#10#13#10+
'8)����������� ������ �������� ����� BaseofFunc.dat � ������ ��� ���������������'+
#13#10#13#10+'Version 1.01a :'+#13#10+#13#10+
'1)��������� �������'+#13#10#13#10+
'2)������� ����������� � ������� div � mod �� ��������������� ����������'+#13#10
+'( ������ ������������ �����������=) )'+#13#10#13#10#13#10+
'P.S.��������� ����� ��������� ������ � ���� (� ��� ����� � �������������)'+
#13#10+'� ������ ����������� ��������� ������������ www.Gluchishe@mail.ru'+#13#10#13#10;
FormHelp.Memo.ReadOnly:=true;
end;

procedure TFormHelp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
FormHelp.Button1.Visible:=false;
end;

end.

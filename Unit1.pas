unit Unit1;
  //ֱ�Ӽ̳�һ�� TEdit��Ϊ�̳е� Edit ����һ���ӿڡ����ǣ��������µ�������������ԭ���� TEdit ���������
  //Ȼ�����谲װ�¼̳еĿؼ�����Ȼֱ����һ��ԭ���� TEdit �����ŵ� Form ��
  //Ȼ���� Use ���棬�������¼̳е����������Ԫ��ע��˳��һ��Ҫ�ŵ����
  //���������������У���� TEdit ���Ѿ����������ӵĽӿڡ�Ҳ����˵����ʵ�����µ��࣬�������ϵ��ࡣ
  //2020-2-5
interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.Controls.Presentation, FMX.StdCtrls, MyIntf, MyControl;    //MyControl һ��Ҫ���� FMX.Edit �ĺ��档

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;     //ֱ���Ϲ����Ŀؼ�����Ȼ���� TEdit������Ϊ�� MyControl ��Ԫ��������������ͬ���ֵ� TEdit���̳���ԭ���� TEdit Ϊ��������һ���ӿڣ��������ֱ�ӵ��õ�����ӿ��ˡ�
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
begin
  (Edit1 as IMyTest).Hello(Self);
end;

end.

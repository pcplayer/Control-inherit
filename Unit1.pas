unit Unit1;
  //直接继承一个 TEdit，为继承的 Edit 增加一个接口。但是，并不用新的类名，还是用原来的 TEdit 这个类名。
  //然后无需安装新继承的控件，仍然直接拖一个原来的 TEdit 过来放到 Form 上
  //然后在 Use 里面，最后放上新继承的类的声明单元，注意顺序，一定要放到最后
  //这样，当程序运行，这个 TEdit 就已经有了新增加的接口。也就是说它的实例是新的类，而不是老的类。
  //2020-2-5
interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.Controls.Presentation, FMX.StdCtrls, MyIntf, MyControl;    //MyControl 一定要放在 FMX.Edit 的后面。

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;     //直接拖过来的控件，虽然还是 TEdit，但因为在 MyControl 单元里重新声明了相同名字的 TEdit，继承了原来的 TEdit 为它增加了一个接口，程序就能直接调用到这个接口了。
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

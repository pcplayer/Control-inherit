unit MyControl;

interface

uses System.SysUtils, System.Types, System.Classes,
     FMX.Types, FMX.Controls, FMX.Edit,
     MyIntf;

type
  TEdit = class(FMX.Edit.TEdit, IMyTest)
  public
    procedure Hello(Sender: TObject);

  end;

implementation

{ TMyEdit }

procedure TEdit.Hello(Sender: TObject);
begin
  Self.Text := Self.Text + Sender.ClassName + ' - Hello';
end;

end.

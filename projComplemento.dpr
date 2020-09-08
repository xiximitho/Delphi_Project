program projComplemento;

uses
  FMX.Forms,
  uComplemento in 'uComplemento.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.

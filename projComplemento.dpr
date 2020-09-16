program projComplemento;

uses
  FMX.Forms,
  uComplemento in 'uComplemento.pas' {frmPrincipal},
  uDataModule in 'uDataModule.pas' {DataModule1: TDataModule},
  uFuncoes in 'uFuncoes.pas',
  uFrmMateriais in 'uFrmMateriais.pas' {frmMateriais};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfrmMateriais, frmMateriais);
  Application.Run;
end.

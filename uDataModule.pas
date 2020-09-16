unit uDataModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.FMXUI.Wait,
  Data.DB, FireDAC.Comp.Client, inifiles, uFuncoes, FMX.dialogs,
  FireDAC.Phys.PGDef, FireDAC.Phys.PG, FMX.forms, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDataModule1 = class(TDataModule)
    FDPhysPgDriverLink: TFDPhysPgDriverLink;
    FDConnection: TFDConnection;
    AppConnection: TFDConnection;
    Tbl_testeTable: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
var

dbIni :TIniFile;
leitura:string;
caminho:string;

begin

caminho:=ExtractFilePath(ParamStr(0));

//LEMBRAR DE SETAR OFF A CONNECTION NO DATA MODULE.
FDPhysPgDriverLink.VendorHome:=caminho; //dlls do postgres na pasta lib aiz do programa;
FDPhysPgDriverLink.VendorLib:='libpq.dll';

try
    with FDConnection do
      begin
        Params.Clear;
        Params.Values['DriverID']  := 'PG';
        Params.Values['Database'] := TFuncoes.LerIni('POSTGRES','Database');
        Params.Values['Server'] := TFuncoes.LerIni('POSTGRES','Server');
        Params.Values['Port'] := TFuncoes.LerIni('POSTGRES','Port');
        Params.Values['User_name'] := TFuncoes.LerIni('POSTGRES','User');
        Params.Values['Password'] := TFuncoes.LerIni('POSTGRES','Password');

        Connected := True;
      end;
  except
      ShowMessage('Ocorreu uma Falha na configuração no Banco, cheque os parametros do arquivo db_config.ini');
  end;
end;

end.


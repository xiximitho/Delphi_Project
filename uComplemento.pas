unit uComplemento;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.Ani, FMX.Layouts, FMX.Gestures,
  FMX.Objects, FMX.Effects, FMX.Controls.Presentation, FMX.StdCtrls,
  System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, FMX.Edit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmPrincipal = class(TForm)
    layoutMenu: TLayout;
    rectMenu: TRectangle;
    rectText: TRectangle;
    lblMenu1: TText;
    rectBarra: TRectangle;
    Rectangle1: TRectangle;
    Text1: TText;
    Rectangle2: TRectangle;
    Text2: TText;
    Rectangle3: TRectangle;
    Text3: TText;
    Rectangle4: TRectangle;
    Text4: TText;
    rectNomeApp: TRectangle;
    ShadowEffect1: TShadowEffect;
    txtPrincipal: TText;
    Text5: TText;
    Edit1: TEdit;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    Button1: TButton;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    BindSourceDB2: TBindSourceDB;
    procedure Rectangle4MouseEnter(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    FGestureOrigin: TPointF;
    FGestureInProgress: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}
{$R *.Windows.fmx MSWINDOWS}

uses uDataModule, uFuncoes, uFrmMateriais;

procedure TfrmPrincipal.Button1Click(Sender: TObject);
begin
try
  uDataModule.DataModule1.AppConnection.StartTransaction;
  FDQuery1.ParamByName('NOME').AsString:=Edit1.Text;
  FDQuery1.ExecSQL;
  ShowMessage(IntToStr(FDQuery1.RowsAffected));
  uDataModule.DataModule1.AppConnection.Commit;
except
    uDataModule.DataModule1.AppConnection.Rollback;
end;
// showmessage('');
end;

procedure TfrmPrincipal.Rectangle4MouseEnter(Sender: TObject);
begin
   rectBarra.AnimateFloat('Position.X', TRectangle(sender).Position.X, 0.5, TAnimationType.InOut, TInterpolationType.Cubic);
   rectBarra.AnimateFloat('Width', TRectangle(sender).Width, 0.5, TAnimationType.InOut, TInterpolationType.Cubic);
end;

end.

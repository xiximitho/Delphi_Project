unit uComplemento;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.Ani, FMX.Layouts, FMX.Gestures,
  FMX.Objects, FMX.Effects;

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
    Rectangle5: TRectangle;
    rectNomeApp: TRectangle;
    ShadowEffect1: TShadowEffect;
    txtPrincipal: TText;
    procedure rectTextClick(Sender: TObject);
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


procedure TfrmPrincipal.rectTextClick(Sender: TObject);
begin
   rectBarra.AnimateFloat('Position.X', TRectangle(sender).Position.X, 0.5, TAnimationType.InOut, TInterpolationType.Cubic);
   rectBarra.AnimateFloat('Width', TRectangle(sender).Width, 0.5, TAnimationType.InOut, TInterpolationType.Cubic);
end;


end.

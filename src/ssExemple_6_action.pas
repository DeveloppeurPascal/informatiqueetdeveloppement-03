unit ssExemple_6_action;
// Economiseurs d'écrans sous Windows 32 bits en Delphi 4
//
// (c) Patrick Prémartin 03/1999
// email: pprem@infonie.fr
// web: http://www.infonie.fr/pprem/

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls;

type
  Tfrm_Base = class(TForm)
    Timer1: TTimer;
    PaintBox1: TPaintBox;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Déclarations privées}
  protected
    procedure WMEraseBkgnd (var msg : TMessage); message WM_ERASEBKGND;
  public
    { Déclarations publiques}
  end;

var
  frm_Base: Tfrm_Base;

implementation

{$R *.DFM}

procedure Tfrm_Base.FormCreate(Sender: TObject);
begin
  BorderStyle := bsNone;
  WindowState := wsMaximized;
  Timer1.Interval := 5;
  Randomize;
end;

procedure Tfrm_Base.WMEraseBkgnd (var msg : TMessage);
begin
  msg.Result := 0;
end;

procedure Tfrm_Base.Timer1Timer(Sender: TObject);
var
   x, y : integer;
   r : TRect;
begin
  Timer1.Enabled := False;
  x := random (ClientWidth);
  y := random (ClientHeight);
  r.Left := (x div 10) * 10;
  r.Top := (y div 10) * 10;
  r.Right := r.Left + 9;
  r.Bottom := r.Top + 9;
  Canvas.Brush.Color := random ($ffffff);
  Canvas.FillRect (r);
  Timer1.Enabled := True;
end;

end.

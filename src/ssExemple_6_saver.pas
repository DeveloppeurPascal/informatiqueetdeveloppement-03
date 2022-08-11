unit ssExemple_6_saver;
// Economiseurs d'écrans sous Windows 32 bits en Delphi 4
//
// (c) Patrick Prémartin 03/1999
// email: pprem@infonie.fr
// web: http://www.infonie.fr/pprem/

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ssExemple_6_action, ExtCtrls;

type
  Tfrm_ScreenSaver = class(Tfrm_Base)
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Déclarations privées}
  protected
    DeplacementSouris : integer;
    procedure Fermeture_Application;
    procedure WMSysCommand (var msg : TWMSysCommand); message WM_SYSCOMMAND;
  public
    { Déclarations publiques}
  end;

var
  frm_ScreenSaver: Tfrm_ScreenSaver;

implementation

uses ssExemple_4_u;

{$R *.DFM}

procedure Tfrm_ScreenSaver.Fermeture_Application;
begin
  if (Verif_Mot_de_Passe (Handle))
  then
    close
  else
    DeplacementSouris := 5;
  {endif}
end;

procedure Tfrm_ScreenSaver.FormKeyPress(Sender: TObject; var Key: Char);
begin
  Fermeture_Application;
end;

procedure Tfrm_ScreenSaver.FormMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Fermeture_Application;
end;

procedure Tfrm_ScreenSaver.FormMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  Fermeture_Application;
end;

procedure Tfrm_ScreenSaver.FormMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  dec (DeplacementSouris);
  if (DeplacementSouris < 1)
  then
    Fermeture_Application;
  {endif}
end;

procedure Tfrm_ScreenSaver.FormCreate(Sender: TObject);
begin
  inherited;
  FormStyle := fsStayOntop;
  ShowCursor (False);
  DeplacementSouris := 5;
end;

procedure Tfrm_ScreenSaver.FormMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  Fermeture_Application;
end;

procedure Tfrm_ScreenSaver.FormMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Fermeture_Application;
end;

procedure Tfrm_ScreenSaver.FormMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Fermeture_Application;
end;

procedure Tfrm_ScreenSaver.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  ShowCursor (True);
end;

procedure Tfrm_ScreenSaver.WMSysCommand (var msg : TWMSysCommand);
begin
  if (msg.cmdType = SC_SCREENSAVE)
  then
    msg.Result := 1
  else
    inherited;
  {endif}
end;

end.

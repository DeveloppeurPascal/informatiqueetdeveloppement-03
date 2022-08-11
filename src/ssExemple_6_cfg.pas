unit ssExemple_6_cfg;
// Economiseurs d'écrans sous Windows 32 bits en Delphi 4
//
// (c) Patrick Prémartin 03/1999
// email: pprem@infonie.fr
// web: http://www.infonie.fr/pprem/

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  Tfrm_Config = class(TForm)
    Memo1: TMemo;
    Panel1: TPanel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Déclarations privées}
  protected
    procedure CreateParams (var Params : TCreateParams); override;
  public
    { Déclarations publiques}
  end;

var
  frm_Config: Tfrm_Config;
  Fenetre_Parente : hWnd;

implementation

{$R *.DFM}

procedure Tfrm_Config.CreateParams (var Params : TCreateParams);
begin
  inherited CreateParams (Params);
  if (Fenetre_Parente <> 0)
  then
    begin
      Params.WndParent := Fenetre_Parente;
      EnableWindow (Fenetre_Parente, false);
    end;
  {endif}
end;

procedure Tfrm_Config.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Fenetre_Parente <> 0)
  then
    begin
      EnableWindow (Fenetre_Parente, true);
      SetForegroundWindow (Fenetre_Parente);
    end;
  {endif}
end;

procedure Tfrm_Config.Button1Click(Sender: TObject);
begin
  Close;
end;

initialization
  Fenetre_Parente := GetForegroundWindow;
end.

unit ssExemple_6_preview;
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
  Tfrm_ScreenSaverPreview = class(Tfrm_Base)
    procedure FormCreate(Sender: TObject);
  private
    { Déclarations privées}
  public
    { Déclarations publiques}
  end;

var
  frm_ScreenSaverPreview: Tfrm_ScreenSaverPreview;

implementation

{$R *.DFM}

procedure Tfrm_ScreenSaverPreview.FormCreate(Sender: TObject);
begin
  inherited;
  Windows.SetParent (Handle, StrToInt (ParamStr (2)));
end;

end.

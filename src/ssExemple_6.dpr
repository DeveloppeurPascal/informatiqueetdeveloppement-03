program ssExemple_6;
// Economiseurs d'écrans sous Windows 32 bits en Delphi 4
//
// (c) Patrick Prémartin 03/1999
// email: pprem@infonie.fr
// web: http://www.infonie.fr/pprem/

uses
  ssExemple_2_u in 'ssExemple_2_u.pas',
  Forms,
  SysUtils,
  ssExemple_6_action in 'ssExemple_6_action.pas' {frm_Base},
  ssExemple_6_cfg in 'ssExemple_6_cfg.pas' {frm_Config},
  ssExemple_6_saver in 'ssExemple_6_saver.pas' {frm_ScreenSaver},
  ssExemple_6_preview in 'ssExemple_6_preview.pas' {frm_ScreenSaverPreview},
  ssExemple_4_u in 'ssExemple_4_u.pas';

{$E scr}

{$R *.RES}

var
   ch : String;

begin
  Application.Initialize;
  ch := Copy (UpperCase (ParamStr (1)), 2, 1);
  if (ch = 'P') then // Prévisualitation
    begin
      Application.CreateForm(Tfrm_ScreenSaverPreview, frm_ScreenSaverPreview);
      Application.Run;
    end
  else if (ch = 'A') then // Saisie du mot de passe
    Modifier_Mot_de_Passe
  else if (ch = 'S') then // Déclenchement de l'économiseur
    begin
      Application.CreateForm(Tfrm_ScreenSaver, frm_ScreenSaver);
      Application.Run;
    end
  else if (ch = 'C') then // Configuration de l'économiseur
    begin
      Application.CreateForm(Tfrm_Config, frm_Config);
      Application.Run;
    end
  else // Appel sans paramètre ("configurer" à partir de l'explorateur)
    begin
      Application.CreateForm(Tfrm_Config, frm_Config);
      Application.Run;
    end;
  {endif}
end.

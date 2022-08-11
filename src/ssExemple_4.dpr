program ssExemple_4;
// Economiseurs d'écrans sous Windows 32 bits en Delphi 4
//
// (c) Patrick Prémartin 03/1999
// email: pprem@infonie.fr
// web: http://www.infonie.fr/pprem/

uses
  Forms,
  SysUtils,
  ssExemple_4_ss in 'ssExemple_4_ss.pas' {Form3},
  ssExemple_4_u in 'ssExemple_4_u.pas';

{$E scr}

{$R *.RES}

begin
  if (copy (UpperCase (ParamStr (1)), 2, 1) = 'S')
  then
    begin
      Application.Initialize;
      Application.CreateForm(TForm3, Form3);
  Application.Run;
    end;
  {endif}
  if (copy (UpperCase (ParamStr (1)), 2, 1) = 'A')
  then
    Modifier_Mot_de_Passe;
  {endif}
end.

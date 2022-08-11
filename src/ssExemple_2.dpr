program ssExemple_2;
// Economiseurs d'écrans sous Windows 32 bits en Delphi 4
//
// (c) Patrick Prémartin 03/1999
// email: pprem@infonie.fr
// web: http://www.infonie.fr/pprem/

uses
  ssExemple_2_u in 'ssExemple_2_u.pas',
  Forms,
  SysUtils,
  ssExemple_2_ss in 'ssExemple_2_ss.pas' {Form1};

{$E scr}

{$R *.RES}

begin
  if ((ParamCount = 2) and (copy (UpperCase (ParamStr (1)), 2, 1) = 'P'))
  then
    begin
      Application.Initialize;
      Application.CreateForm(TForm1, Form1);
  Application.Run;
    end;
  {endif}
end.

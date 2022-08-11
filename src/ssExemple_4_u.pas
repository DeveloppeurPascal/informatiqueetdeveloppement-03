unit ssExemple_4_u;
// Economiseurs d'écrans sous Windows 32 bits en Delphi 4
//
// (c) Patrick Prémartin 03/1999
// email: pprem@infonie.fr
// web: http://www.infonie.fr/pprem/

interface

uses
    Windows;

procedure Modifier_Mot_de_Passe;

function Verif_Mot_de_Passe (Handle : hWnd) : boolean;

implementation

uses
    Registry, RegStr, SysUtils;

type
    TPwdChangePassword = procedure (RegKeyName: PChar; ParentWindows: hWnd;
                                   Reserved1, Reserved2 : Integer); stdcall;
    TVerifyScreenSavePwd = function (ParentWindow: hWnd) : Boolean; stdcall;

procedure Modifier_Mot_de_Passe;
var
   mpr : LongInt;
   PwdChangePassword : TPwdChangePassword;
begin
  ShowCursor (True);
  mpr := LoadLibrary ('mpr.dll');
  if (mpr = 0)
  then
    raise Exception.Create ('Library mpr.dll not found.');
  {endif}
  try
    PwdChangePassword := GetProcAddress (mpr, 'PwdChangePasswordA');
    if (@PwdChangePassword = nil)
    then
      raise Exception.Create ('Procedure PwdChangePasswordA not found in MPR.DLL');
    {endif}
    PwdChangePassword ('SCRSAVE', StrToInt (ParamStr (2)), 0, 0);
  finally
    FreeLibrary (mpr);
    ShowCursor (False);
  end;
end;

function Existence_Mot_de_Passe : boolean;
var
   Registry : TRegistry;
begin
  Result := False;
  Registry := TRegistry.Create;
  try
    if (Registry.OpenKey (REGSTR_PATH_SCREENSAVE, False))
    then
      try
        Result := registry.ReadBool (REGSTR_VALUE_USESCRPASSWORD);
      except
        Result := False;
      end;
    {endif}
  finally
    Registry.Free;
  end;
end;

function Verif_Mot_de_Passe (Handle : hWnd) : boolean;
var
   VerifyScreenSavePwd : TVerifyScreenSavePwd;
   password : LongInt;
begin
  Result := True;
  if (Existence_Mot_de_Passe)
  then
    begin
      ShowCursor (True);
      password := LoadLibrary ('password.cpl');
      if (password = 0)
      then
        raise Exception.Create ('Library password.cpl not found.');
      {endif}
      try
        VerifyScreenSavePwd := GetProcAddress (password, 'VerifyScreenSavePwd');
        if (@VerifyScreenSavePwd = nil)
        then
          raise Exception.Create ('Procedure VerifyScreenSavePwd not found in PASSWORD.CPL');
        {endif}
        Result := VerifyScreenSavePwd (Handle)
      finally
        FreeLibrary (Password);
        ShowCursor (False);
      end;
    end;
  {endif}
end;

end.

(*
 * ExeName method is added to TApplication.
 *
 * Made by HOSOKAWA Jun.
 *
 * CONTACT
 *   Twitter @pik or freeonterminate@gmail.com
 *
 * LAST UPDATE
 *   2015/12/15  First Release
 *
 * PLATFORM
 *   Windows, OS X, iOS, Android
 *   Delphi (XE8 <- maybe) 10 seattle
 *     Maybe, Appmethod and C++Builder
 *
 * ORIGINAL SOURCE
 *   https://gist.github.com/freeonterminate/2f7b2e29e40fa30ed3c4
 *
 * HOW TO USE
 *   1. uses FMX.ApplicationHelper;
 *   2, You want to Exe Path, call Application.ExeName !
 *)

unit FMX.ApplicationHelper;

interface

uses
  FMX.Forms;

type
  TApplicationHelper = class helper for TApplication
  public
    function ExeName: String;
  end;

implementation

{$IFDEF ANDROID}
uses
  System.SysUtils
  , Androidapi.Helpers
  ;
{$ENDIF}

{ TApplicationHelper }

function TApplicationHelper.ExeName: String;
begin
  Result := ParamStr(0);

  {$IFDEF ANDROID}
  if (Result.IsEmpty) then
    Result := JStringToString(TAndroidHelper.Context.getPackageCodePath);
  {$ENDIF}
end;

end.
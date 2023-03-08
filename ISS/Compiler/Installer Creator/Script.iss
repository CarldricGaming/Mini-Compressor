#define i 0

#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "Files", "OutputDir", "") != ""
#define OutputDir ReadIni(SourcePath	+ "\Temp\Setup.ini", "Files", "OutputDir", "")
#endif
#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "Files", "OutputExe", "") != ""
#define OutputExe ReadIni(SourcePath	+ "\Temp\Setup.ini", "Files", "OutputExe", "")
#endif
#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "Files", "Compression", "") != ""
#define Compression ReadIni(SourcePath	+ "\Temp\Setup.ini", "Files", "Compression", "")
#endif
#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "Files", "DiskSliceSize", "") != ""
#define DiskSliceSize ReadIni(SourcePath	+ "\Temp\Setup.ini", "Files", "DiskSliceSize", "")
#endif
#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "Files", "SlicesPerDisk", "") != ""
#define SlicesPerDisk ReadIni(SourcePath	+ "\Temp\Setup.ini", "Files", "SlicesPerDisk", "")
#endif
#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "Protection", "ExpiryDate", "") != ""
#define ExpiryDate ReadIni(SourcePath	+ "\Temp\Setup.ini", "Protection", "ExpiryDate", "")
#endif
#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "Protection", "Serial1", "") != ""
#define SerialCode ReadIni(SourcePath	+ "\Temp\Setup.ini", "Protection", "Serial1", "")
#endif
#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "Additional", "PrivilegesRequired", "") != ""
#define PrivilegesRequired ReadIni(SourcePath	+ "\Temp\Setup.ini", "Additional", "PrivilegesRequired", "")
#endif
#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "Additional", "ArchitecturesAllowed", "") != ""
#define ArchitecturesAllowed ReadIni(SourcePath	+ "\Temp\Setup.ini", "Additional", "ArchitecturesAllowed", "")
#endif
#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "Additional", "ArchitecturesAllowed64", "") != ""
#define ArchitecturesAllowed64 ReadIni(SourcePath	+ "\Temp\Setup.ini", "Additional", "ArchitecturesAllowed64", "")
#endif
#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "Additional", "PublisherURL", "") != ""
#define PublisherURL ReadIni(SourcePath	+ "\Temp\Setup.ini", "Additional", "PublisherURL", "")
#endif
#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "Additional", "SupportURL", "") != ""
#define SupportURL ReadIni(SourcePath	+ "\Temp\Setup.ini", "Additional", "SupportURL", "")
#endif
#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "Additional", "UpdatesURL", "") != ""
#define UpdatesURL ReadIni(SourcePath	+ "\Temp\Setup.ini", "Additional", "UpdatesURL", "")
#endif
#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "Additional", "Comments", "") != ""
#define Comments ReadIni(SourcePath	+ "\Temp\Setup.ini", "Additional", "Comments", "")
#endif
#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "Additional", "Phone", "") != ""
#define Phone ReadIni(SourcePath	+ "\Temp\Setup.ini", "Additional", "Phone", "")
#endif
#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "Additional", "Readmefile", "") != ""
#define Readmefile ReadIni(SourcePath	+ "\Temp\Setup.ini", "Additional", "Readmefile", "")
#endif
#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "Additional", "Company", "") != ""
#define Company ReadIni(SourcePath	+ "\Temp\Setup.ini", "Additional", "Company", "")
#endif
#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "Additional", "Description", "") != ""
#define Description ReadIni(SourcePath	+ "\Temp\Setup.ini", "Additional", "Description", "")
#endif
#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "Additional", "Copyright", "") != ""
#define Copyright ReadIni(SourcePath	+ "\Temp\Setup.ini", "Additional", "Copyright", "")
#endif
#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "Additional", "ProductName", "") != ""
#define ProductName ReadIni(SourcePath	+ "\Temp\Setup.ini", "Additional", "ProductName", "")
#endif
#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "Additional", "Version", "") != ""
#define Version ReadIni(SourcePath	+ "\Temp\Setup.ini", "Additional", "Version", "")
#endif
#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "Additional", "AppSize", "") != ""
#define AppSize ReadIni(SourcePath	+ "\Temp\Setup.ini", "Additional", "AppSize", "")
#endif
#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "Setup", "DefaultDirPath", "") != ""
#define DefaultDirPath ReadIni(SourcePath	+ "\Temp\Setup.ini", "Setup", "DefaultDirPath", "")
#endif
#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "Setup", "DefaultGroupPath", "") != ""
#define DefaultGroupPath ReadIni(SourcePath	+ "\Temp\Setup.ini", "Setup", "DefaultGroupPath", "")
#endif
#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "TaskSettings", "Task1Name", "") != ""
#define Task ReadIni(SourcePath	+ "\Temp\Setup.ini", "TaskSettings", "Task1Name", "")
#endif
#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "ComponentSettings", "Component1Name", "") != ""
#define Component ReadIni(SourcePath	+ "\Temp\Setup.ini", "ComponentSettings", "Component1Name", "")
#endif

#if ReadIni(SourcePath + "..\..\Resources\UnArc.ini","Config_UnArc","Protect","") != "0"
  #define UnArc_Protect
  #define UnArc_File2 ReadIni(SourcePath + "..\..\Resources\UnArc.ini","Files_Unarc","Protect","")
#else
  #define UnArc_None
  #define UnArc_File1 ReadIni(SourcePath + "..\..\Resources\UnArc.ini","Files_Unarc","None","")
#endif

[Setup]
AppId={code:ApplicationName}
AppName={code:ApplicationName}
AppPublisher={code:ApplicationPublisher}
AppVersion={code:ApplicationVersion}
DefaultDirName={#DefaultDirPath}
DefaultGroupName={#DefaultGroupPath}
#ifexist ".\Temp\Resources\Icon.ico"
UninstallDisplayIcon={uninstallexe}
#else
UninstallDisplayIcon=Uninst.ico
#endif
//UninstallDisplayIcon=Uninst.ico
UninstallFilesDir={app}\Uninstall
UsePreviousLanguage=no
DirExistsWarning=false
ShowLanguageDialog=yes
#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "Files", "DiskSpan", "1") == "1"
DiskSpanning=Yes
#else
DiskSpanning=No
#endif
Compression={#Compression}
DiskSliceSize={#DiskSliceSize}
SlicesPerDisk={#SlicesPerDisk}
SolidCompression=true
OutputDir={#OutputDir}
OutputBaseFileName={#OutputExe}
#ifexist ".\Icon.ico"
#ifexist ".\Temp\Resources\Icon.ico"
SetupIconFile=Temp\Resources\Icon.ico
#else
SetupIconFile=Icon.ico
#endif
#endif
#ifexist "Temp\Licenses\License.rtf"
LicenseFile=Temp\Licenses\License.rtf
#endif
#ifexist "Temp\Licenses\InfoBefore.rtf"
InfoBeforeFile=Temp\Licenses\InfoBefore.rtf
#endif
#ifexist "Temp\Licenses\InfoAfter.rtf"
InfoAfterFile=Temp\Licenses\InfoAfter.rtf
#endif
#ifdef PrivilegesRequired
PrivilegesRequired={#PrivilegesRequired}
#endif
#ifdef ArchitecturesAllowed
ArchitecturesAllowed={#ArchitecturesAllowed}
#endif
#ifdef ArchitecturesAllowed64
ArchitecturesInstallIn64BitMode={#ArchitecturesAllowed64}
#endif
#ifdef PublisherURL
AppPublisherURL={#PublisherURL}
#endif
#ifdef SupportURL
AppSupportURL={#SupportURL}
#endif
#ifdef UpdatesURL
AppUpdatesURL={#UpdatesURL}
#endif
#ifdef Comments
AppComments={#Comments}
#endif
#ifdef Phone
AppSupportPhone={#Phone}
#endif
#ifdef Readmefile
AppReadmeFile={#Readmefile}
#endif
#ifdef Company
VersionInfoCompany={#Company}
#endif
#ifdef Copyright
VersionInfoCopyright={#Copyright}
#endif
#ifdef Copyright
AppCopyright={#Copyright}
#endif
#ifdef ProductName
VersionInfoProductName={#ProductName}
#endif
#ifdef Version
VersionInfoProductTextVersion={#Version}
#endif
#ifdef Version
VersionInfoProductVersion={#Version}
#endif
#ifdef Version
VersionInfoTextVersion={#Version}
#endif
#ifdef Version
VersionInfoVersion={#Version}
#endif
#ifdef Description
VersionInfoDescription={#Description}
#endif
UninstallDisplayName={code:ApplicationName}
UninstallDisplaySize={#AppSize}

[Languages]
;English
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "English", "") == "1"
#ifnexist "Temp\Licenses\EnglishLicense.rtf"
#ifnexist "Temp\Licenses\EnglishInfoBefore.rtf"
#ifnexist "Temp\Licenses\EnglishInfoAfter.rtf"
Name: eng; MessagesFile: Include\Languages\English.isl;
#endif
#endif
#endif
#ifexist "Temp\Licenses\EnglishLicense.rtf"
#ifnexist "Temp\Licenses\EnglishInfoBefore.rtf"
#ifnexist "Temp\Licenses\EnglishInfoAfter.rtf"
Name: eng; MessagesFile: Include\Languages\English.isl; LicenseFile: Temp\Licenses\EnglishLicense.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\EnglishLicense.rtf"
#ifexist "Temp\Licenses\EnglishInfoBefore.rtf"
#ifnexist "Temp\Licenses\EnglishInfoAfter.rtf"
Name: eng; MessagesFile: Include\Languages\English.isl; InfoBeforeFile: Temp\Licenses\EnglishInfoBefore.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\EnglishLicense.rtf"
#ifnexist "Temp\Licenses\EnglishInfoBefore.rtf"
#ifexist "Temp\Licenses\EnglishInfoAfter.rtf"
Name: eng; MessagesFile: Include\Languages\English.isl; InfoAfterFile: Temp\Licenses\EnglishInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\EnglishLicense.rtf"
#ifexist "Temp\Licenses\EnglishInfoBefore.rtf"
#ifnexist "Temp\Licenses\EnglishInfoAfter.rtf"
Name: eng; MessagesFile: Include\Languages\English.isl; LicenseFile: Temp\Licenses\EnglishLicense.rtf; InfoBeforeFile: Temp\Licenses\EnglishInfoBefore.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\EnglishLicense.rtf"
#ifnexist "Temp\Licenses\EnglishInfoBefore.rtf"
#ifexist "Temp\Licenses\EnglishInfoAfter.rtf"
Name: eng; MessagesFile: Include\Languages\English.isl; LicenseFile: Temp\Licenses\EnglishLicense.rtf; InfoAfterFile: Temp\Licenses\EnglishInfoAfter.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\EnglishLicense.rtf"
#ifexist "Temp\Licenses\EnglishInfoBefore.rtf"
#ifexist "Temp\Licenses\EnglishInfoAfter.rtf"
Name: eng; MessagesFile: Include\Languages\English.isl; InfoBeforeFile: Temp\Licenses\EnglishInfoBefore.rtf; InfoAfterFile: Temp\Licenses\EnglishInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\EnglishLicense.rtf"
#ifexist "Temp\Licenses\EnglishInfoBefore.rtf"
#ifexist "Temp\Licenses\EnglishInfoAfter.rtf"
Name: eng; MessagesFile: Include\Languages\English.isl; LicenseFile: Temp\Licenses\EnglishLicense.rtf; InfoBeforeFile: Temp\Licenses\EnglishInfoBefore.rtf; InfoAfterFile: Temp\Licenses\EnglishInfoAfter.rtf;
#endif
#endif
#endif
#endif
;Albanian
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "Albanian", "") == "1"
#ifnexist "Temp\Licenses\AlbanianLicense.rtf"
#ifnexist "Temp\Licenses\AlbanianInfoBefore.rtf"
#ifnexist "Temp\Licenses\AlbanianInfoAfter.rtf"
Name: alb; MessagesFile: Include\Languages\Albanian.isl;
#endif
#endif
#endif
#ifexist "Temp\Licenses\AlbanianLicense.rtf"
#ifnexist "Temp\Licenses\AlbanianInfoBefore.rtf"
#ifnexist "Temp\Licenses\AlbanianInfoAfter.rtf"
Name: alb; MessagesFile: Include\Languages\Albanian.isl; LicenseFile: Temp\Licenses\AlbanianLicense.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\AlbanianLicense.rtf"
#ifexist "Temp\Licenses\AlbanianInfoBefore.rtf"
#ifnexist "Temp\Licenses\AlbanianInfoAfter.rtf"
Name: alb; MessagesFile: Include\Languages\Albanian.isl; InfoBeforeFile: Temp\Licenses\AlbanianInfoBefore.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\AlbanianLicense.rtf"
#ifnexist "Temp\Licenses\AlbanianInfoBefore.rtf"
#ifexist "Temp\Licenses\AlbanianInfoAfter.rtf"
Name: alb; MessagesFile: Include\Languages\Albanian.isl; InfoAfterFile: Temp\Licenses\AlbanianInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\AlbanianLicense.rtf"
#ifexist "Temp\Licenses\AlbanianInfoBefore.rtf"
#ifnexist "Temp\Licenses\AlbanianInfoAfter.rtf"
Name: alb; MessagesFile: Include\Languages\Albanian.isl; LicenseFile: Temp\Licenses\AlbanianLicense.rtf; InfoBeforeFile: Temp\Licenses\AlbanianInfoBefore.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\AlbanianLicense.rtf"
#ifnexist "Temp\Licenses\AlbanianInfoBefore.rtf"
#ifexist "Temp\Licenses\AlbanianInfoAfter.rtf"
Name: alb; MessagesFile: Include\Languages\Albanian.isl; LicenseFile: Temp\Licenses\AlbanianLicense.rtf; InfoAfterFile: Temp\Licenses\AlbanianInfoAfter.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\AlbanianLicense.rtf"
#ifexist "Temp\Licenses\AlbanianInfoBefore.rtf"
#ifexist "Temp\Licenses\AlbanianInfoAfter.rtf"
Name: alb; MessagesFile: Include\Languages\Albanian.isl; InfoBeforeFile: Temp\Licenses\AlbanianInfoBefore.rtf; InfoAfterFile: Temp\Licenses\AlbanianInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\AlbanianLicense.rtf"
#ifexist "Temp\Licenses\AlbanianInfoBefore.rtf"
#ifexist "Temp\Licenses\AlbanianInfoAfter.rtf"
Name: alb; MessagesFile: Include\Languages\Albanian.isl; LicenseFile: Temp\Licenses\AlbanianLicense.rtf; InfoBeforeFile: Temp\Licenses\AlbanianInfoBefore.rtf; InfoAfterFile: Temp\Licenses\AlbanianInfoAfter.rtf;
#endif
#endif
#endif
#endif
;Bosnian
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "Bosnian", "") == "1"
#ifnexist "Temp\Licenses\BosnianLicense.rtf"
#ifnexist "Temp\Licenses\BosnianInfoBefore.rtf"
#ifnexist "Temp\Licenses\BosnianInfoAfter.rtf"
Name: bos; MessagesFile: Include\Languages\Bosnian.isl;
#endif
#endif
#endif
#ifexist "Temp\Licenses\BosnianLicense.rtf"
#ifnexist "Temp\Licenses\BosnianInfoBefore.rtf"
#ifnexist "Temp\Licenses\BosnianInfoAfter.rtf"
Name: bos; MessagesFile: Include\Languages\Bosnian.isl; LicenseFile: Temp\Licenses\BosnianLicense.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\BosnianLicense.rtf"
#ifexist "Temp\Licenses\BosnianInfoBefore.rtf"
#ifnexist "Temp\Licenses\BosnianInfoAfter.rtf"
Name: bos; MessagesFile: Include\Languages\Bosnian.isl; InfoBeforeFile: Temp\Licenses\BosnianInfoBefore.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\BosnianLicense.rtf"
#ifnexist "Temp\Licenses\BosnianInfoBefore.rtf"
#ifexist "Temp\Licenses\BosnianInfoAfter.rtf"
Name: bos; MessagesFile: Include\Languages\Bosnian.isl; InfoAfterFile: Temp\Licenses\BosnianInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\BosnianLicense.rtf"
#ifexist "Temp\Licenses\BosnianInfoBefore.rtf"
#ifnexist "Temp\Licenses\BosnianInfoAfter.rtf"
Name: bos; MessagesFile: Include\Languages\Bosnian.isl; LicenseFile: Temp\Licenses\BosnianLicense.rtf; InfoBeforeFile: Temp\Licenses\BosnianInfoBefore.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\BosnianLicense.rtf"
#ifnexist "Temp\Licenses\BosnianInfoBefore.rtf"
#ifexist "Temp\Licenses\BosnianInfoAfter.rtf"
Name: bos; MessagesFile: Include\Languages\Bosnian.isl; LicenseFile: Temp\Licenses\BosnianLicense.rtf; InfoAfterFile: Temp\Licenses\BosnianInfoAfter.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\BosnianLicense.rtf"
#ifexist "Temp\Licenses\BosnianInfoBefore.rtf"
#ifexist "Temp\Licenses\BosnianInfoAfter.rtf"
Name: bos; MessagesFile: Include\Languages\Bosnian.isl; InfoBeforeFile: Temp\Licenses\BosnianInfoBefore.rtf; InfoAfterFile: Temp\Licenses\BosnianInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\BosnianLicense.rtf"
#ifexist "Temp\Licenses\BosnianInfoBefore.rtf"
#ifexist "Temp\Licenses\BosnianInfoAfter.rtf"
Name: bos; MessagesFile: Include\Languages\Bosnian.isl; LicenseFile: Temp\Licenses\BosnianLicense.rtf; InfoBeforeFile: Temp\Licenses\BosnianInfoBefore.rtf; InfoAfterFile: Temp\Licenses\BosnianInfoAfter.rtf;
#endif
#endif
#endif
#endif
;Czech
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "Czech", "") == "1"
#ifnexist "Temp\Licenses\CzechLicense.rtf"
#ifnexist "Temp\Licenses\CzechInfoBefore.rtf"
#ifnexist "Temp\Licenses\CzechInfoAfter.rtf"
Name: cze; MessagesFile: Include\Languages\Czech.isl;
#endif
#endif
#endif
#ifexist "Temp\Licenses\CzechLicense.rtf"
#ifnexist "Temp\Licenses\CzechInfoBefore.rtf"
#ifnexist "Temp\Licenses\CzechInfoAfter.rtf"
Name: cze; MessagesFile: Include\Languages\Czech.isl; LicenseFile: Temp\Licenses\CzechLicense.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\CzechLicense.rtf"
#ifexist "Temp\Licenses\CzechInfoBefore.rtf"
#ifnexist "Temp\Licenses\CzechInfoAfter.rtf"
Name: cze; MessagesFile: Include\Languages\Czech.isl; InfoBeforeFile: Temp\Licenses\CzechInfoBefore.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\CzechLicense.rtf"
#ifnexist "Temp\Licenses\CzechInfoBefore.rtf"
#ifexist "Temp\Licenses\CzechInfoAfter.rtf"
Name: cze; MessagesFile: Include\Languages\Czech.isl; InfoAfterFile: Temp\Licenses\CzechInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\CzechLicense.rtf"
#ifexist "Temp\Licenses\CzechInfoBefore.rtf"
#ifnexist "Temp\Licenses\CzechInfoAfter.rtf"
Name: cze; MessagesFile: Include\Languages\Czech.isl; LicenseFile: Temp\Licenses\CzechLicense.rtf; InfoBeforeFile: Temp\Licenses\CzechInfoBefore.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\CzechLicense.rtf"
#ifnexist "Temp\Licenses\CzechInfoBefore.rtf"
#ifexist "Temp\Licenses\CzechInfoAfter.rtf"
Name: cze; MessagesFile: Include\Languages\Czech.isl; LicenseFile: Temp\Licenses\CzechLicense.rtf; InfoAfterFile: Temp\Licenses\CzechInfoAfter.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\CzechLicense.rtf"
#ifexist "Temp\Licenses\CzechInfoBefore.rtf"
#ifexist "Temp\Licenses\CzechInfoAfter.rtf"
Name: cze; MessagesFile: Include\Languages\Czech.isl; InfoBeforeFile: Temp\Licenses\CzechInfoBefore.rtf; InfoAfterFile: Temp\Licenses\CzechInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\CzechLicense.rtf"
#ifexist "Temp\Licenses\CzechInfoBefore.rtf"
#ifexist "Temp\Licenses\CzechInfoAfter.rtf"
Name: cze; MessagesFile: Include\Languages\Czech.isl; LicenseFile: Temp\Licenses\CzechLicense.rtf; InfoBeforeFile: Temp\Licenses\CzechInfoBefore.rtf; InfoAfterFile: Temp\Licenses\CzechInfoAfter.rtf;
#endif
#endif
#endif
#endif
;French
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "French", "") == "1"
#ifnexist "Temp\Licenses\FrenchLicense.rtf"
#ifnexist "Temp\Licenses\FrenchInfoBefore.rtf"
#ifnexist "Temp\Licenses\FrenchInfoAfter.rtf"
Name: fre; MessagesFile: Include\Languages\French.isl;
#endif
#endif
#endif
#ifexist "Temp\Licenses\FrenchLicense.rtf"
#ifnexist "Temp\Licenses\FrenchInfoBefore.rtf"
#ifnexist "Temp\Licenses\FrenchInfoAfter.rtf"
Name: fre; MessagesFile: Include\Languages\French.isl; LicenseFile: Temp\Licenses\FrenchLicense.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\FrenchLicense.rtf"
#ifexist "Temp\Licenses\FrenchInfoBefore.rtf"
#ifnexist "Temp\Licenses\FrenchInfoAfter.rtf"
Name: fre; MessagesFile: Include\Languages\French.isl; InfoBeforeFile: Temp\Licenses\FrenchInfoBefore.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\FrenchLicense.rtf"
#ifnexist "Temp\Licenses\FrenchInfoBefore.rtf"
#ifexist "Temp\Licenses\FrenchInfoAfter.rtf"
Name: fre; MessagesFile: Include\Languages\French.isl; InfoAfterFile: Temp\Licenses\FrenchInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\FrenchLicense.rtf"
#ifexist "Temp\Licenses\FrenchInfoBefore.rtf"
#ifnexist "Temp\Licenses\FrenchInfoAfter.rtf"
Name: fre; MessagesFile: Include\Languages\French.isl; LicenseFile: Temp\Licenses\FrenchLicense.rtf; InfoBeforeFile: Temp\Licenses\FrenchInfoBefore.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\FrenchLicense.rtf"
#ifnexist "Temp\Licenses\FrenchInfoBefore.rtf"
#ifexist "Temp\Licenses\FrenchInfoAfter.rtf"
Name: fre; MessagesFile: Include\Languages\French.isl; LicenseFile: Temp\Licenses\FrenchLicense.rtf; InfoAfterFile: Temp\Licenses\FrenchInfoAfter.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\FrenchLicense.rtf"
#ifexist "Temp\Licenses\FrenchInfoBefore.rtf"
#ifexist "Temp\Licenses\FrenchInfoAfter.rtf"
Name: fre; MessagesFile: Include\Languages\French.isl; InfoBeforeFile: Temp\Licenses\FrenchInfoBefore.rtf; InfoAfterFile: Temp\Licenses\FrenchInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\FrenchLicense.rtf"
#ifexist "Temp\Licenses\FrenchInfoBefore.rtf"
#ifexist "Temp\Licenses\FrenchInfoAfter.rtf"
Name: fre; MessagesFile: Include\Languages\French.isl; LicenseFile: Temp\Licenses\FrenchLicense.rtf; InfoBeforeFile: Temp\Licenses\FrenchInfoBefore.rtf; InfoAfterFile: Temp\Licenses\FrenchInfoAfter.rtf;
#endif
#endif
#endif
#endif
;German
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "German", "") == "1"
#ifnexist "Temp\Licenses\GermanLicense.rtf"
#ifnexist "Temp\Licenses\GermanInfoBefore.rtf"
#ifnexist "Temp\Licenses\GermanInfoAfter.rtf"
Name: ger; MessagesFile: Include\Languages\German.isl;
#endif
#endif
#endif
#ifexist "Temp\Licenses\GermanLicense.rtf"
#ifnexist "Temp\Licenses\GermanInfoBefore.rtf"
#ifnexist "Temp\Licenses\GermanInfoAfter.rtf"
Name: ger; MessagesFile: Include\Languages\German.isl; LicenseFile: Temp\Licenses\GermanLicense.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\GermanLicense.rtf"
#ifexist "Temp\Licenses\GermanInfoBefore.rtf"
#ifnexist "Temp\Licenses\GermanInfoAfter.rtf"
Name: ger; MessagesFile: Include\Languages\German.isl; InfoBeforeFile: Temp\Licenses\GermanInfoBefore.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\GermanLicense.rtf"
#ifnexist "Temp\Licenses\GermanInfoBefore.rtf"
#ifexist "Temp\Licenses\GermanInfoAfter.rtf"
Name: ger; MessagesFile: Include\Languages\German.isl; InfoAfterFile: Temp\Licenses\GermanInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\GermanLicense.rtf"
#ifexist "Temp\Licenses\GermanInfoBefore.rtf"
#ifnexist "Temp\Licenses\GermanInfoAfter.rtf"
Name: ger; MessagesFile: Include\Languages\German.isl; LicenseFile: Temp\Licenses\GermanLicense.rtf; InfoBeforeFile: Temp\Licenses\GermanInfoBefore.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\GermanLicense.rtf"
#ifnexist "Temp\Licenses\GermanInfoBefore.rtf"
#ifexist "Temp\Licenses\GermanInfoAfter.rtf"
Name: ger; MessagesFile: Include\Languages\German.isl; LicenseFile: Temp\Licenses\GermanLicense.rtf; InfoAfterFile: Temp\Licenses\GermanInfoAfter.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\GermanLicense.rtf"
#ifexist "Temp\Licenses\GermanInfoBefore.rtf"
#ifexist "Temp\Licenses\GermanInfoAfter.rtf"
Name: ger; MessagesFile: Include\Languages\German.isl; InfoBeforeFile: Temp\Licenses\GermanInfoBefore.rtf; InfoAfterFile: Temp\Licenses\GermanInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\GermanLicense.rtf"
#ifexist "Temp\Licenses\GermanInfoBefore.rtf"
#ifexist "Temp\Licenses\GermanInfoAfter.rtf"
Name: ger; MessagesFile: Include\Languages\German.isl; LicenseFile: Temp\Licenses\GermanLicense.rtf; InfoBeforeFile: Temp\Licenses\GermanInfoBefore.rtf; InfoAfterFile: Temp\Licenses\GermanInfoAfter.rtf;
#endif
#endif
#endif
#endif
;Hungarian
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "Hungarian", "") == "1"
#ifnexist "Temp\Licenses\HungarianLicense.rtf"
#ifnexist "Temp\Licenses\HungarianInfoBefore.rtf"
#ifnexist "Temp\Licenses\HungarianInfoAfter.rtf"
Name: hun; MessagesFile: Include\Languages\Hungarian.isl;
#endif
#endif
#endif
#ifexist "Temp\Licenses\HungarianLicense.rtf"
#ifnexist "Temp\Licenses\HungarianInfoBefore.rtf"
#ifnexist "Temp\Licenses\HungarianInfoAfter.rtf"
Name: hun; MessagesFile: Include\Languages\Hungarian.isl; LicenseFile: Temp\Licenses\HungarianLicense.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\HungarianLicense.rtf"
#ifexist "Temp\Licenses\HungarianInfoBefore.rtf"
#ifnexist "Temp\Licenses\HungarianInfoAfter.rtf"
Name: hun; MessagesFile: Include\Languages\Hungarian.isl; InfoBeforeFile: Temp\Licenses\HungarianInfoBefore.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\HungarianLicense.rtf"
#ifnexist "Temp\Licenses\HungarianInfoBefore.rtf"
#ifexist "Temp\Licenses\HungarianInfoAfter.rtf"
Name: hun; MessagesFile: Include\Languages\Hungarian.isl; InfoAfterFile: Temp\Licenses\HungarianInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\HungarianLicense.rtf"
#ifexist "Temp\Licenses\HungarianInfoBefore.rtf"
#ifnexist "Temp\Licenses\HungarianInfoAfter.rtf"
Name: hun; MessagesFile: Include\Languages\Hungarian.isl; LicenseFile: Temp\Licenses\HungarianLicense.rtf; InfoBeforeFile: Temp\Licenses\HungarianInfoBefore.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\HungarianLicense.rtf"
#ifnexist "Temp\Licenses\HungarianInfoBefore.rtf"
#ifexist "Temp\Licenses\HungarianInfoAfter.rtf"
Name: hun; MessagesFile: Include\Languages\Hungarian.isl; LicenseFile: Temp\Licenses\HungarianLicense.rtf; InfoAfterFile: Temp\Licenses\HungarianInfoAfter.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\HungarianLicense.rtf"
#ifexist "Temp\Licenses\HungarianInfoBefore.rtf"
#ifexist "Temp\Licenses\HungarianInfoAfter.rtf"
Name: hun; MessagesFile: Include\Languages\Hungarian.isl; InfoBeforeFile: Temp\Licenses\HungarianInfoBefore.rtf; InfoAfterFile: Temp\Licenses\HungarianInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\HungarianLicense.rtf"
#ifexist "Temp\Licenses\HungarianInfoBefore.rtf"
#ifexist "Temp\Licenses\HungarianInfoAfter.rtf"
Name: hun; MessagesFile: Include\Languages\Hungarian.isl; LicenseFile: Temp\Licenses\HungarianLicense.rtf; InfoBeforeFile: Temp\Licenses\HungarianInfoBefore.rtf; InfoAfterFile: Temp\Licenses\HungarianInfoAfter.rtf;
#endif
#endif
#endif
#endif
;Italian
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "Italian", "") == "1"
#ifnexist "Temp\Licenses\ItalianLicense.rtf"
#ifnexist "Temp\Licenses\ItalianInfoBefore.rtf"
#ifnexist "Temp\Licenses\ItalianInfoAfter.rtf"
Name: ita; MessagesFile: Include\Languages\Italian.isl;
#endif
#endif
#endif
#ifexist "Temp\Licenses\ItalianLicense.rtf"
#ifnexist "Temp\Licenses\ItalianInfoBefore.rtf"
#ifnexist "Temp\Licenses\ItalianInfoAfter.rtf"
Name: ita; MessagesFile: Include\Languages\Italian.isl; LicenseFile: Temp\Licenses\ItalianLicense.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\ItalianLicense.rtf"
#ifexist "Temp\Licenses\ItalianInfoBefore.rtf"
#ifnexist "Temp\Licenses\ItalianInfoAfter.rtf"
Name: ita; MessagesFile: Include\Languages\Italian.isl; InfoBeforeFile: Temp\Licenses\ItalianInfoBefore.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\ItalianLicense.rtf"
#ifnexist "Temp\Licenses\ItalianInfoBefore.rtf"
#ifexist "Temp\Licenses\ItalianInfoAfter.rtf"
Name: ita; MessagesFile: Include\Languages\Italian.isl; InfoAfterFile: Temp\Licenses\ItalianInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\ItalianLicense.rtf"
#ifexist "Temp\Licenses\ItalianInfoBefore.rtf"
#ifnexist "Temp\Licenses\ItalianInfoAfter.rtf"
Name: ita; MessagesFile: Include\Languages\Italian.isl; LicenseFile: Temp\Licenses\ItalianLicense.rtf; InfoBeforeFile: Temp\Licenses\ItalianInfoBefore.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\ItalianLicense.rtf"
#ifnexist "Temp\Licenses\ItalianInfoBefore.rtf"
#ifexist "Temp\Licenses\ItalianInfoAfter.rtf"
Name: ita; MessagesFile: Include\Languages\Italian.isl; LicenseFile: Temp\Licenses\ItalianLicense.rtf; InfoAfterFile: Temp\Licenses\ItalianInfoAfter.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\ItalianLicense.rtf"
#ifexist "Temp\Licenses\ItalianInfoBefore.rtf"
#ifexist "Temp\Licenses\ItalianInfoAfter.rtf"
Name: ita; MessagesFile: Include\Languages\Italian.isl; InfoBeforeFile: Temp\Licenses\ItalianInfoBefore.rtf; InfoAfterFile: Temp\Licenses\ItalianInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\ItalianLicense.rtf"
#ifexist "Temp\Licenses\ItalianInfoBefore.rtf"
#ifexist "Temp\Licenses\ItalianInfoAfter.rtf"
Name: ita; MessagesFile: Include\Languages\Italian.isl; LicenseFile: Temp\Licenses\ItalianLicense.rtf; InfoBeforeFile: Temp\Licenses\ItalianInfoBefore.rtf; InfoAfterFile: Temp\Licenses\ItalianInfoAfter.rtf;
#endif
#endif
#endif
#endif
;Malaysian
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "Malaysian", "") == "1"
#ifnexist "Temp\Licenses\MalaysianLicense.rtf"
#ifnexist "Temp\Licenses\MalaysianInfoBefore.rtf"
#ifnexist "Temp\Licenses\MalaysianInfoAfter.rtf"
Name: mas; MessagesFile: Include\Languages\Malaysian.isl;
#endif
#endif
#endif
#ifexist "Temp\Licenses\MalaysianLicense.rtf"
#ifnexist "Temp\Licenses\MalaysianInfoBefore.rtf"
#ifnexist "Temp\Licenses\MalaysianInfoAfter.rtf"
Name: mas; MessagesFile: Include\Languages\Malaysian.isl; LicenseFile: Temp\Licenses\MalaysianLicense.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\MalaysianLicense.rtf"
#ifexist "Temp\Licenses\MalaysianInfoBefore.rtf"
#ifnexist "Temp\Licenses\MalaysianInfoAfter.rtf"
Name: mas; MessagesFile: Include\Languages\Malaysian.isl; InfoBeforeFile: Temp\Licenses\MalaysianInfoBefore.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\MalaysianLicense.rtf"
#ifnexist "Temp\Licenses\MalaysianInfoBefore.rtf"
#ifexist "Temp\Licenses\MalaysianInfoAfter.rtf"
Name: mas; MessagesFile: Include\Languages\Malaysian.isl; InfoAfterFile: Temp\Licenses\MalaysianInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\MalaysianLicense.rtf"
#ifexist "Temp\Licenses\MalaysianInfoBefore.rtf"
#ifnexist "Temp\Licenses\MalaysianInfoAfter.rtf"
Name: mas; MessagesFile: Include\Languages\Malaysian.isl; LicenseFile: Temp\Licenses\MalaysianLicense.rtf; InfoBeforeFile: Temp\Licenses\MalaysianInfoBefore.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\MalaysianLicense.rtf"
#ifnexist "Temp\Licenses\MalaysianInfoBefore.rtf"
#ifexist "Temp\Licenses\MalaysianInfoAfter.rtf"
Name: mas; MessagesFile: Include\Languages\Malaysian.isl; LicenseFile: Temp\Licenses\MalaysianLicense.rtf; InfoAfterFile: Temp\Licenses\MalaysianInfoAfter.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\MalaysianLicense.rtf"
#ifexist "Temp\Licenses\MalaysianInfoBefore.rtf"
#ifexist "Temp\Licenses\MalaysianInfoAfter.rtf"
Name: mas; MessagesFile: Include\Languages\Malaysian.isl; InfoBeforeFile: Temp\Licenses\MalaysianInfoBefore.rtf; InfoAfterFile: Temp\Licenses\MalaysianInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\MalaysianLicense.rtf"
#ifexist "Temp\Licenses\MalaysianInfoBefore.rtf"
#ifexist "Temp\Licenses\MalaysianInfoAfter.rtf"
Name: mas; MessagesFile: Include\Languages\Malaysian.isl; LicenseFile: Temp\Licenses\MalaysianLicense.rtf; InfoBeforeFile: Temp\Licenses\MalaysianInfoBefore.rtf; InfoAfterFile: Temp\Licenses\MalaysianInfoAfter.rtf;
#endif
#endif
#endif
#endif
;Polish
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "Polish", "") == "1"
#ifnexist "Temp\Licenses\PolishLicense.rtf"
#ifnexist "Temp\Licenses\PolishInfoBefore.rtf"
#ifnexist "Temp\Licenses\PolishInfoAfter.rtf"
Name: pol; MessagesFile: Include\Languages\Polish.isl;
#endif
#endif
#endif
#ifexist "Temp\Licenses\PolishLicense.rtf"
#ifnexist "Temp\Licenses\PolishInfoBefore.rtf"
#ifnexist "Temp\Licenses\PolishInfoAfter.rtf"
Name: pol; MessagesFile: Include\Languages\Polish.isl; LicenseFile: Temp\Licenses\PolishLicense.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\PolishLicense.rtf"
#ifexist "Temp\Licenses\PolishInfoBefore.rtf"
#ifnexist "Temp\Licenses\PolishInfoAfter.rtf"
Name: pol; MessagesFile: Include\Languages\Polish.isl; InfoBeforeFile: Temp\Licenses\PolishInfoBefore.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\PolishLicense.rtf"
#ifnexist "Temp\Licenses\PolishInfoBefore.rtf"
#ifexist "Temp\Licenses\PolishInfoAfter.rtf"
Name: pol; MessagesFile: Include\Languages\Polish.isl; InfoAfterFile: Temp\Licenses\PolishInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\PolishLicense.rtf"
#ifexist "Temp\Licenses\PolishInfoBefore.rtf"
#ifnexist "Temp\Licenses\PolishInfoAfter.rtf"
Name: pol; MessagesFile: Include\Languages\Polish.isl; LicenseFile: Temp\Licenses\PolishLicense.rtf; InfoBeforeFile: Temp\Licenses\PolishInfoBefore.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\PolishLicense.rtf"
#ifnexist "Temp\Licenses\PolishInfoBefore.rtf"
#ifexist "Temp\Licenses\PolishInfoAfter.rtf"
Name: pol; MessagesFile: Include\Languages\Polish.isl; LicenseFile: Temp\Licenses\PolishLicense.rtf; InfoAfterFile: Temp\Licenses\PolishInfoAfter.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\PolishLicense.rtf"
#ifexist "Temp\Licenses\PolishInfoBefore.rtf"
#ifexist "Temp\Licenses\PolishInfoAfter.rtf"
Name: pol; MessagesFile: Include\Languages\Polish.isl; InfoBeforeFile: Temp\Licenses\PolishInfoBefore.rtf; InfoAfterFile: Temp\Licenses\PolishInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\PolishLicense.rtf"
#ifexist "Temp\Licenses\PolishInfoBefore.rtf"
#ifexist "Temp\Licenses\PolishInfoAfter.rtf"
Name: pol; MessagesFile: Include\Languages\Polish.isl; LicenseFile: Temp\Licenses\PolishLicense.rtf; InfoBeforeFile: Temp\Licenses\PolishInfoBefore.rtf; InfoAfterFile: Temp\Licenses\PolishInfoAfter.rtf;
#endif
#endif
#endif
#endif
;Portuguese
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "Portuguese", "") == "1"
#ifnexist "Temp\Licenses\PortugueseLicense.rtf"
#ifnexist "Temp\Licenses\PortugueseInfoBefore.rtf"
#ifnexist "Temp\Licenses\PortugueseInfoAfter.rtf"
Name: por; MessagesFile: Include\Languages\Portuguese.isl;
#endif
#endif
#endif
#ifexist "Temp\Licenses\PortugueseLicense.rtf"
#ifnexist "Temp\Licenses\PortugueseInfoBefore.rtf"
#ifnexist "Temp\Licenses\PortugueseInfoAfter.rtf"
Name: por; MessagesFile: Include\Languages\Portuguese.isl; LicenseFile: Temp\Licenses\PortugueseLicense.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\PortugueseLicense.rtf"
#ifexist "Temp\Licenses\PortugueseInfoBefore.rtf"
#ifnexist "Temp\Licenses\PortugueseInfoAfter.rtf"
Name: por; MessagesFile: Include\Languages\Portuguese.isl; InfoBeforeFile: Temp\Licenses\PortugueseInfoBefore.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\PortugueseLicense.rtf"
#ifnexist "Temp\Licenses\PortugueseInfoBefore.rtf"
#ifexist "Temp\Licenses\PortugueseInfoAfter.rtf"
Name: por; MessagesFile: Include\Languages\Portuguese.isl; InfoAfterFile: Temp\Licenses\PortugueseInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\PortugueseLicense.rtf"
#ifexist "Temp\Licenses\PortugueseInfoBefore.rtf"
#ifnexist "Temp\Licenses\PortugueseInfoAfter.rtf"
Name: por; MessagesFile: Include\Languages\Portuguese.isl; LicenseFile: Temp\Licenses\PortugueseLicense.rtf; InfoBeforeFile: Temp\Licenses\PortugueseInfoBefore.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\PortugueseLicense.rtf"
#ifnexist "Temp\Licenses\PortugueseInfoBefore.rtf"
#ifexist "Temp\Licenses\PortugueseInfoAfter.rtf"
Name: por; MessagesFile: Include\Languages\Portuguese.isl; LicenseFile: Temp\Licenses\PortugueseLicense.rtf; InfoAfterFile: Temp\Licenses\PortugueseInfoAfter.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\PortugueseLicense.rtf"
#ifexist "Temp\Licenses\PortugueseInfoBefore.rtf"
#ifexist "Temp\Licenses\PortugueseInfoAfter.rtf"
Name: por; MessagesFile: Include\Languages\Portuguese.isl; InfoBeforeFile: Temp\Licenses\PortugueseInfoBefore.rtf; InfoAfterFile: Temp\Licenses\PortugueseInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\PortugueseLicense.rtf"
#ifexist "Temp\Licenses\PortugueseInfoBefore.rtf"
#ifexist "Temp\Licenses\PortugueseInfoAfter.rtf"
Name: por; MessagesFile: Include\Languages\Portuguese.isl; LicenseFile: Temp\Licenses\PortugueseLicense.rtf; InfoBeforeFile: Temp\Licenses\PortugueseInfoBefore.rtf; InfoAfterFile: Temp\Licenses\PortugueseInfoAfter.rtf;
#endif
#endif
#endif
#endif
;Russian
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "Russian", "") == "1"
#ifnexist "Temp\Licenses\RussianLicense.rtf"
#ifnexist "Temp\Licenses\RussianInfoBefore.rtf"
#ifnexist "Temp\Licenses\RussianInfoAfter.rtf"
Name: rus; MessagesFile: Include\Languages\Russian.isl;
#endif
#endif
#endif
#ifexist "Temp\Licenses\RussianLicense.rtf"
#ifnexist "Temp\Licenses\RussianInfoBefore.rtf"
#ifnexist "Temp\Licenses\RussianInfoAfter.rtf"
Name: rus; MessagesFile: Include\Languages\Russian.isl; LicenseFile: Temp\Licenses\RussianLicense.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\RussianLicense.rtf"
#ifexist "Temp\Licenses\RussianInfoBefore.rtf"
#ifnexist "Temp\Licenses\RussianInfoAfter.rtf"
Name: rus; MessagesFile: Include\Languages\Russian.isl; InfoBeforeFile: Temp\Licenses\RussianInfoBefore.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\RussianLicense.rtf"
#ifnexist "Temp\Licenses\RussianInfoBefore.rtf"
#ifexist "Temp\Licenses\RussianInfoAfter.rtf"
Name: rus; MessagesFile: Include\Languages\Russian.isl; InfoAfterFile: Temp\Licenses\RussianInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\RussianLicense.rtf"
#ifexist "Temp\Licenses\RussianInfoBefore.rtf"
#ifnexist "Temp\Licenses\RussianInfoAfter.rtf"
Name: rus; MessagesFile: Include\Languages\Russian.isl; LicenseFile: Temp\Licenses\RussianLicense.rtf; InfoBeforeFile: Temp\Licenses\RussianInfoBefore.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\RussianLicense.rtf"
#ifnexist "Temp\Licenses\RussianInfoBefore.rtf"
#ifexist "Temp\Licenses\RussianInfoAfter.rtf"
Name: rus; MessagesFile: Include\Languages\Russian.isl; LicenseFile: Temp\Licenses\RussianLicense.rtf; InfoAfterFile: Temp\Licenses\RussianInfoAfter.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\RussianLicense.rtf"
#ifexist "Temp\Licenses\RussianInfoBefore.rtf"
#ifexist "Temp\Licenses\RussianInfoAfter.rtf"
Name: rus; MessagesFile: Include\Languages\Russian.isl; InfoBeforeFile: Temp\Licenses\RussianInfoBefore.rtf; InfoAfterFile: Temp\Licenses\RussianInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\RussianLicense.rtf"
#ifexist "Temp\Licenses\RussianInfoBefore.rtf"
#ifexist "Temp\Licenses\RussianInfoAfter.rtf"
Name: rus; MessagesFile: Include\Languages\Russian.isl; LicenseFile: Temp\Licenses\RussianLicense.rtf; InfoBeforeFile: Temp\Licenses\RussianInfoBefore.rtf; InfoAfterFile: Temp\Licenses\RussianInfoAfter.rtf;
#endif
#endif
#endif
#endif
;Spanish
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "Spanish", "") == "1"
#ifnexist "Temp\Licenses\SpanishLicense.rtf"
#ifnexist "Temp\Licenses\SpanishInfoBefore.rtf"
#ifnexist "Temp\Licenses\SpanishInfoAfter.rtf"
Name: esp; MessagesFile: Include\Languages\Spanish.isl;
#endif
#endif
#endif
#ifexist "Temp\Licenses\SpanishLicense.rtf"
#ifnexist "Temp\Licenses\SpanishInfoBefore.rtf"
#ifnexist "Temp\Licenses\SpanishInfoAfter.rtf"
Name: esp; MessagesFile: Include\Languages\Spanish.isl; LicenseFile: Temp\Licenses\SpanishLicense.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\SpanishLicense.rtf"
#ifexist "Temp\Licenses\SpanishInfoBefore.rtf"
#ifnexist "Temp\Licenses\SpanishInfoAfter.rtf"
Name: esp; MessagesFile: Include\Languages\Spanish.isl; InfoBeforeFile: Temp\Licenses\SpanishInfoBefore.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\SpanishLicense.rtf"
#ifnexist "Temp\Licenses\SpanishInfoBefore.rtf"
#ifexist "Temp\Licenses\SpanishInfoAfter.rtf"
Name: esp; MessagesFile: Include\Languages\Spanish.isl; InfoAfterFile: Temp\Licenses\SpanishInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\SpanishLicense.rtf"
#ifexist "Temp\Licenses\SpanishInfoBefore.rtf"
#ifnexist "Temp\Licenses\SpanishInfoAfter.rtf"
Name: esp; MessagesFile: Include\Languages\Spanish.isl; LicenseFile: Temp\Licenses\SpanishLicense.rtf; InfoBeforeFile: Temp\Licenses\SpanishInfoBefore.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\SpanishLicense.rtf"
#ifnexist "Temp\Licenses\SpanishInfoBefore.rtf"
#ifexist "Temp\Licenses\SpanishInfoAfter.rtf"
Name: esp; MessagesFile: Include\Languages\Spanish.isl; LicenseFile: Temp\Licenses\SpanishLicense.rtf; InfoAfterFile: Temp\Licenses\SpanishInfoAfter.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\SpanishLicense.rtf"
#ifexist "Temp\Licenses\SpanishInfoBefore.rtf"
#ifexist "Temp\Licenses\SpanishInfoAfter.rtf"
Name: esp; MessagesFile: Include\Languages\Spanish.isl; InfoBeforeFile: Temp\Licenses\SpanishInfoBefore.rtf; InfoAfterFile: Temp\Licenses\SpanishInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\SpanishLicense.rtf"
#ifexist "Temp\Licenses\SpanishInfoBefore.rtf"
#ifexist "Temp\Licenses\SpanishInfoAfter.rtf"
Name: esp; MessagesFile: Include\Languages\Spanish.isl; LicenseFile: Temp\Licenses\SpanishLicense.rtf; InfoBeforeFile: Temp\Licenses\SpanishInfoBefore.rtf; InfoAfterFile: Temp\Licenses\SpanishInfoAfter.rtf;
#endif
#endif
#endif
#endif
;Turkish
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "Turkish", "") == "1"
#ifnexist "Temp\Licenses\TurkishLicense.rtf"
#ifnexist "Temp\Licenses\TurkishInfoBefore.rtf"
#ifnexist "Temp\Licenses\TurkishInfoAfter.rtf"
Name: tur; MessagesFile: Include\Languages\Turkish.isl;
#endif
#endif
#endif
#ifexist "Temp\Licenses\TurkishLicense.rtf"
#ifnexist "Temp\Licenses\TurkishInfoBefore.rtf"
#ifnexist "Temp\Licenses\TurkishInfoAfter.rtf"
Name: tur; MessagesFile: Include\Languages\Turkish.isl; LicenseFile: Temp\Licenses\TurkishLicense.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\TurkishLicense.rtf"
#ifexist "Temp\Licenses\TurkishInfoBefore.rtf"
#ifnexist "Temp\Licenses\TurkishInfoAfter.rtf"
Name: tur; MessagesFile: Include\Languages\Turkish.isl; InfoBeforeFile: Temp\Licenses\TurkishInfoBefore.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\TurkishLicense.rtf"
#ifnexist "Temp\Licenses\TurkishInfoBefore.rtf"
#ifexist "Temp\Licenses\TurkishInfoAfter.rtf"
Name: tur; MessagesFile: Include\Languages\Turkish.isl; InfoAfterFile: Temp\Licenses\TurkishInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\TurkishLicense.rtf"
#ifexist "Temp\Licenses\TurkishInfoBefore.rtf"
#ifnexist "Temp\Licenses\TurkishInfoAfter.rtf"
Name: tur; MessagesFile: Include\Languages\Turkish.isl; LicenseFile: Temp\Licenses\TurkishLicense.rtf; InfoBeforeFile: Temp\Licenses\TurkishInfoBefore.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\TurkishLicense.rtf"
#ifnexist "Temp\Licenses\TurkishInfoBefore.rtf"
#ifexist "Temp\Licenses\TurkishInfoAfter.rtf"
Name: tur; MessagesFile: Include\Languages\Turkish.isl; LicenseFile: Temp\Licenses\TurkishLicense.rtf; InfoAfterFile: Temp\Licenses\TurkishInfoAfter.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\TurkishLicense.rtf"
#ifexist "Temp\Licenses\TurkishInfoBefore.rtf"
#ifexist "Temp\Licenses\TurkishInfoAfter.rtf"
Name: tur; MessagesFile: Include\Languages\Turkish.isl; InfoBeforeFile: Temp\Licenses\TurkishInfoBefore.rtf; InfoAfterFile: Temp\Licenses\TurkishInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\TurkishLicense.rtf"
#ifexist "Temp\Licenses\TurkishInfoBefore.rtf"
#ifexist "Temp\Licenses\TurkishInfoAfter.rtf"
Name: tur; MessagesFile: Include\Languages\Turkish.isl; LicenseFile: Temp\Licenses\TurkishLicense.rtf; InfoBeforeFile: Temp\Licenses\TurkishInfoBefore.rtf; InfoAfterFile: Temp\Licenses\TurkishInfoAfter.rtf;
#endif
#endif
#endif
#endif
;Ukrainian
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "Ukrainian", "") == "1"
#ifnexist "Temp\Licenses\UkrainianLicense.rtf"
#ifnexist "Temp\Licenses\UkrainianInfoBefore.rtf"
#ifnexist "Temp\Licenses\UkrainianInfoAfter.rtf"
Name: ukr; MessagesFile: Include\Languages\Ukrainian.isl;
#endif
#endif
#endif
#ifexist "Temp\Licenses\UkrainianLicense.rtf"
#ifnexist "Temp\Licenses\UkrainianInfoBefore.rtf"
#ifnexist "Temp\Licenses\UkrainianInfoAfter.rtf"
Name: ukr; MessagesFile: Include\Languages\Ukrainian.isl; LicenseFile: Temp\Licenses\UkrainianLicense.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\UkrainianLicense.rtf"
#ifexist "Temp\Licenses\UkrainianInfoBefore.rtf"
#ifnexist "Temp\Licenses\UkrainianInfoAfter.rtf"
Name: ukr; MessagesFile: Include\Languages\Ukrainian.isl; InfoBeforeFile: Temp\Licenses\UkrainianInfoBefore.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\UkrainianLicense.rtf"
#ifnexist "Temp\Licenses\UkrainianInfoBefore.rtf"
#ifexist "Temp\Licenses\UkrainianInfoAfter.rtf"
Name: ukr; MessagesFile: Include\Languages\Ukrainian.isl; InfoAfterFile: Temp\Licenses\UkrainianInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\UkrainianLicense.rtf"
#ifexist "Temp\Licenses\UkrainianInfoBefore.rtf"
#ifnexist "Temp\Licenses\UkrainianInfoAfter.rtf"
Name: ukr; MessagesFile: Include\Languages\Ukrainian.isl; LicenseFile: Temp\Licenses\UkrainianLicense.rtf; InfoBeforeFile: Temp\Licenses\UkrainianInfoBefore.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\UkrainianLicense.rtf"
#ifnexist "Temp\Licenses\UkrainianInfoBefore.rtf"
#ifexist "Temp\Licenses\UkrainianInfoAfter.rtf"
Name: ukr; MessagesFile: Include\Languages\Ukrainian.isl; LicenseFile: Temp\Licenses\UkrainianLicense.rtf; InfoAfterFile: Temp\Licenses\UkrainianInfoAfter.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\UkrainianLicense.rtf"
#ifexist "Temp\Licenses\UkrainianInfoBefore.rtf"
#ifexist "Temp\Licenses\UkrainianInfoAfter.rtf"
Name: ukr; MessagesFile: Include\Languages\Ukrainian.isl; InfoBeforeFile: Temp\Licenses\UkrainianInfoBefore.rtf; InfoAfterFile: Temp\Licenses\UkrainianInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\UkrainianLicense.rtf"
#ifexist "Temp\Licenses\UkrainianInfoBefore.rtf"
#ifexist "Temp\Licenses\UkrainianInfoAfter.rtf"
Name: ukr; MessagesFile: Include\Languages\Ukrainian.isl; LicenseFile: Temp\Licenses\UkrainianLicense.rtf; InfoBeforeFile: Temp\Licenses\UkrainianInfoBefore.rtf; InfoAfterFile: Temp\Licenses\UkrainianInfoAfter.rtf;
#endif
#endif
#endif
#endif
;Vietnamese
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "Vietnamese", "") == "1"
#ifnexist "Temp\Licenses\VietnameseLicense.rtf"
#ifnexist "Temp\Licenses\VietnameseInfoBefore.rtf"
#ifnexist "Temp\Licenses\VietnameseInfoAfter.rtf"
Name: vit; MessagesFile: Include\Languages\Vietnamese.isl;
#endif
#endif
#endif
#ifexist "Temp\Licenses\VietnameseLicense.rtf"
#ifnexist "Temp\Licenses\VietnameseInfoBefore.rtf"
#ifnexist "Temp\Licenses\VietnameseInfoAfter.rtf"
Name: vit; MessagesFile: Include\Languages\Vietnamese.isl; LicenseFile: Temp\Licenses\VietnameseLicense.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\VietnameseLicense.rtf"
#ifexist "Temp\Licenses\VietnameseInfoBefore.rtf"
#ifnexist "Temp\Licenses\VietnameseInfoAfter.rtf"
Name: vit; MessagesFile: Include\Languages\Vietnamese.isl; InfoBeforeFile: Temp\Licenses\VietnameseInfoBefore.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\VietnameseLicense.rtf"
#ifnexist "Temp\Licenses\VietnameseInfoBefore.rtf"
#ifexist "Temp\Licenses\VietnameseInfoAfter.rtf"
Name: vit; MessagesFile: Include\Languages\Vietnamese.isl; InfoAfterFile: Temp\Licenses\VietnameseInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\VietnameseLicense.rtf"
#ifexist "Temp\Licenses\VietnameseInfoBefore.rtf"
#ifnexist "Temp\Licenses\VietnameseInfoAfter.rtf"
Name: vit; MessagesFile: Include\Languages\Vietnamese.isl; LicenseFile: Temp\Licenses\VietnameseLicense.rtf; InfoBeforeFile: Temp\Licenses\VietnameseInfoBefore.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\VietnameseLicense.rtf"
#ifnexist "Temp\Licenses\VietnameseInfoBefore.rtf"
#ifexist "Temp\Licenses\VietnameseInfoAfter.rtf"
Name: vit; MessagesFile: Include\Languages\Vietnamese.isl; LicenseFile: Temp\Licenses\VietnameseLicense.rtf; InfoAfterFile: Temp\Licenses\VietnameseInfoAfter.rtf;
#endif
#endif
#endif
#ifnexist "Temp\Licenses\VietnameseLicense.rtf"
#ifexist "Temp\Licenses\VietnameseInfoBefore.rtf"
#ifexist "Temp\Licenses\VietnameseInfoAfter.rtf"
Name: vit; MessagesFile: Include\Languages\Vietnamese.isl; InfoBeforeFile: Temp\Licenses\VietnameseInfoBefore.rtf; InfoAfterFile: Temp\Licenses\VietnameseInfoAfter.rtf;
#endif
#endif
#endif
#ifexist "Temp\Licenses\VietnameseLicense.rtf"
#ifexist "Temp\Licenses\VietnameseInfoBefore.rtf"
#ifexist "Temp\Licenses\VietnameseInfoAfter.rtf"
Name: vit; MessagesFile: Include\Languages\Vietnamese.isl; LicenseFile: Temp\Licenses\VietnameseLicense.rtf; InfoBeforeFile: Temp\Licenses\VietnameseInfoBefore.rtf; InfoAfterFile: Temp\Licenses\VietnameseInfoAfter.rtf;
#endif
#endif
#endif
#endif

[Files]
#Include "Include\Unicode.dll"
#ifdef UnArc_Protect
  Source: "..\..\{#UnArc_File2}"; DestDir: "{tmp}"; Flags: dontcopy
#endif
#ifdef UnArc_None
  Source: "..\..\{#UnArc_File1}"; DestDir: "{tmp}"; Flags: dontcopy
#endif
Source: "..\..\Resources\uha.exe"; DestDir: "{tmp}"; Flags: dontcopy
Source: Include\english.ini; DestDir: "{tmp}"; Flags: dontcopy
Source: Include\bass.dll; DestDir: {tmp}; Flags: dontcopy
Source: Include\botva2.dll; DestDir: {tmp}; Flags: dontcopy
Source: Include\CallbackCtrl.dll; DestDir: {tmp}; Flags: dontcopy
Source: Include\cpudesc.dll; DestDir: {tmp}; Flags: dontcopy
Source: Include\DXTest.dll; Flags: dontcopy
Source: Include\FirewallInstallHelper.dll; DestDir: {tmp}; Flags: dontcopy
Source: Include\GameuxInstallHelper.dll; DestDir: {tmp}; Flags: dontcopy
Source: Include\get_hw_caps.dll; DestDir: {tmp}; Flags: dontcopy
Source: Include\idp.dll; Flags: dontcopy
Source: Include\InnoCallback.dll; DestDir: {tmp}; Flags: dontcopy
Source: Include\ISDone.dll; DestDir: {tmp}; Flags: dontcopy
Source: Include\isgsg.dll; DestDir: {tmp}; Flags: dontcopy
Source: Include\ISSkin.dll; DestDir: {tmp}; Flags: dontcopy
Source: Include\isSlideShow.dll; DestDir: {tmp}; Flags: dontcopy
Source: Include\isUtils.dll; DestDir: {tmp}; Flags: dontcopy
Source: Include\SysInfo.dll; DestDir: {tmp}; Flags: dontcopy
Source: Include\trayiconctrl.dll; DestDir: {tmp}; Flags: dontcopy
Source: Include\video.exe; DestDir: {tmp}; Flags: dontcopy
Source: Include\Graphics\Other\Blank.png; DestDir: {tmp}; Flags: dontcopy
Source: Include\Graphics\Other\cancel.ico; DestDir: {tmp}; Flags: dontcopy
Source: Include\Graphics\System\ResultBG1.png; DestDir: {tmp}; Flags: dontcopy
Source: Include\Graphics\System\ResultBG2.png; DestDir: {tmp}; Flags: dontcopy
Source: Include\Graphics\System\ResultBG3.png; DestDir: {tmp}; Flags: dontcopy
Source: Include\Graphics\System\ResultBG4.png; DestDir: {tmp}; Flags: dontcopy
Source: Include\Graphics\System\ResultBG5.png; DestDir: {tmp}; Flags: dontcopy

#ifexist "Temp\Licenses\License.rtf"
Source: Temp\Licenses\License.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\InfoBefore.rtf"
Source: Temp\Licenses\InfoBefore.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\InfoAfter.rtf"
Source: Temp\Licenses\InfoAfter.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\Readme.rtf"
Source: Temp\Licenses\Readme.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\Manual.pdf"
Source: Temp\Licenses\Manual.pdf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\EnglishLicense.rtf"
Source: Temp\Licenses\EnglishLicense.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\EnglishInfoBefore.rtf"
Source: Temp\Licenses\EnglishInfoBefore.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\EnglishInfoAfter.rtf"
Source: Temp\Licenses\EnglishInfoAfter.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\EnglishReadme.rtf"
Source: Temp\Licenses\EnglishReadme.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\EnglishManual.pdf"
Source: Temp\Licenses\EnglishManual.pdf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\AlbanianLicense.rtf"
Source: Temp\Licenses\AlbanianLicense.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\AlbanianInfoBefore.rtf"
Source: Temp\Licenses\AlbanianInfoBefore.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\AlbanianInfoAfter.rtf"
Source: Temp\Licenses\AlbanianInfoAfter.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\AlbanianReadme.rtf"
Source: Temp\Licenses\AlbanianReadme.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\AlbanianManual.pdf"
Source: Temp\Licenses\AlbanianManual.pdf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\BosnianLicense.rtf"
Source: Temp\Licenses\BosnianLicense.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\BosnianInfoBefore.rtf"
Source: Temp\Licenses\BosnianInfoBefore.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\BosnianInfoAfter.rtf"
Source: Temp\Licenses\BosnianInfoAfter.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\BosnianReadme.rtf"
Source: Temp\Licenses\BosnianReadme.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\BosnianManual.pdf"
Source: Temp\Licenses\BosnianManual.pdf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\CzechLicense.rtf"
Source: Temp\Licenses\CzechLicense.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\CzechInfoBefore.rtf"
Source: Temp\Licenses\CzechInfoBefore.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\CzechInfoAfter.rtf"
Source: Temp\Licenses\CzechInfoAfter.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\CzechReadme.rtf"
Source: Temp\Licenses\CzechReadme.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\CzechManual.pdf"
Source: Temp\Licenses\CzechManual.pdf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\FrenchLicense.rtf"
Source: Temp\Licenses\FrenchLicense.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\FrenchInfoBefore.rtf"
Source: Temp\Licenses\FrenchInfoBefore.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\FrenchInfoAfter.rtf"
Source: Temp\Licenses\FrenchInfoAfter.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\FrenchReadme.rtf"
Source: Temp\Licenses\FrenchReadme.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\FrenchManual.pdf"
Source: Temp\Licenses\FrenchManual.pdf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\GermanLicense.rtf"
Source: Temp\Licenses\GermanLicense.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\GermanInfoBefore.rtf"
Source: Temp\Licenses\GermanInfoBefore.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\GermanInfoAfter.rtf"
Source: Temp\Licenses\GermanInfoAfter.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\GermanReadme.rtf"
Source: Temp\Licenses\GermanReadme.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\GermanManual.pdf"
Source: Temp\Licenses\GermanManual.pdf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\HungarianLicense.rtf"
Source: Temp\Licenses\HungarianLicense.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\HungarianInfoBefore.rtf"
Source: Temp\Licenses\HungarianInfoBefore.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\HungarianInfoAfter.rtf"
Source: Temp\Licenses\HungarianInfoAfter.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\HungarianReadme.rtf"
Source: Temp\Licenses\HungarianReadme.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\HungarianManual.pdf"
Source: Temp\Licenses\HungarianManual.pdf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\ItalianLicense.rtf"
Source: Temp\Licenses\ItalianLicense.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\ItalianInfoBefore.rtf"
Source: Temp\Licenses\ItalianInfoBefore.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\ItalianInfoAfter.rtf"
Source: Temp\Licenses\ItalianInfoAfter.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\ItalianReadme.rtf"
Source: Temp\Licenses\ItalianReadme.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\ItalianManual.pdf"
Source: Temp\Licenses\ItalianManual.pdf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\MalaysianLicense.rtf"
Source: Temp\Licenses\MalaysianLicense.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\MalaysianInfoBefore.rtf"
Source: Temp\Licenses\MalaysianInfoBefore.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\MalaysianInfoAfter.rtf"
Source: Temp\Licenses\MalaysianInfoAfter.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\MalaysianReadme.rtf"
Source: Temp\Licenses\MalaysianReadme.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\MalaysianManual.pdf"
Source: Temp\Licenses\MalaysianManual.pdf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\PolishLicense.rtf"
Source: Temp\Licenses\PolishLicense.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\PolishInfoBefore.rtf"
Source: Temp\Licenses\PolishInfoBefore.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\PolishInfoAfter.rtf"
Source: Temp\Licenses\PolishInfoAfter.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\PolishReadme.rtf"
Source: Temp\Licenses\PolishReadme.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\PolishManual.pdf"
Source: Temp\Licenses\PolishManual.pdf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\PortugueseLicense.rtf"
Source: Temp\Licenses\PortugueseLicense.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\PortugueseInfoBefore.rtf"
Source: Temp\Licenses\PortugueseInfoBefore.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\PortugueseInfoAfter.rtf"
Source: Temp\Licenses\PortugueseInfoAfter.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\PortugueseReadme.rtf"
Source: Temp\Licenses\PortugueseReadme.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\PortugueseManual.pdf"
Source: Temp\Licenses\PortugueseManual.pdf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\RussianLicense.rtf"
Source: Temp\Licenses\RussianLicense.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\RussianInfoBefore.rtf"
Source: Temp\Licenses\RussianInfoBefore.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\RussianInfoAfter.rtf"
Source: Temp\Licenses\RussianInfoAfter.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\RussianReadme.rtf"
Source: Temp\Licenses\RussianReadme.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\RussianManual.pdf"
Source: Temp\Licenses\RussianManual.pdf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\SpanishLicense.rtf"
Source: Temp\Licenses\SpanishLicense.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\SpanishInfoBefore.rtf"
Source: Temp\Licenses\SpanishInfoBefore.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\SpanishInfoAfter.rtf"
Source: Temp\Licenses\SpanishInfoAfter.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\SpanishReadme.rtf"
Source: Temp\Licenses\SpanishReadme.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\SpanishManual.pdf"
Source: Temp\Licenses\SpanishManual.pdf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\TurkishLicense.rtf"
Source: Temp\Licenses\TurkishLicense.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\TurkishInfoBefore.rtf"
Source: Temp\Licenses\TurkishInfoBefore.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\TurkishInfoAfter.rtf"
Source: Temp\Licenses\TurkishInfoAfter.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\TurkishReadme.rtf"
Source: Temp\Licenses\TurkishReadme.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\TurkishManual.pdf"
Source: Temp\Licenses\TurkishManual.pdf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\UkrainianLicense.rtf"
Source: Temp\Licenses\UkrainianLicense.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\UkrainianInfoBefore.rtf"
Source: Temp\Licenses\UkrainianInfoBefore.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\UkrainianInfoAfter.rtf"
Source: Temp\Licenses\UkrainianInfoAfter.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\UkrainianReadme.rtf"
Source: Temp\Licenses\UkrainianReadme.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\UkrainianManual.pdf"
Source: Temp\Licenses\UkrainianManual.pdf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\VietnameseLicense.rtf"
Source: Temp\Licenses\VietnameseLicense.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\VietnameseInfoBefore.rtf"
Source: Temp\Licenses\VietnameseInfoBefore.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\VietnameseInfoAfter.rtf"
Source: Temp\Licenses\VietnameseInfoAfter.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\VietnameseReadme.rtf"
Source: Temp\Licenses\VietnameseReadme.rtf; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Licenses\VietnameseManual.pdf"
Source: Temp\Licenses\VietnameseManual.pdf; DestDir: {tmp}; Flags: dontcopy
#endif

#define i 0
#ifexist "Temp\Setup.ini"
Source: Temp\Setup.ini; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\Dialog.jpg"
Source: Temp\Resources\Dialog.jpg; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\DialogTextBackground.png"
Source: Temp\Resources\DialogTextBackground.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\EditBackground.png"
Source: Temp\Resources\EditBackground.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\Logo.png"
Source: Temp\Resources\Logo.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ProgressBackground.png"
Source: Temp\Resources\ProgressBackground.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ProgressImage.png"
Source: Temp\Resources\ProgressImage.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\SmallTextBackground.png"
Source: Temp\Resources\SmallTextBackground.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\TextBackground.png"
Source: Temp\Resources\TextBackground.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\Preview1.jpg"
Source: Temp\Resources\Preview1.jpg; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\Preview2.jpg"
Source: Temp\Resources\Preview2.jpg; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\Preview3.jpg"
Source: Temp\Resources\Preview3.jpg; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\Button.png"
Source: Temp\Resources\Button.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ButtonSelected.png"
Source: Temp\Resources\ButtonSelected.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ButtonClicked.png"
Source: Temp\Resources\ButtonClicked.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ButtonDisabled.png"
Source: Temp\Resources\ButtonDisabled.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\BackButton.png"
Source: Temp\Resources\BackButton.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\BackButtonSelected.png"
Source: Temp\Resources\BackButtonSelected.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\BackButtonClicked.png"
Source: Temp\Resources\BackButtonClicked.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\BackButtonDisabled.png"
Source: Temp\Resources\BackButtonDisabled.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\NextButton.png"
Source: Temp\Resources\NextButton.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\NextButtonSelected.png"
Source: Temp\Resources\NextButtonSelected.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\NextButtonClicked.png"
Source: Temp\Resources\NextButtonClicked.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\NextButtonDisabled.png"
Source: Temp\Resources\NextButtonDisabled.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\CancelButton.png"
Source: Temp\Resources\CancelButton.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\CancelButtonSelected.png"
Source: Temp\Resources\CancelButtonSelected.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\CancelButtonClicked.png"
Source: Temp\Resources\CancelButtonClicked.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\CancelButtonDisabled.png"
Source: Temp\Resources\CancelButtonDisabled.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\MusicButton.png"
Source: Temp\Resources\MusicButton.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\MusicButtonSelected.png"
Source: Temp\Resources\MusicButtonSelected.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\MusicButtonClicked.png"
Source: Temp\Resources\MusicButtonClicked.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\MusicButtonDisabled.png"
Source: Temp\Resources\MusicButtonDisabled.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\SmallButton.png"
Source: Temp\Resources\SmallButton.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\SmallButtonSelected.png"
Source: Temp\Resources\SmallButtonSelected.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\SmallButtonClicked.png"
Source: Temp\Resources\SmallButtonClicked.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\SmallButtonDisabled.png"
Source: Temp\Resources\SmallButtonDisabled.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\CloseButton.png"
Source: Temp\Resources\CloseButton.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\CloseButtonSelected.png"
Source: Temp\Resources\CloseButtonSelected.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\CloseButtonClicked.png"
Source: Temp\Resources\CloseButtonClicked.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\CloseButtonDisabled.png"
Source: Temp\Resources\CloseButtonDisabled.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\MinimizeButton.png"
Source: Temp\Resources\MinimizeButton.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\MinimizeButtonSelected.png"
Source: Temp\Resources\MinimizeButtonSelected.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\MinimizeButtonClicked.png"
Source: Temp\Resources\MinimizeButtonClicked.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\MinimizeButtonDisabled.png"
Source: Temp\Resources\MinimizeButtonDisabled.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\SmallMusicButton.png"
Source: Temp\Resources\SmallMusicButton.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\SmallMusicButtonClicked.png"
Source: Temp\Resources\SmallMusicButtonClicked.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\SmallMusicButtonDisabled.png"
Source: Temp\Resources\SmallMusicButtonDisabled.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\SmallMusicButtonSelected.png"
Source: Temp\Resources\SmallMusicButtonSelected.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\Checkbox.png"
Source: Temp\Resources\CheckBox.png; DestDir: {tmp}; Flags: dontcopy
#else
Source: Include\Graphics\Other\CheckBox.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\Cursor.cur"
Source: Temp\Resources\Cursor.cur; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\Cursor.ani"
Source: Temp\Resources\Cursor.ani; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ButtonClicked.wav"
Source: Temp\Resources\ButtonClicked.wav; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ButtonSelected.wav"
Source: Temp\Resources\ButtonSelected.wav; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\Music.mp3"
Source: Temp\Resources\Music.mp3; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\Video.wmv"
Source: Temp\Resources\Video.wmv; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\Font1.ttf"
#sub AddFile1
Source: Temp\Resources\Font{#i}.ttf; DestDir: {tmp}; Flags: dontcopy
#endsub
#for {i = 1; FileExists(StringChange("Temp\Resources\FontFileName.ttf", "FileName", Str(i))) != 0; i++} AddFile1
#endif
#ifexist "Temp\Resources\1.jpg"
#sub AddFile2
Source: Temp\Resources\{#i}.jpg; DestDir: {tmp}; Flags: dontcopy
#endsub
#for {i = 1; FileExists(StringChange("Temp\Resources\FileName.jpg", "FileName", Str(i))) != 0; i++} AddFile2
#endif
#ifexist "Temp\Resources\Splash1.png"
#sub AddFile3
Source: Temp\Resources\Splash{#i}.png; DestDir: {tmp}; Flags: dontcopy
#endsub
#for {i = 1; FileExists(StringChange("Temp\Resources\SplashFileName.png", "FileName", Str(i))) != 0; i++} AddFile3
#endif
#ifexist "Temp\Resources\Installer1.jpg"
#sub AddFile4
Source: Temp\Resources\Installer{#i}.jpg; DestDir: {tmp}; Flags: dontcopy
#endsub
#for {i = 1; FileExists(StringChange("Temp\Resources\InstallerFileName.jpg", "FileName", Str(i))) != 0; i++} AddFile4
#endif

#ifexist "Temp\Resources\ADialog.jpg"
Source: Temp\Resources\ADialog.jpg; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ADialogTextBackground.png"
Source: Temp\Resources\ADialogTextBackground.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALogo.png"
Source: Temp\Resources\ALogo.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AButton.png"
Source: Temp\Resources\AButton.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AButtonSelected.png"
Source: Temp\Resources\AButtonSelected.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AButtonClicked.png"
Source: Temp\Resources\AButtonClicked.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AButtonDisabled.png"
Source: Temp\Resources\AButtonDisabled.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AInstallButton.png"
Source: Temp\Resources\AInstallButton.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AInstallButtonSelected.png"
Source: Temp\Resources\AInstallButtonSelected.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AInstallButtonClicked.png"
Source: Temp\Resources\AInstallButtonClicked.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AInstallButtonDisabled.png"
Source: Temp\Resources\AInstallButtonDisabled.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AExitButton.png"
Source: Temp\Resources\AExitButton.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AExitButtonSelected.png"
Source: Temp\Resources\AExitButtonSelected.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AExitButtonClicked.png"
Source: Temp\Resources\AExitButtonClicked.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AExitButtonDisabled.png"
Source: Temp\Resources\AExitButtonDisabled.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ACloseButton.png"
Source: Temp\Resources\ACloseButton.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ACloseButtonSelected.png"
Source: Temp\Resources\ACloseButtonSelected.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ACloseButtonClicked.png"
Source: Temp\Resources\ACloseButtonClicked.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ACloseButtonDisabled.png"
Source: Temp\Resources\ACloseButtonDisabled.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AMinimizeButton.png"
Source: Temp\Resources\AMinimizeButton.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AMinimizeButtonSelected.png"
Source: Temp\Resources\AMinimizeButtonSelected.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AMinimizeButtonClicked.png"
Source: Temp\Resources\AMinimizeButtonClicked.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AMinimizeButtonDisabled.png"
Source: Temp\Resources\AMinimizeButtonDisabled.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AMusicButton.png"
Source: Temp\Resources\AMusicButton.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AMusicButtonSelected.png"
Source: Temp\Resources\AMusicButtonSelected.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AMusicButtonClicked.png"
Source: Temp\Resources\AMusicButtonClicked.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AMusicButtonDisabled.png"
Source: Temp\Resources\AMusicButtonDisabled.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AReadmeButton.png"
Source: Temp\Resources\AReadmeButton.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AReadmeButtonSelected.png"
Source: Temp\Resources\AReadmeButtonSelected.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AReadmeButtonClicked.png"
Source: Temp\Resources\AReadmeButtonClicked.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AReadmeButtonDisabled.png"
Source: Temp\Resources\AReadmeButtonDisabled.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AManualButton.png"
Source: Temp\Resources\AManualButton.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AManualButtonSelected.png"
Source: Temp\Resources\AManualButtonSelected.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AManualButtonClicked.png"
Source: Temp\Resources\AManualButtonClicked.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AManualButtonDisabled.png"
Source: Temp\Resources\AManualButtonDisabled.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AOpenDiskButton.png"
Source: Temp\Resources\AOpenDiskButton.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AOpenDiskButtonSelected.png"
Source: Temp\Resources\AOpenDiskButtonSelected.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AOpenDiskButtonClicked.png"
Source: Temp\Resources\AOpenDiskButtonClicked.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AOpenDiskButtonDisabled.png"
Source: Temp\Resources\AOpenDiskButtonDisabled.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AWebButton.png"
Source: Temp\Resources\AWebButton.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AWebButtonSelected.png"
Source: Temp\Resources\AWebButtonSelected.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AWebButtonClicked.png"
Source: Temp\Resources\AWebButtonClicked.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AWebButtonDisabled.png"
Source: Temp\Resources\AWebButtonDisabled.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ASmallMusicButton.png"
Source: Temp\Resources\ASmallMusicButton.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ASmallMusicButtonSelected.png"
Source: Temp\Resources\ASmallMusicButtonSelected.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ASmallMusicButtonClicked.png"
Source: Temp\Resources\ASmallMusicButtonClicked.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ASmallMusicButtonDisabled.png"
Source: Temp\Resources\ASmallMusicButtonDisabled.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch1Button.png"
Source: Temp\Resources\ALaunch1Button.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch1ButtonSelected.png"
Source: Temp\Resources\ALaunch1ButtonSelected.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch1ButtonClicked.png"
Source: Temp\Resources\ALaunch1ButtonClicked.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch1ButtonDisabled.png"
Source: Temp\Resources\ALaunch1ButtonDisabled.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch2Button.png"
Source: Temp\Resources\ALaunch2Button.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch2ButtonSelected.png"
Source: Temp\Resources\ALaunch2ButtonSelected.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch2ButtonClicked.png"
Source: Temp\Resources\ALaunch2ButtonClicked.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch2ButtonDisabled.png"
Source: Temp\Resources\ALaunch2ButtonDisabled.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch3Button.png"
Source: Temp\Resources\ALaunch3Button.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch3ButtonSelected.png"
Source: Temp\Resources\ALaunch3ButtonSelected.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch3ButtonClicked.png"
Source: Temp\Resources\ALaunch3ButtonClicked.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch3ButtonDisabled.png"
Source: Temp\Resources\ALaunch3ButtonDisabled.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch4Button.png"
Source: Temp\Resources\ALaunch4Button.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch4ButtonSelected.png"
Source: Temp\Resources\ALaunch4ButtonSelected.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch4ButtonClicked.png"
Source: Temp\Resources\ALaunch4ButtonClicked.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch4ButtonDisabled.png"
Source: Temp\Resources\ALaunch4ButtonDisabled.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch5Button.png"
Source: Temp\Resources\ALaunch5Button.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch5ButtonSelected.png"
Source: Temp\Resources\ALaunch5ButtonSelected.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch5ButtonClicked.png"
Source: Temp\Resources\ALaunch5ButtonClicked.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch5ButtonDisabled.png"
Source: Temp\Resources\ALaunch5ButtonDisabled.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch6Button.png"
Source: Temp\Resources\ALaunch6Button.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch6ButtonSelected.png"
Source: Temp\Resources\ALaunch6ButtonSelected.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch6ButtonClicked.png"
Source: Temp\Resources\ALaunch6ButtonClicked.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch6ButtonDisabled.png"
Source: Temp\Resources\ALaunch6ButtonDisabled.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch7Button.png"
Source: Temp\Resources\ALaunch7Button.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch7ButtonSelected.png"
Source: Temp\Resources\ALaunch7ButtonSelected.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch7ButtonClicked.png"
Source: Temp\Resources\ALaunch7ButtonClicked.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch7ButtonDisabled.png"
Source: Temp\Resources\ALaunch7ButtonDisabled.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch8Button.png"
Source: Temp\Resources\ALaunch8Button.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch8ButtonSelected.png"
Source: Temp\Resources\ALaunch8ButtonSelected.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch8ButtonClicked.png"
Source: Temp\Resources\ALaunch8ButtonClicked.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch8ButtonDisabled.png"
Source: Temp\Resources\ALaunch8ButtonDisabled.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch9Button.png"
Source: Temp\Resources\ALaunch9Button.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch9ButtonSelected.png"
Source: Temp\Resources\ALaunch9ButtonSelected.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch9ButtonClicked.png"
Source: Temp\Resources\ALaunch9ButtonClicked.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch9ButtonDisabled.png"
Source: Temp\Resources\ALaunch9ButtonDisabled.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch10Button.png"
Source: Temp\Resources\ALaunch10Button.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch10ButtonSelected.png"
Source: Temp\Resources\ALaunch10ButtonSelected.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch10ButtonClicked.png"
Source: Temp\Resources\ALaunch10ButtonClicked.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ALaunch10ButtonDisabled.png"
Source: Temp\Resources\ALaunch10ButtonDisabled.png; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AButtonClicked.wav"
Source: Temp\Resources\AButtonClicked.wav; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\AButtonSelected.wav"
Source: Temp\Resources\AButtonSelected.wav; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ACursor.cur"
Source: Temp\Resources\ACursor.cur; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ACursor.ani"
Source: Temp\Resources\ACursor.ani; DestDir: {tmp}; Flags: dontcopy
#endif
#ifexist "Temp\Resources\ASplash1.png"
#sub AddFile5
Source: Temp\Resources\ASplash{#i}.png; DestDir: {tmp}; Flags: dontcopy
#endsub
#for {i = 1; FileExists(StringChange("Temp\Resources\ASplashFileName.png", "FileName", Str(i))) != 0; i++} AddFile5
#endif

#ifexist "Temp\Resources\AFont1.ttf"
#sub AddFile6
Source: Temp\Resources\AFont{#i}.ttf; DestDir: {tmp}; Flags: dontcopy
#endsub
#for {i = 1; FileExists(StringChange("Temp\Resources\AFontFileName.ttf", "FileName", Str(i))) != 0; i++} AddFile6
#endif
#ifexist "Temp\Resources\Autorun1.jpg"
#sub AddFile7
Source: Temp\Resources\Autorun{#i}.jpg; DestDir: {tmp}; Flags: dontcopy
#endsub
#for {i = 1; FileExists(StringChange("Temp\Resources\AutorunFileName.jpg", "FileName", Str(i))) != 0; i++} AddFile7
#endif
#ifexist "Temp\Resources\Autorun1.png"
#sub AddFile8
Source: Temp\Resources\Autorun{#i}.png; DestDir: {tmp}; Flags: dontcopy
#endsub
#for {i = 1; FileExists(StringChange("Temp\Resources\AutorunFileName.png", "FileName", Str(i))) != 0; i++} AddFile8
#endif
#ifexist "Temp\Resources\Autorun1.bmp"
#sub AddFile9
Source: Temp\Resources\Autorun{#i}.bmp; DestDir: {tmp}; Flags: dontcopy
#endsub
#for {i = 1; FileExists(StringChange("Temp\Resources\AutorunFileName.bmp", "FileName", Str(i))) != 0; i++} AddFile9
#endif
#ifexist "Temp\Resources\Installer1.jpg"
#sub AddFile10
Source: Temp\Resources\Installer{#i}.jpg; DestDir: {tmp}; Flags: dontcopy
#endsub
#for {i = 1; FileExists(StringChange("Temp\Resources\InstallerFileName.jpg", "FileName", Str(i))) != 0; i++} AddFile10
#endif
#ifexist "Temp\Resources\Installer1.png"
#sub AddFile11
Source: Temp\Resources\Installer{#i}.png; DestDir: {tmp}; Flags: dontcopy
#endsub
#for {i = 1; FileExists(StringChange("Temp\Resources\InstallerFileName.png", "FileName", Str(i))) != 0; i++} AddFile11
#endif
#ifexist "Temp\Resources\Installer1.bmp"
#sub AddFile12
Source: Temp\Resources\Installer{#i}.bmp; DestDir: {tmp}; Flags: dontcopy
#endsub
#for {i = 1; FileExists(StringChange("Temp\Resources\InstallerFileName.bmp", "FileName", Str(i))) != 0; i++} AddFile12
#endif
#ifexist "Temp\Resources\SmallInstaller1.jpg"
#sub AddFile13
Source: Temp\Resources\SmallInstaller{#i}.jpg; DestDir: {tmp}; Flags: dontcopy
#endsub
#for {i = 1; FileExists(StringChange("Temp\Resources\SmallInstallerFileName.jpg", "FileName", Str(i))) != 0; i++} AddFile13
#endif
#ifexist "Temp\Resources\SmallInstaller1.png"
#sub AddFile14
Source: Temp\Resources\SmallInstaller{#i}.png; DestDir: {tmp}; Flags: dontcopy
#endsub
#for {i = 1; FileExists(StringChange("Temp\Resources\SmallInstallerFileName.png", "FileName", Str(i))) != 0; i++} AddFile14
#endif
#ifexist "Temp\Resources\SmallInstaller1.bmp"
#sub AddFile15
Source: Temp\Resources\SmallInstaller{#i}.bmp; DestDir: {tmp}; Flags: dontcopy
#endsub
#for {i = 1; FileExists(StringChange("Temp\Resources\SmallInstallerFileName.bmp", "FileName", Str(i))) != 0; i++} AddFile15
#endif

#sub SetupFiles
#define SFSourceFile ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "Files", "Source" + Str(i), "")
#define SFOutputFile ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "Files", "Output" + Str(i), "")
#define SFLanguage ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "InternalMedia", "Language" + Str(i), "0")
#define SFComponent ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "InternalMedia", "Component" + Str(i), "0")
#define SFTask ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "InternalMedia", "Task" + Str(i), "0")
Source: {#SFSourceFile}\*; DestDir: {#SFOutputFile}; Flags: ignoreversion recursesubdirs createallsubdirs; Excludes: unins*; Check: InstallSourceFile({#i},'{#SFLanguage}','{#SFComponent}','{#SFTask}');
#endsub

#if ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "Files", "Source1", "") != ""
#for {i = 1; ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "Files", StringChange("SourceInt","Int", Str(i)), "") !=""; i++} SetupFiles
#endif

[UninstallDelete]
Type: filesandordirs; Name: {app}

[Icons]
Name: {group}\{code:ApplicationExecutableCheck}; Filename: {code:ApplicationExecutable}; Comment: {code:ApplicationExecutableCheck}; Check: GroupIconsLauncherExecCheck;
Name: {group}\{code:ApplicationExecutableCheck2}; Filename: {code:ApplicationExecutable2}; Comment: {code:ApplicationExecutableCheck2}; Check: GroupIconsLauncherExecCheck2;
Name: {group}\{code:ApplicationExecutableCheck3}; Filename: {code:ApplicationExecutable3}; Comment: {code:ApplicationExecutableCheck3}; Check: GroupIconsLauncherExecCheck3;
Name: {group}\{code:ApplicationExecutableCheck4}; Filename: {code:ApplicationExecutable4}; Comment: {code:ApplicationExecutableCheck4}; Check: GroupIconsLauncherExecCheck4;
Name: {group}\{code:ApplicationExecutableCheck5}; Filename: {code:ApplicationExecutable5}; Comment: {code:ApplicationExecutableCheck5}; Check: GroupIconsLauncherExecCheck5;
Name: {group}\{code:ApplicationExecutableCheck6}; Filename: {code:ApplicationExecutable6}; Comment: {code:ApplicationExecutableCheck6}; Check: GroupIconsLauncherExecCheck6;
Name: {group}\{code:ApplicationExecutableCheck7}; Filename: {code:ApplicationExecutable7}; Comment: {code:ApplicationExecutableCheck7}; Check: GroupIconsLauncherExecCheck7;
Name: {group}\{code:ApplicationExecutableCheck8}; Filename: {code:ApplicationExecutable8}; Comment: {code:ApplicationExecutableCheck8}; Check: GroupIconsLauncherExecCheck8;
Name: {group}\{code:ApplicationExecutableCheck9}; Filename: {code:ApplicationExecutable9}; Comment: {code:ApplicationExecutableCheck9}; Check: GroupIconsLauncherExecCheck9;
Name: {group}\{code:ApplicationExecutableCheck10}; Filename: {code:ApplicationExecutable10}; Comment: {code:ApplicationExecutableCheck10}; Check: GroupIconsLauncherExecCheck10;
Name: {group}\{code:ApplicationUninstall}; Filename: {uninstallexe}; Comment: {cm:OtherMessage6_3}; Check: NoIcons;

Name: {commondesktop}\{code:ApplicationExecutableCheck}; Filename: {code:ApplicationExecutable}; Check: DesktopIconsLauncherExecCheck;
Name: {commondesktop}\{code:ApplicationExecutableCheck2}; Filename: {code:ApplicationExecutable2}; Check: DesktopIconsLauncherExecCheck2;
Name: {commondesktop}\{code:ApplicationExecutableCheck3}; Filename: {code:ApplicationExecutable3}; Check: DesktopIconsLauncherExecCheck3;
Name: {commondesktop}\{code:ApplicationExecutableCheck4}; Filename: {code:ApplicationExecutable4}; Check: DesktopIconsLauncherExecCheck4;
Name: {commondesktop}\{code:ApplicationExecutableCheck5}; Filename: {code:ApplicationExecutable5}; Check: DesktopIconsLauncherExecCheck5;
Name: {commondesktop}\{code:ApplicationExecutableCheck6}; Filename: {code:ApplicationExecutable6}; Check: DesktopIconsLauncherExecCheck6;
Name: {commondesktop}\{code:ApplicationExecutableCheck7}; Filename: {code:ApplicationExecutable7}; Check: DesktopIconsLauncherExecCheck7;
Name: {commondesktop}\{code:ApplicationExecutableCheck8}; Filename: {code:ApplicationExecutable8}; Check: DesktopIconsLauncherExecCheck8;
Name: {commondesktop}\{code:ApplicationExecutableCheck9}; Filename: {code:ApplicationExecutable9}; Check: DesktopIconsLauncherExecCheck9;
Name: {commondesktop}\{code:ApplicationExecutableCheck10}; Filename: {code:ApplicationExecutable10}; Check: DesktopIconsLauncherExecCheck10;

[Code]
const
PCFonFLY=true;
notPCFonFLY=false;
WM_USER = $400;
WM_ICON_NOTIFY = WM_USER + 22;
WM_RBUTTONUP = $205;
GCL_HCURSOR = (-12);
OCR_NORMAL = 32512;
FR_PRIVATE = $10;
BTN_MAX_PATH = 1024;
BtnClickEventID= 1;
BtnMouseEnterEventID = 2;
BtnMouseLeaveEventID = 3;
BtnMouseMoveEventID= 4;
BtnMouseDownEventID= 5;
BtnMouseUpEventID= 6;
IMAGE_ICON = 1;
LR_LOADFROMFILE = $0010;
MF_ENABLED = 0;
MF_GRAYED = 1;
CLSID_TaskbarList = '{56FDF344-FD6D-11D0-958A-006097C9A090}';
NORMAL_PRIORITY_CLASS 		= $00000020;
IDLE_PRIORITY_CLASS 		= $00000040;
HIGH_PRIORITY_CLASS 		= $00000080;
REALTIME_PRIORITY_CLASS			= $00000100;
BELOW_NORMAL_PRIORITY_CLASS = $00004000; 
ABOVE_NORMAL_PRIORITY_CLASS = $00008000; 
BASS_ACTIVE_PAUSED = 3;
BASS_SAMPLE_LOOP = 4;
TBPF_NOPROGRESS = 0;
TBPF_INDETERMINATE= 1;
TBPF_NORMAL = 2;
TBPF_ERROR= 4;
TBPF_PAUSED = 8;
ShadowMoveX = 0;
ShadowMoveY = 0;
oneMB = 1048576;
SystemDetailY = 20;
CBSpace = 21;
CBLabl = ((CBSpace-13)/2);
BtnAlLeft= taLeftJustify;
BtnAlCenter= taCenter;
BtnAlRight = taRightJustify;
WM_SYSCOMMAND = $0112;
MF_DELETE = $200;
MF_SEPARATOR = $800;
MF_BYPOSITION = $400;
VideoMode = 1;
MusicMode = 2;

type
TBGIChange=procedure;
TIconList = record
Icon1: UINT;
Icon2: UINT;
Icon3: UINT;
Icon4: UINT;
end;
TControlArray = array of record
Control: TWinControl;
PrevWndProc: Longint;
end;
TProc=procedure(HandleW, msg, idEvent, TimeSys: LongWord);
TBtnEventProc = procedure(h:HWND);
TTextBuf= array [0..BTN_MAX_PATH-1] of Char;
TImgPB = record
Left,
Top,
Width,
Height,
MaxWidth: integer;
img1,img2 : Longint;
Percent: Extended;
end;
TTimerProc = procedure (h: Longword; msg: Longword; idevent: Longword; dwTime: Longword);
TALabel = array of TLabel;
HSTREAM = DWORD;
TMargins = record
cxLeftWidth: Integer;
cxRightWidth: Integer;
cyTopHeight: Integer;
cyBottomHeight: Integer;
end;
TImgTBProc = function (h:hWnd;Msg,wParam,lParam:Longint):Longint;
TCallback = function (OveralPct,CurrentPct: integer;CurrentFile,TimeStr1,TimeStr2,TimeStr3:PAnsiChar): longword;
TCallback2 = function (OveralPct,CurrentPct: integer;CurrentFile,TimeStr1,TimeStr2,TimeStr3:PAnsiChar): longword;
TPBProc = function (h:hWnd;Msg,wParam,lParam:Longint):Longint;
TBtnEvent = procedure(Btn: integer); 
TMenuItemClickProc = procedure(MenuIndex: Integer);
TMenuPopupProc = procedure(PopMenu: LongWord; var bShow: Boolean);
TTrayIconMsgFunc = function(wParam, lParam: LongWord): Boolean;
TBASSWndProc = function (h:hWnd;Msg,wParam,lParam:Longint):Longint;
TCallbackProc = function(h:hWnd;Msg,wParam,lParam:Longint):Longint;
type TSystemTime = record
wYear,
wMonth,
wDayOfWeek,
wDay,
wHour,
wMinute,
wSecond,
wMilliseconds: word;
end;
ITaskbarList = interface(IUnknown)
'{56FDF342-FD6D-11D0-958A-006097C9A090}'
procedure HrInit;
procedure AddTab(hwnd: Cardinal);
procedure DeleteTab(hwnd: Cardinal);
procedure ActivateTab(hwnd: Cardinal);
procedure SetActiveAlt(hwnd: Cardinal);
end;
ITaskbarList2 = interface(ITaskbarList)
'{602D4995-B13A-429B-A66E-1935E44F4317}'
procedure MarkFullscreenWindow(hwnd: Cardinal; fFullscreen: Bool);
end;
ITaskbarList3 = interface(ITaskbarList2)
'{EA1AFB91-9E28-4B86-90E9-9E9F8A5EEFAF}'
procedure SetProgressValue(hwnd: Cardinal; ullCompleted, ullTotal: Currency);
procedure SetProgressState(hwnd: Cardinal; tbpFlags: DWORD);
end;
TEnumProc = function (Wd: HWnd; Param: LongInt) : Boolean;
TMemoryStatusEx = record
dwLength: DWORD;
dwMemoryLoad: DWORD;
dwTotalPhys: DWORD;
dwAvailPhys: DWORD;
dwTotalPageFile: DWORD;
dwAvailPageFile: DWORD;
dwTotalVirtual: DWORD;
dwAvailVirtual: DWORD;
end;
PDisplay_Device = record
cb: DWord;
DeviceName: array [0..31] of char;
DeviceString: array [0..127] of char;
StateFlags: DWord;
DeviceID, DeviceKey: array [0..127] of char;
end;
TLabl = record
Labl, Labl_S: TLabel;
end;
TBtn = record
Btn, BtnSelected, BtnClicked, BtnDisabled: Longint;
StandardBtn, ModalBtn : TButton;
Area: TLabel;
CstmLabl: TLabl;
Visible, Enabled :Boolean;
ClickAction: TNotifyEvent;
Text: String;
HorzAlign: TAlignment;
VertAlign: TTextLayout;
FontName: String;
Left, Top, Width, Height, LabelX, LabelY,
FontSize, FontSizeSelected, FontSizeClicked, FontSizeDisabled,
FontColor, FontColorSelected, FontColorClicked, FontColorDisabled : Integer;
FontBold, FontItalic, FontUnderline, FontStrikeOut, FontUpperCase,
Normal, Selected, Clicked, CstmImg: Boolean;
end;
TSerialCodes = record
S1, S2, S3, S4, S5: String;
end;
TTasks = record
Name, Execute, Command, Execute64, Command64: String;
Dependence: Integer;
end;
TComponents = record
Name: String;
Size, Dependence: Integer;
end;
TVers = record
V1, V2, V3, V4: Integer;
end;
TData = record
Arc: array of String;
end;
TIni = record
Ini: array of String;
end;

var
OldCursor, NewCursor, AOldCursor, ANewCursor, OldPosition, PBOldProc, EditBG, SizeInt,
TextBG, SmallTextBG, counter,
AWizardImageQuantity, WizardImageQuantity, WizardSmallImageQuantity, SlideImageQuantity,
AWizardImageShowing, WizardImageShowing, WizardSmallImageShowing, vr,
Logo : Longint;
CurrentImage, ResultCode, NewWidth, Time, i, CurPercentage, 
ISDoneCancel, minutes, hours, seconds, TimeLeft, TotalComponentSizes , ComponentSizes, PerformanceChanger, PerformanceChangerPCF, PerformanceChangerSREP,
n, OveralPct, x, rt, se, pv, FastInstall, VideoMemory:integer;
AlreadyCanceled, SetupRunning, SetupRunning2, TimeIncrease, ISDoneError, ExpiryCheater,SelectGroupChecked1, SelectGroupChecked2, CustomInstallClicked: Boolean;
SystemPage, SelectComponentPage, SelectPriorityPage, SelectTasksPage, SerialPage, PreviewPage, DownloadPage: TWizardPage;
SystemPageFont, SystemPageFont2:TFont;
Progress, DProgress: TImgPB;
BGForm1, BGForm2: TForm;
FreeMB, TotalMB: Cardinal;
Keys: TArrayOfString;
Version: TWindowsVersion;
sTime, eTime: DWORD;
CPUName: String;
EditionID,ProductName :String; 
Drive: String;
MenuStrs: String;
MenuItemClickCallback: LongWord;
MenuPopupCallback: LongWord;
dt,at,pr,i1,i2: Extended;
lt, WFOldProc: Longint;
p: string;
tc: DWORD;
mp3Name : string;
BackBtn, NextBtn, CancelBtn, DirBrowseBtn, GroupBrowseBtn, CancelBtn2, MusicBtn, MusicBtn2, MusicBtn3, CloseBtn, MinimizeBtn, Preview1Btn, Preview2Btn, Preview3Btn, CancelYesBtn, CancelNoBtn, DiskPromptOkBtn, DiskPromptCancelBtn, DirBrowseOkBtn, DirBrowseCancelBtn, CreditsOkBtn,
LaunchBtn, Launch2Btn, Launch3Btn, Launch4Btn, Launch5Btn, Launch6Btn, Launch7Btn, Launch8Btn, Launch9Btn, Launch10Btn, InstallBtn, ExitBtn, AMusicBtn, AMusicBtn2, OpenDiskBtn, ReadmeBtn, ManualBtn, WebBtn, ACloseBtn, AMinimizeBtn: TBtn;
WelcomeLabel1_1, WelcomeLabel2_1,
SerialLabel1_1, SerialLabel2_1,
LicenseLabel1_1, LicenseLabel2_1, LicenseLabel3_1,
SystemLabel1_1, SystemLabel2_1, SystemLabel3_1, SystemLabel3_2, SystemLabel3_3, SystemLabel3_4, SystemLabel3_5, SystemLabel3_6, SystemLabel3_7, SystemLabel3_8,
InformationLabel1_1, InformationLabel2_1,
SelectComponentLabel1_1, SelectComponentLabel2_1,
SelectDirLabel1_1, SelectDirLabel2_1, SelectDirLabel3_1, SelectDirLabel4_1, SelectDirLabel4_2, SelectDirLabel4_3, SelectDirLabel4_4, SelectDirLabel4_5, SelectDirLabel4_6, SelectDirLabel4_7, SelectDirLabel4_8,
SelectGroupLabel1_1, SelectGroupLabel2_1, SelectGroupLabel3_1, SelectGroupLabel4_1, SelectGroupLabel4_2,
PreviewLabel1_1,
SelectPriorityLabel1_1, SelectPriorityLabel2_1, SelectPriorityLabel3_1, SelectPriorityLabel3_2, SelectPriorityLabel3_3, SelectPriorityLabel3_4, SelectPriorityLabel3_5, SelectPriorityLabel3_6,
SelectTaskLabel1_1, SelectTaskLabel2_1,
ReadyLabel1_1, ReadyLabel2_1,
InstallLabel1_1, InstallLabel2_1, InstallLabel3_1, InstallLabel3_2, InstallLabel3_3_1, InstallLabel3_3_2, InstallLabel3_4,
DownloadLabel1_1, DownloadLabel2_1, DownloadLabel3_1, DownloadLabel3_2, DownloadLabel3_3_1, DownloadLabel3_4,
FinishLabel1_1, FinishLabel2_1,
UnInstallLabel1_1, UnInstallLabel2_1, UninstallLabel3_1, UninstallLabel3_2 :TLabl;
SelectGroupCheck1_1, SelectGroupCheck2_1,
LicenseCheck1_1,
SelectPriorityCheck1_1, SelectPriorityCheck2_1, SelectPriorityCheck3_1, SelectPriorityCheck4_1, SelectPriorityCheck5_1, SelectPriorityCheck6_1,
h,SystemResource3_1_1, SystemResource3_2_1, SystemResource3_3_1, SystemResource3_4_1, SystemResource3_5_1,
SystemResource3_6_1, SystemResource3_6_2, SystemResource3_6_3, SystemResource3_6_4, SystemResource3_6_5, mp3Handle: HWND;
Obj: IUnknown; FTaskbar: ITaskbarList3; loaded:boolean; AppHandle:HWND;
GUID: array of TGUID;
FormRegion : tHandle;
OldMinimizeAnimation: boolean;
rt1, rt2, rt3, rt4, rt5: Extended;
SerialEdit1, SerialEdit2, SerialEdit3, SerialEdit4, SerialEdit5: TNewEdit;
SerialBevel, PreviewBevel: TBevel;
Preview1Image, Preview2Image, Preview3Image: Longint;
CancelForm, DiskPromptForm, DirBrowseForm, CreditsForm: TSetupForm;
sourcedir: String;
AutorunForm: TSetupForm;
Installed, Update: Boolean;
AppDir, UninstExe: String;
Music1, Music2: String;
MusicPlaying, VideoPlaying: Boolean;
TempImage: Longint;
DownloadProgressGauge: TNewProgressBar;
SerialCodes: array of TSerialCodes;
SelectTaskLabel: array of TLabl;
SelectTaskCheck1: array of HWND;
Task: array of TTasks;
SelectComponentLabel: array of TLabl;
SelectComponentCheck1: array of HWND;
Component: array of TComponents;
Data, IDPs: array of TData;
LaunchNames: array of String;
LaunchTypes: array of String;
LaunchBinaries: array of String;
Cfg: array of TIni;
DisplayMode: Integer;
VideoLeft, VideoTop, VideoWidth, VideoHeight: Extended;
CalculatorTimer, AButtonAnimateTimer, ButtonAnimateTimer, ASetRgnTimer, SetRgnTimer, DownloadFixTimer,
ABGChange, BGChange: TTimer;
SlideTimer: TTimer;
CurrentPicture:integer;
PicList: TStringlist;
AutorunImage, InstallerImage, SmallInstallerImage: array of Longint;
AutorunFrame, InstallerFrame: TForm;
InfoAfter: Boolean;
SplitPct: Longint;

function BASS_Init(device: Integer; freq, flags: DWORD; win: hwnd; CLSID: Integer): Boolean; external 'BASS_Init@files:BASS.dll stdcall delayload';
function BASS_StreamCreateFile(mem: BOOL; f: PAnsiChar; offset1: DWORD; offset2: DWORD; length1: DWORD; length2: DWORD; flags: DWORD): DWORD; external 'BASS_StreamCreateFile@files:BASS.dll stdcall';
function BASS_Start: Boolean; external 'BASS_Start@files:BASS.dll stdcall delayload';
function BASS_ChannelPlay(handle: DWORD; restart: BOOL): Boolean; external 'BASS_ChannelPlay@files:BASS.dll stdcall delayload';
function BASS_ChannelIsActive(handle: DWORD): Integer; external 'BASS_ChannelIsActive@files:BASS.dll stdcall delayload';
function BASS_ChannelPause(handle: DWORD): Boolean; external 'BASS_ChannelPause@files:BASS.dll stdcall delayload';
function BASS_ChannelSetAttribute(handle, attrib: DWORD; value: Extended): Boolean; external 'BASS_ChannelSetAttribute@files:BASS.dll stdcall delayload';
function BASS_ChannelGetAttribute(handle, attrib: DWORD; var value: Extended): Boolean; external 'BASS_ChannelGetAttribute@files:BASS.dll stdcall delayload';
function BASS_Pause: Boolean; external 'BASS_Pause@files:BASS.dll stdcall delayload';
function BASS_Stop: Boolean; external 'BASS_Stop@files:BASS.dll stdcall delayload';
function BASS_Free: Boolean; external 'BASS_Free@files:BASS.dll stdcall delayload';
function BASS_ChannelSetPosition(handle: DWORD; pos1,pos2: Dword; mode: DWORD): BOOL;external 'BASS_ChannelSetPosition@files:BASS.dll stdcall delayload';
function BASS_ChannelGetPosition(handle, mode: DWORD): LongInt; external 'BASS_ChannelGetPosition@files:BASS.dll stdcall delayload';
function SetWindowPos(hWnd, hWndInsertAfter, X, Y, cx, cy, wFlags: Longint):Boolean; external 'SetWindowPos@user32.dll stdcall';
function GetSystemMetrics(nIndex : Integer): Integer;external 'GetSystemMetrics@user32 stdcall';
function ShowWindow(hWnd, nCmdShow: LongWord): LongWord; external 'ShowWindow@user32.dll';
function LoadCursorFromFile(FileName: String): Longint; external 'LoadCursorFromFileW@user32 stdcall';
function SetClassLong(hWnd: HWND; Index, NewLong: Longint): Longint; external 'SetClassLongW@user32 stdcall';
function SetCursor(Cursor: Longint): Longint; external 'SetCursor@user32 stdcall';
function SetSystemCursor(Cursor, CurType: Longint): Longint; external 'SetSystemCursor@user32 stdcall';
function GetCursor(): Longint; external 'GetCursor@user32 stdcall';
function SetWindowText(hWnd: Longint; lpString: String): Longint; external 'SetWindowTextW@user32 stdcall delayload';
function AddFontResource(lpszFilename:string;fl:dword;pdv:integer): Integer; external 'AddFontResourceExW@gdi32.dll stdcall';
function RemoveFontResource(lpszFilename:string;fl:dword;pdv:integer): boolean; external 'RemoveFontResourceExW@gdi32.dll stdcall';
function ReleaseCapture: Longint; external 'ReleaseCapture@user32.dll stdcall';
function mciSendString(lpstrCommand: String; lpstrReturnString: String; uReturnLength, hwndCallback: Integer): Integer; external 'mciSendStringW@winmm.dll stdcall';
function WrapBtnCallback(Callback: TBtnEventProc; ParamCount: Integer): Longword; external 'wrapcallbackaddr@{tmp}\CallbackCtrl.dll stdcall delayload';
function ImgLoad(Wnd :HWND; FileName :PAnsiChar; Left, Top, Width, Height :integer; Stretch, IsBkg :boolean) :Longint; external 'ImgLoad@{tmp}\botva2.dll stdcall delayload';
procedure ImgSetVisiblePart(img:Longint; NewLeft, NewTop, NewWidth, NewHeight : integer); external 'ImgSetVisiblePart@{tmp}\botva2.dll stdcall delayload';
procedure ImgGetVisiblePart(img:Longint; var Left, Top, Width, Height : integer); external 'ImgGetVisiblePart@{tmp}\botva2.dll stdcall delayload';
procedure ImgSetPosition(img :Longint; NewLeft, NewTop, NewWidth, NewHeight :integer); external 'ImgSetPosition@{tmp}\botva2.dll stdcall delayload';
procedure ImgGetPosition(img:Longint; var Left, Top, Width, Height:integer); external 'ImgGetPosition@{tmp}\botva2.dll stdcall delayload';
procedure ImgSetVisibility(img :Longint; Visible :boolean); external 'ImgSetVisibility@{tmp}\botva2.dll stdcall delayload';
function ImgGetVisibility(img:Longint):boolean; external 'ImgGetVisibility@{tmp}\botva2.dll stdcall delayload';
procedure ImgSetTransparent(img:Longint; Value:integer); external 'ImgSetTransparent@{tmp}\botva2.dll stdcall delayload';
function ImgGetTransparent(img:Longint):integer; external 'ImgGetTransparent@{tmp}\botva2.dll stdcall delayload';
procedure ImgRelease(img :Longint); external 'ImgRelease@{tmp}\botva2.dll stdcall delayload';
procedure ImgApplyChanges(h:HWND); external 'ImgApplyChanges@{tmp}\botva2.dll stdcall delayload';
function BtnCreate(hParent :HWND; Left, Top, Width, Height :integer; FileName :PAnsiChar; ShadowWidth :integer; IsCheckBtn :boolean) :HWND; external 'BtnCreate@{tmp}\botva2.dll stdcall delayload';
procedure BtnSetText(h :HWND; Text :PAnsiChar); external 'BtnSetText@{tmp}\botva2.dll stdcall delayload';
function BtnGetText_(h:HWND; var Text:TTextBuf):integer; external 'BtnGetText@{tmp}\botva2.dll stdcall delayload';
procedure BtnSetTextAlignment(h :HWND; HorIndent, VertIndent :integer; Alignment :DWORD); external 'BtnSetTextAlignment@{tmp}\botva2.dll stdcall delayload';
procedure BtnSetFont(h :HWND; Font :Cardinal); external 'BtnSetFont@{tmp}\botva2.dll stdcall delayload';
procedure BtnSetFontColor(h :HWND; NormalFontColor, FocusedFontColor, PressedFontColor, DisabledFontColor :Cardinal); external 'BtnSetFontColor@{tmp}\botva2.dll stdcall delayload';
function BtnGetVisibility(h :HWND) :boolean; external 'BtnGetVisibility@{tmp}\botva2.dll stdcall delayload';
procedure BtnSetVisibility(h :HWND; Value :boolean); external 'BtnSetVisibility@{tmp}\botva2.dll stdcall delayload';
function BtnGetEnabled(h :HWND) :boolean; external 'BtnGetEnabled@{tmp}\botva2.dll stdcall delayload';
procedure BtnSetEnabled(h :HWND; Value :boolean); external 'BtnSetEnabled@{tmp}\botva2.dll stdcall delayload';
function BtnGetChecked(h :HWND) :boolean; external 'BtnGetChecked@{tmp}\botva2.dll stdcall delayload';
procedure BtnSetChecked(h :HWND; Value :boolean); external 'BtnSetChecked@{tmp}\botva2.dll stdcall delayload';
procedure BtnSetEvent(h :HWND; EventID :integer; Event :Longword); external 'BtnSetEvent@{tmp}\botva2.dll stdcall delayload';
procedure BtnGetPosition(h:HWND; var Left, Top, Width, Height: integer);external 'BtnGetPosition@{tmp}\botva2.dll stdcall delayload';
procedure BtnSetPosition(h:HWND; NewLeft, NewTop, NewWidth, NewHeight: integer);external 'BtnSetPosition@{tmp}\botva2.dll stdcall delayload';
procedure BtnRefresh(h :HWND); external 'BtnRefresh@{tmp}\botva2.dll stdcall delayload';
procedure BtnSetCursor(h:HWND; hCur:Cardinal); external 'BtnSetCursor@{tmp}\botva2.dll stdcall delayload';
function GetSysCursorHandle(id:integer):Cardinal; external 'GetSysCursorHandle@{tmp}\botva2.dll stdcall delayload';
procedure gdipShutdown; external 'gdipShutdown@{tmp}\botva2.dll stdcall delayload';
procedure CreateFormFromImage(h:HWND; FileName:PAnsiChar); external 'CreateFormFromImage@{tmp}\botva2.dll stdcall delayload';
function CreateBitmapRgn(DC: LongWord; Bitmap: HBITMAP; TransClr: DWORD; dX:integer; dY:integer): LongWord; external 'CreateBitmapRgn@{tmp}\botva2.dll stdcall delayload';
procedure SetMinimizeAnimation(Value: Boolean); external 'SetMinimizeAnimation@{tmp}\botva2.dll stdcall delayload';
function GetMinimizeAnimation: Boolean; external 'GetMinimizeAnimation@{tmp}\botva2.dll stdcall delayload';
function MessageBox(hWnd: Integer; lpText, lpCaption: String; uType: Cardinal): Integer; external 'MessageBoxW@user32.dll stdcall';
function SetLayeredWindowAttributes(hwnd: HWND; crKey: TColor; bAlpha: BYTE; dwFlags: DWORD): Boolean; external 'SetLayeredWindowAttributes@user32.dll stdcall';
function GetWindowLong(Wnd: HWnd; Index: Integer): Longint; external 'GetWindowLongW@user32.dll stdcall';
function AnimateWindow(hWnd: HWND; dwTime: DWORD; dwFlags: DWORD): Boolean; external 'AnimateWindow@user32 stdcall';
function sndPlaySound(lpszSoundName: String; uFlags: cardinal):integer; external 'sndPlaySoundW@winmm.dll stdcall';
procedure ShowSplashScreen(p1:HWND;p2:AnsiString;p3,p4,p5,p6,p7:integer;p8:boolean;p9:Cardinal;p10 :integer); external 'ShowSplashScreen@files:isgsg.dll stdcall delayload';
function CallBackProc(P:TPBProc;ParamCount:integer):LongWord; external 'wrapcallbackaddr@{tmp}\CallbackCtrl.dll stdcall delayload';
function SetWindowLong(hWnd: HWND; nIndex: Integer; dwNewLong: Longint): Longint; external 'SetWindowLongW@user32.dll stdcall';
procedure LoadSkin(lpszPath: PAnsiChar; lpszIniFileName: PAnsiChar); external 'LoadSkin@{tmp}\isskin.dll stdcall delayload';
procedure UnloadSkin; external 'UnloadSkin@{tmp}\isskin.dll stdcall delayload';
function WrapBGI(callback:TBGIChange; Paramcount: Integer): longword; external 'wrapcallback@files:innocallback.dll stdcall';
function CallWindowProc(lpPrevWndFunc: Longint; hWnd: HWND; Msg: UINT; wParam, lParam: Longint): Longint; external 'CallWindowProcW@user32.dll stdcall';
function WrapCallback(callback:TCallback2; paramcount:integer):longword;external 'wrapcallback@files:ISDone.dll stdcall delayload';
function ISDoneInit(RecordFileName:AnsiString; TimeType,Comp1,Comp2,Comp3:Cardinal; WinHandle, NeededMem:longint; callback:TCallback2):boolean; external 'ISDoneInit@files:ISDone.dll stdcall';
function ISArcExtract(CurComponent:Cardinal; PctOfTotal:double; InName, OutPath, ExtractedPath: AnsiString; DeleteInFile:boolean; Password, CfgFile, WorkPath: AnsiString; ExtractPCF: boolean ):boolean; external 'ISArcExtract@files:ISDone.dll stdcall delayload';
function IS7ZipExtract(CurComponent:Cardinal; PctOfTotal:double; InName, OutPath: AnsiString; DeleteInFile:boolean; Password: AnsiString):boolean; external 'IS7zipExtract@files:ISDone.dll stdcall delayload';
function ISRarExtract(CurComponent:Cardinal; PctOfTotal:double; InName, OutPath: AnsiString; DeleteInFile:boolean; Password: AnsiString):boolean; external 'ISRarExtract@files:ISDone.dll stdcall delayload';
function ISPrecompExtract(CurComponent:Cardinal; PctOfTotal:double; InName, OutFile: AnsiString; DeleteInFile:boolean):boolean; external 'ISPrecompExtract@files:ISDone.dll stdcall delayload';
function ISSRepExtract(CurComponent:Cardinal; PctOfTotal:double; InName, OutFile: AnsiString; DeleteInFile:boolean):boolean; external 'ISSrepExtract@files:ISDone.dll stdcall delayload';
function ISxDeltaExtract(CurComponent:Cardinal; PctOfTotal:double; minRAM,maxRAM:integer; InName, DiffFile, OutFile: AnsiString; DeleteInFile, DeleteDiffFile:boolean):boolean; external 'ISxDeltaExtract@files:ISDone.dll stdcall delayload';
function ISPackZIP(CurComponent:Cardinal; PctOfTotal:double; InName, OutFile: AnsiString;ComprLvl:integer; DeleteInFile:boolean):boolean; external 'ISPackZIP@files:ISDone.dll stdcall delayload';
function ShowChangeDiskWindow(Text, DefaultPath, SearchFile:AnsiString):boolean; external 'ShowChangeDiskWindow@files:ISDone.dll stdcall delayload';
function Exec2 (FileName, Param: PAnsiChar;Show:boolean):boolean; external 'Exec2@files:ISDone.dll stdcall delayload';
function ISFindFiles(CurComponent:Cardinal; FileMask:AnsiString; var ColFiles:integer):integer; external 'ISFindFiles@files:ISDone.dll stdcall delayload';
function ISPickFilename(FindHandle:integer; OutPath:AnsiString; var CurIndex:integer; DeleteInFile:boolean):boolean; external 'ISPickFilename@files:ISDone.dll stdcall delayload';
function ISGetName(TypeStr:integer):PAnsichar; external 'ISGetName@files:ISDone.dll stdcall delayload';
function ISFindFree(FindHandle:integer):boolean; external 'ISFindFree@files:ISDone.dll stdcall delayload';
function ISExec(CurComponent:Cardinal; PctOfTotal,SpecifiedProcessTime:double; ExeName,Parameters,TargetDir,OutputStr:AnsiString;Show:boolean):boolean; external 'ISExec@files:ISDone.dll stdcall delayload';
function SrepInit(TmpPath:PAnsiChar;VirtMem,MaxSave:Cardinal):boolean; external 'SrepInit@files:ISDone.dll stdcall delayload';
function PrecompInit(TmpPath:PAnsiChar;VirtMem:cardinal;PrecompVers:single):boolean; external 'PrecompInit@files:ISDone.dll stdcall delayload';
function FileSearchInit(RecursiveSubDir:boolean):boolean; external 'FileSearchInit@files:ISDone.dll stdcall delayload';
function ISDoneStop:boolean; external 'ISDoneStop@files:ISDone.dll stdcall';
function ChangeLanguage(Language:AnsiString):boolean; external 'ChangeLanguage@files:ISDone.dll stdcall delayload';
function SuspendProc:boolean; external 'SuspendProc@files:ISDone.dll stdcall';
function ResumeProc:boolean; external 'ResumeProc@files:ISDone.dll stdcall';
function GetCursorPos(var lpPoint: TPoint): BOOL; external 'GetCursorPos@user32.dll stdcall';
function IsWindowEnabled(hWnd: HWND): BOOL; external 'IsWindowEnabled@user32.dll stdcall';
Function GetTotalRam: integer; external 'GetTotalRam@files:isutils.dll stdcall';
Function GetVideoName: PANSICHAR; external 'GetVideoName@files:isutils.dll stdcall';
Function GetVideoRam: integer; external 'GetVideoRam@files:isutils.dll stdcall';
Function GetProcessorCoreCount: integer; external 'GetProcessorCoreCount@files:isutils.dll stdcall';
function DetectHardware: Integer; external 'hwc_DetectHardware@files:get_hw_caps.dll stdcall';
function GetProcessorName: PAnsiChar; external 'hwc_GetProcessorName@files:get_hw_caps.dll stdcall';
function GetProcessorFreq: Integer; external 'hwc_GetProcessorFreq@files:get_hw_caps.dll stdcall';
function GetVidMemNonLocal(): Integer; external 'hwc_GetVidMemNonLocal@files:get_hw_caps.dll stdcall';
function GetVideoCardDev(): Integer; external 'hwc_GetVideoCardDev@files:get_hw_caps.dll stdcall';
function GetVideoCardVen(): Integer; external 'hwc_GetVideoCardVen@files:get_hw_caps.dll stdcall'; 
function GetVideoCardName: PAnsiChar; external 'hwc_GetVideoCardName@files:get_hw_caps.dll stdcall';
function GetVidMemLocal: Integer; external 'hwc_GetVidMemLocal@files:get_hw_caps.dll stdcall';
function GetPdmWidth: Integer; external 'hwc_GetPdmWidth@files:get_hw_caps.dll stdcall';
function GetPdmHeight: Integer; external 'hwc_GetPdmHeight@files:get_hw_caps.dll stdcall';
function GetSoundCards: Integer; external 'hwc_GetSoundCards@files:get_hw_caps.dll stdcall';
function GetSoundCardName: PAnsiChar; external 'hwc_GetSoundCardName@files:get_hw_caps.dll stdcall';
function GetSystemPhys: Integer; external 'hwc_GetSystemPhys@files:get_hw_caps.dll stdcall';
function GetSystemPage(): Integer; external 'hwc_GetSystemPage@files:get_hw_caps.dll stdcall'; 
function GetWindowsName: PAnsiChar; external 'hwc_GetWindowsName@files:get_hw_caps.dll stdcall';
Function GetOsName: PANSICHAR; external 'GetOsName@files:isutils.dll stdcall';
function GetOsNumber: integer; external 'GetOsNumber@files:isutils.dll stdcall';
function GetOsBit: integer; external 'GetOsBit@files:isutils.dll stdcall';
Function GetProcessorName1: PANSICHAR; external 'GetProcessorName@files:isutils.dll stdcall';
Function GetProcessorFreq1: integer; external 'GetProcessorFreq@files:isutils.dll stdcall';
function GetWindowsName1: PAnsiChar; external 'hwc_GetWindowsName@files:get_hw_caps.dll stdcall';
Function GetSoundCards1: integer; external 'GetSoundCards@files:isutils.dll stdcall';
Function GetSoundCardName1: PANSICHAR; external 'GetSoundCardName@files:isutils.dll stdcall';
function GetHardDriveFreeSpace(hdd: integer): Integer; external 'hwc_GetHardDriveFreeSpace@files:get_hw_caps.dll stdcall'; 
function GetHardDriveName(hdd: integer): Char; external 'hwc_GetHardDriveName@files:get_hw_caps.dll stdcall';
function GetHardDriveTotalSpace(hdd: integer): Integer; external 'hwc_GetHardDriveTotalSpace@files:get_hw_caps.dll stdcall';
function GetHardDrivesCount(): Integer; external 'hwc_GetHardDrivesCount@files:get_hw_caps.dll stdcall'; 
function GetTickCount: DWord; external 'GetTickCount@kernel32 stdcall';
function CharUpper(Text: Char ):Char ; external 'CharUpperW@user32.dll stdcall';
function InitTrayIconCtrl(MainForm_Handle, WizardForm_Handle: THandle; uCallbackMessage: UINT; szToolTip: String; icon: UINT; bHidden: BOOL; ShowTaskbarAppBtn: BOOL; MenuItems: String; DefaultMnuIndex: Integer; MenuItemOnClickCallBack: TMenuItemClickProc;MenuOnPopupCallBack: TMenuPopupProc; TrayIconMsgCallBack: TTrayIconMsgFunc): Boolean; external 'InitTrayIconCtrlW@{tmp}\trayiconctrl.dll stdcall delayload';
function UninitTrayIconCtrl(): Boolean; external 'UninitTrayIconCtrl@{tmp}\trayiconctrl.dll stdcall delayload';
function HideTrayIcon(): Boolean; external 'HideTrayIcon@{tmp}\trayiconctrl.dll stdcall delayload';
function ShowTrayIcon(): Boolean; external 'ShowTrayIcon@{tmp}\trayiconctrl.dll stdcall delayload';
function SetIconList(pHIconList: TIconList; nNumIcons: UINT): Boolean; external 'SetIconList@{tmp}\trayiconctrl.dll stdcall delayload';
function AnimateTrayIcon(nDelayMilliSeconds: UINT; nNumSeconds: Integer): Boolean;external 'AnimateTrayIcon@{tmp}\trayiconctrl.dll stdcall delayload';
function StopAnimation(): Boolean; external 'StopAnimation@{tmp}\trayiconctrl.dll stdcall delayload';
function ToggleWizardVisible(): Boolean; external 'ToggleWizardVisible@{tmp}\trayiconctrl.dll stdcall delayload';
function ShowBalloon(szText, szTitle: String; dwIcon: DWORD; uTimeout: UINT; bWaitforPreMsg: Boolean): Boolean; external 'ShowBalloonW@{tmp}\trayiconctrl.dll stdcall delayload';
function HideBalloon(): Boolean; external 'HideBalloon@{tmp}\trayiconctrl.dll stdcall delayload';
function WizardFormInTray(): Boolean; external 'WizardFormInTray@{tmp}\trayiconctrl.dll stdcall delayload';
function SetTrayIcon(szToolTip: String; icon: UINT): Boolean; external 'SetTrayIconW@{tmp}\trayiconctrl.dll stdcall delayload';
function EnableMenuItem(hMenu: UINT; uIDEnableItem, uEnable: UINT): BOOL; external 'EnableMenuItem@user32.dll stdcall';
function WrapMenuItemClickProc(Callback: TMenuItemClickProc; ParamCount: Integer): LongWord; external 'wrapcallback@files:innocallback.dll stdcall';
function WrapMenuPopupProc(Callback: TMenuPopupProc; ParamCount: Integer): LongWord; external 'wrapcallback@files:innocallback.dll stdcall';
Function cm(Message: String): String; Begin Result:= ExpandConstant('{cm:'+ Message +'}') End;
function SetPriorityClass(hProcess: THandle; dwPriorityClass: DWORD): BOOL;	external 'SetPriorityClass@kernel32';
function GetCurrentProcess: THandle;	external 'GetCurrentProcess@kernel32';
function LoadImage(hInst: UINT; ImageName: PAnsiChar; ImageType: UINT; X, Y: Integer; Flags: UINT): THandle; external 'LoadImageA@user32.dll stdcall';
function WndProcCallBack(P:TCallbackProc;ParamCount:integer):LongWord; external 'wrapcallback@{tmp}\innocallback.dll stdcall delayload';
function ReleaseDC(hWnd: HWND; hDC: LongWord): Integer; external 'ReleaseDC@user32.dll stdcall';
function DeleteObject(p1: LongWord): BOOL; external 'DeleteObject@gdi32.dll stdcall';
function GetDC(hWnd: HWND): Longword; external 'GetDC@user32.dll stdcall';
function PathToRegion(hWnd: Longword): THandle; external 'PathToRegion@gdi32.dll stdcall';
function GetWindowDC(hWnd: HWND): Longword; external 'GetWindowDC@user32.dll stdcall';
procedure GetLocalTime(var lpSystemTime: TSystemTime); external 'GetLocalTime@kernel32 stdcall delayload';
function SystemTimeToFileTime(const lpTime: TSystemTime; var lpFileTime: TFileTime): Boolean; external 'SystemTimeToFileTime@kernel32 stdcall delayload';
function CompareFileTime(const lpFileTime1, lpFileTime2: TFileTime): LongInt; external 'CompareFileTime@kernel32 stdcall delayload';
function CallbackAddr (Callback: TEnumProc; ParamCount: Integer) : Bool; external 'wrapcallbackaddr@{tmp}\CallbackCtrl.dll stdcall delayload';
function EnumWindows(lpEnumFunc: bool; lParam: integer): BOOL; external 'EnumWindows@user32.dll stdcall delayload';
function GetWindowThreadProcessId(hWnd: HWND; var dwProcessId: DWORD): DWORD; external 'GetWindowThreadProcessId@user32.dll stdcall delayload';
function GetClassName(hWnd: HWND; lpClassName: String; nMaxCount: Integer): Integer;external 'GetClassNameW@user32.dll stdcall delayload';
function GenerateGUID(var GUID: TGUID): Cardinal; external 'GenerateGUID@files:GameuxInstallHelper.dll stdcall setuponly';
function AddToGameExplorer(Binary: String; Path: String; InstallType: Integer; var GUID: TGUID): Cardinal; external 'AddToGameExplorerW@files:GameuxInstallHelper.dll stdcall setuponly';
function CreateTask(InstallType: Integer; var GUID: TGUID; TaskType: Integer; TaskNumber: Integer; TaskName: String; Binary: String; Parameters: String): Cardinal; external 'CreateTaskW@files:GameuxInstallHelper.dll stdcall setuponly';
function RetrieveGUIDForApplication(Binary: String; var GUID: TGUID): Cardinal; external 'RetrieveGUIDForApplicationW@{app}\GameuxInstallHelper.dll stdcall uninstallonly';
function RemoveFromGameExplorer(var GUID: TGUID): Cardinal; external 'RemoveFromGameExplorer@{app}\GameuxInstallHelper.dll stdcall uninstallonly';
function RemoveTasks(var GUID: TGUID): Cardinal; external 'RemoveTasks@{app}\GameuxInstallHelper.dll stdcall uninstallonly';
function CreateRoundRectRgn(p1, p2, p3, p4, p5, p6: Integer): THandle; external 'CreateRoundRectRgn@gdi32 stdcall';
function GetWindowRgn(hWnd: HWND; hRgn: THandle): Integer; external 'GetWindowRgn@user32 stdcall';
function SetWindowRgn(hWnd: HWND; hRgn: THandle; bRedraw: Boolean): Integer; external 'SetWindowRgn@user32 stdcall';
function cpu_intelp: integer; external 'cpu_intelp@files:cpudesc.dll stdcall';
function cpu_amd: integer; external 'cpu_amd@files:cpudesc.dll stdcall';
function cpu_ppro: integer; external 'cpu_ppro@files:cpudesc.dll stdcall';
function cpu_mmx: integer; external 'cpu_mmx@files:cpudesc.dll stdcall';
function cpu_sse: integer; external 'cpu_sse@files:cpudesc.dll stdcall';
function cpu_sse2: integer; external 'cpu_sse2@files:cpudesc.dll stdcall';
function cpu_3dnow: integer; external 'cpu_3dnow@files:cpudesc.dll stdcall';
function cpu_arch: integer; external 'cpu_arch@files:cpudesc.dll stdcall';
function cpu_level: integer; external 'cpu_level@files:cpudesc.dll stdcall';
function cpu_ncpu: integer; external 'cpu_ncpu@files:cpudesc.dll stdcall';
function cpu_mhz: integer; external 'cpu_mhz@files:cpudesc.dll stdcall';
function cpu_ram: integer; external 'cpu_ram@files:cpudesc.dll stdcall';
function GlobalMemoryStatusEx(var lpBuffer: TMemoryStatusEx): Boolean; external 'GlobalMemoryStatus@kernel32.dll stdcall';
function EnumDisplayDevices(lpDevice, iDevNum: DWord; var lpDisplayDevice: PDisplay_Device; dwFlags: DWord): Boolean; external 'EnumDisplayDevicesW@user32.dll Stdcall';
function GetDeviceCaps(hDC, nIndex: Integer): Integer; external 'GetDeviceCaps@GDI32 stdcall';
function CreateDC(lpDriverName, lpDeviceName, lpOutput: String; lpInitData: Integer): Integer; external 'CreateDCW@GDI32 stdcall';
procedure InitializeSlideShow(Hwnd:Thandle; l,t,w,h:integer;Animate:boolean; Stretch:integer); external 'InitializeSlideShow@files:isslideshow.dll stdcall';
procedure DeinitializeSlideShow; external 'DeinitializeSlideShow@files:isslideshow.dll stdcall';
procedure ShowImage(ipath:PAnsiChar; Effect:integer); external 'ShowImage@files:isslideshow.dll stdcall';
function AddApplicationToExceptionList(path: String; name: String): Boolean; external 'AddApplicationToExceptionListW@files:FirewallInstallHelper.dll stdcall setuponly';
function RemoveApplicationFromExceptionList(path: String): Boolean; external 'RemoveApplicationFromExceptionListW@{app}\FirewallInstallHelper.dll stdcall uninstallonly';
function AppendMenu(hMenu: HMENU; uFlags, uIDNewItem: UINT; lpNewItem: PAnsiChar): BOOL; external 'AppendMenuA@user32.dll stdcall';
function GetSystemMenu(hWnd: HWND; bRevert: BOOL): HMENU; external 'GetSystemMenu@user32.dll stdcall';
function GetCurrentTime: PAnsiChar; external 'CurrentTime@{tmp}\SysInfo.dll stdcall delayload';
function GetCurrentDate: PAnsiChar; external 'CurrentDate@{tmp}\SysInfo.dll stdcall delayload';
function GetOSName2: PAnsiChar; external 'OSName@{tmp}\SysInfo.dll stdcall delayload';
function GetOSEditionID: PAnsiChar; external 'OSEditionID@{tmp}\SysInfo.dll stdcall delayload';
function GetOSProdID: PAnsiChar; external 'OSProdID@{tmp}\SysInfo.dll stdcall delayload';
function GetOSRegUser: PAnsiChar; external 'OSRegUser@{tmp}\SysInfo.dll stdcall delayload';
function GetOSMajorVer: Integer; external 'OSMajorVer@{tmp}\SysInfo.dll stdcall delayload';
function GetOSMinorVer: Integer; external 'OSMinorVer@{tmp}\SysInfo.dll stdcall delayload';
function GetOSBuildVer: Integer; external 'OSBuildVer@{tmp}\SysInfo.dll stdcall delayload';
function GetOSSPMajorVer: Integer; external 'OSSPMajorVer@{tmp}\SysInfo.dll stdcall delayload';
function GetOSSPMinorVer: Integer; external 'OSSPMinorVer@{tmp}\SysInfo.dll stdcall delayload';
function GetOSType: PAnsiChar; external 'OSType@{tmp}\SysInfo.dll stdcall delayload';
function GetOSPlatform: PAnsiChar; external 'OSPlatform@{tmp}\SysInfo.dll stdcall delayload';
function GetLocate: Cardinal; external 'Locate@{tmp}\SysInfo.dll stdcall delayload';
function GetCPUName: PAnsiChar; external 'CPUName@{tmp}\SysInfo.dll stdcall delayload';
function GetCPUSpeed: Integer; external 'CPUSpeed@{tmp}\SysInfo.dll stdcall delayload';
function GetCPUCount: Cardinal; external 'CPUCount@{tmp}\SysInfo.dll stdcall delayload';
function GetTotalRAMSize: Cardinal; external 'TotalRAMSize@{tmp}\SysInfo.dll stdcall delayload';
function GetFreeRAMSize: Cardinal; external 'FreeRAMSize@{tmp}\SysInfo.dll stdcall delayload';
function GetUsedRAMSize: Cardinal; external 'UsedRAMSize@{tmp}\SysInfo.dll stdcall delayload';
function GetMBoardCreator: PAnsiChar; external 'MBoardCreator@{tmp}\SysInfo.dll stdcall delayload';
function GetMBoardProduct: PAnsiChar; external 'MBoardProduct@{tmp}\SysInfo.dll stdcall delayload';
function GetBIOSVendor: PAnsiChar; external 'BIOSVendor@{tmp}\SysInfo.dll stdcall delayload';
function GetBIOSReleaseDate: PAnsiChar; external 'BIOSReleaseDate@{tmp}\SysInfo.dll stdcall delayload';
function DxInfo: PAnsiChar; external 'DxInfo@files:DXTest.dll stdcall';
procedure idpAddFile(url, filename: String); external 'idpAddFile@files:idp.dll cdecl';
procedure idpAddMirror(url, mirror: String); external 'idpAddMirror@files:idp.dll cdecl';
procedure idpClearFiles; external 'idpClearFiles@files:idp.dll cdecl';
function idpFilesCount: Integer; external 'idpFilesCount@files:idp.dll cdecl';
function idpFilesDownloaded: Boolean; external 'idpFilesDownloaded@files:idp.dll cdecl';
function idpDownloadFile(url, filename: String): Boolean; external 'idpDownloadFile@files:idp.dll cdecl';
function idpDownloadFiles: Boolean; external 'idpDownloadFiles@files:idp.dll cdecl';
procedure idpStartDownload; external 'idpStartDownload@files:idp.dll cdecl';
procedure idpStopDownload; external 'idpStopDownload@files:idp.dll cdecl';
procedure idpConnectControl(name: String; Handle: HWND); external 'idpConnectControl@files:idp.dll cdecl';
procedure idpAddMessage(name, message: String); external 'idpAddMessage@files:idp.dll cdecl';
procedure idpSetInternalOption(name, value: String); external 'idpSetInternalOption@files:idp.dll cdecl';
procedure idpSetDetailedMode(mode: Boolean); external 'idpSetDetailedMode@files:idp.dll cdecl';
procedure idpAddFileSize(url, filename: String; size: Integer); external 'idpAddFileSize@files:idp.dll cdecl';
function idpGetFileSize(url: String; var size: Integer): Boolean; external 'idpGetFileSize@files:idp.dll cdecl';
function idpGetFilesSize(var size: Integer): Boolean; external 'idpGetFilesSize@files:idp.dll cdecl';
function GetFileVersionInfoSize(lptstrFilename: String; lpdwHandle: Integer): Integer;
external 'GetFileVersionInfoSizeW@version.dll stdcall delayload';
function GetFileVersionInfo(lptstrFilename: String; dwHandle, dwLen: Integer; var lpData: Byte): Boolean;
external 'GetFileVersionInfoW@version.dll stdcall delayload';
function VerQueryValue(var pBlock: Byte; lpSubBlock: String; var lplpBuffer: DWord; var puLen: Integer): Boolean;
external 'VerQueryValueW@version.dll stdcall delayload';

function GetFileVerInfo(FileName, VerName: String): String;
//VerName:
//Comments, LegalCopyright, CompanyName, FileDescription, FileVersion, ProductVersion,
//InternalName, LegalTrademarks, OriginalFilename, ProductName, PrivateBuild, SpecialBuild
var
dwLen, puLen, i: Integer;
lpFileVerInfo: array of Byte;
lplpBufferCP, lplpBufferVN: DWord;
LangCodepage: String;
begin
Result := '';
if FileExists(FileName) then
begin
dwLen := GetFileVersionInfoSize(FileName, 0);
if dwLen > 0 then
begin
SetArrayLength(lpFileVerInfo, dwLen);
if GetFileVersionInfo(FileName, 0, dwLen, lpFileVerInfo[0]) then
begin
if VerQueryValue(lpFileVerInfo[0], '\VarFileInfo\Translation', lplpBufferCP, puLen) then
begin
LangCodepage := Format('%.2x%.2x%.2x%.2x', [lpFileVerInfo[(dwLen div 2)-5], lpFileVerInfo[(dwLen div 2)-6], lpFileVerInfo[(dwLen div 2)-3], lpFileVerInfo[(dwLen div 2)-4]]);
if VerQueryValue(lpFileVerInfo[0], Format('\%s\%s\%s', ['StringFileInfo', LangCodepage, VerName]), lplpBufferVN, puLen) then
begin
i := (dwLen div 2) + lplpBufferVN - lplpBufferCP - 6;
repeat
if lpFileVerInfo[i] <> 0 then
begin
SetLength(Result, Length(Result)+1);
Result[Length(Result)] := Chr(lpFileVerInfo[i]);
end;
i := i + 1;
until i > (dwLen div 2) + lplpBufferVN - lplpBufferCP - 8 + puLen;
end;
end;
end;
end;
end else
Result:='0.0.0.0';
end;

function StrToBool(value: String): Boolean;
var
s: String;
begin
s := LowerCase(value);
if s = 'true'then result := true
else if s = 'yes' then result := true
else if s = 'y' then result := true
else if s = 'false' then result := false
else if s = 'no'then result := false
else if s = 'n' then result := false
else result := StrToInt(value) > 0;
end;

type
IDPFormRec = record
Status: TNewStaticText;
ElapsedTime : TNewStaticText;
RemainingTime : TNewStaticText;
TotalDownloaded : TNewStaticText;
end;

var IDPForm : IDPFormRec;

Procedure SetTaskBarTitle(Title: String); var h: Integer;
begin
h:= GetWindowLong(MainForm.Handle, -8); if h <> 0 then SetWindowText(h, Title);
end;

function WizardImage_JPG:Boolean;forward;


function SmallWizardImage_JPG:Boolean;forward;

function WizardImage_PNG:Boolean;forward;


function SmallWizardImage_PNG:Boolean;forward;

function DialogWizardImage:Boolean;forward;

function DialogWizardBackground:Boolean;forward;

procedure CreateShadow(var CustomLabel :TLabl; Create: Boolean);
begin
(*if Create then
CustomLabel.Labl_S:= TLabel.Create(CustomLabel.Labl.Parent);
CustomLabel.Labl_S.AutoSize:= CustomLabel.Labl.Autosize;
CustomLabel.Labl_S.Transparent := CustomLabel.Labl.Transparent;
CustomLabel.Labl_S.WordWrap:= CustomLabel.Labl.Wordwrap;
CustomLabel.Labl_S.Left := CustomLabel.Labl.Left + ShadowMoveX;
CustomLabel.Labl_S.Top := CustomLabel.Labl.Top + ShadowMoveY;
CustomLabel.Labl_S.Width := CustomLabel.Labl.Width;
CustomLabel.Labl_S.Height := CustomLabel.Labl.Height;
CustomLabel.Labl_S.Font.Name := CustomLabel.Labl.Font.Name;
CustomLabel.Labl_S.Font.Size :=CustomLabel.Labl.Font.Size;
CustomLabel.Labl_S.Font.Color:= clBlack;
CustomLabel.Labl_S.Font.Style:= CustomLabel.Labl.Font.Style;
CustomLabel.Labl_S.Alignment := CustomLabel.Labl.Alignment;
CustomLabel.Labl_S.Layout := CustomLabel.Labl.Layout;
CustomLabel.Labl_S.Visible := CustomLabel.Labl.Visible;
CustomLabel.Labl_S.Caption := CustomLabel.Labl.Caption;
CustomLabel.Labl_S.Parent:= CustomLabel.Labl.Parent;
CustomLabel.Labl_S.OnClick := CustomLabel.Labl.OnClick;
CustomLabel.Labl_S.OnDblClick:= CustomLabel.Labl.OnDblClick;
CustomLabel.Labl_S.OnMouseEnter :=CustomLabel.Labl.OnMouseEnter;
CustomLabel.Labl_S.OnMouseDown := CustomLabel.Labl.OnMouseDown;
CustomLabel.Labl_S.OnMouseLeave :=CustomLabel.Labl.OnMouseLeave;
CustomLabel.Labl_S.OnMouseMove := CustomLabel.Labl.OnMouseMove;
CustomLabel.Labl_S.OnMouseUp := CustomLabel.Labl.OnMouseUp;
CustomLabel.Labl_S.SendToBack;*)
end;

function ConstConv(Constant: String):String;
begin
StringChangeEx(Constant,'{app}',ExpandConstant('{app}'),True);
StringChangeEx(Constant,'{src}',ExpandConstant('{src}'),True);
StringChangeEx(Constant,'{tmp}',ExpandConstant('{tmp}'),True);
StringChangeEx(Constant,'{win}',ExpandConstant('{win}'),True);
StringChangeEx(Constant,'{sys}',ExpandConstant('{sys}'),True);
if ISWin64 then
StringChangeEx(Constant,'{syswow64}',ExpandConstant('{syswow64}'),True);
StringChangeEx(Constant,'{sd}',ExpandConstant('{sd}'),True);
StringChangeEx(Constant,'{pf}',ExpandConstant('{pf}'),True);
StringChangeEx(Constant,'{pf32}',ExpandConstant('{pf32}'),True);
if ISWin64 then
StringChangeEx(Constant,'{pf64}',ExpandConstant('{pf64}'),True);
StringChangeEx(Constant,'{cf}',ExpandConstant('{cf}'),True);
StringChangeEx(Constant,'{cf32}',ExpandConstant('{cf32}'),True);
if ISWin64 then
StringChangeEx(Constant,'{cf64}',ExpandConstant('{cf64}'),True);
StringChangeEx(Constant,'{dao}',ExpandConstant('{dao}'),True);
StringChangeEx(Constant,'{group}',ExpandConstant('{group}'),True);
StringChangeEx(Constant,'{localappdata}',ExpandConstant('{localappdata}'),True);
StringChangeEx(Constant,'{userappdata}',ExpandConstant('{userappdata}'),True);
StringChangeEx(Constant,'{commonappdata}',ExpandConstant('{commonappdata}'),True);
StringChangeEx(Constant,'{userdesktop}',ExpandConstant('{userdesktop}'),True);
StringChangeEx(Constant,'{commondesktop}',ExpandConstant('{commondesktop}'),True);
StringChangeEx(Constant,'{userdocs}',ExpandConstant('{userdocs}'),True);
StringChangeEx(Constant,'{commondocs}',ExpandConstant('{commondocs}'),True);
StringChangeEx(Constant,'{userfavorites}',ExpandConstant('{userfavorites}'),True);
StringChangeEx(Constant,'{commonfavorites}',ExpandConstant('{commonfavorites}'),True);
StringChangeEx(Constant,'{userprograms}',ExpandConstant('{userprograms}'),True);
StringChangeEx(Constant,'{commonprograms}',ExpandConstant('{commonprograms}'),True);
StringChangeEx(Constant,'{userstartmenu}',ExpandConstant('{userstartmenu}'),True);
StringChangeEx(Constant,'{commonstartup}',ExpandConstant('{commonstartup}'),True);
StringChangeEx(Constant,'{usertemplates}',ExpandConstant('{usertemplates}'),True);
StringChangeEx(Constant,'{cmd}',ExpandConstant('{cmd}'),True);
StringChangeEx(Constant,'{computername}',ExpandConstant('{computername}'),True);
StringChangeEx(Constant,'{groupname}',ExpandConstant('{groupname}'),True);
StringChangeEx(Constant,'{language}',ExpandConstant('{language}'),True);
StringChangeEx(Constant,'{srcexe}',ExpandConstant('{srcexe}'),True);
StringChangeEx(Constant,'{uninstallexe}',ExpandConstant('{uninstallexe}'),True);
StringChangeEx(Constant,'{sysuserinfoname}',ExpandConstant('{sysuserinfoname}'),True);
StringChangeEx(Constant,'{sysuserinfoorg}',ExpandConstant('{sysuserinfoorg}'),True);
StringChangeEx(Constant,'{userinfoname}',ExpandConstant('{userinfoname}'),True);
StringChangeEx(Constant,'{userinfoorg}',ExpandConstant('{userinfoorg}'),True);
StringChangeEx(Constant,'{userinfoserial}',ExpandConstant('{userinfoserial}'),True);
StringChangeEx(Constant,'{username}',ExpandConstant('{username}'),True);
Result:=Constant;
end;

function ConstConv2(Constant, Source: String):String;
begin
StringChangeEx(Constant,'{src}',Source,True);
Result:=ExpandConstant(Constant);
end;

function ConstConv3(Constant: String):String;
begin
StringChangeEx(Constant,'{app}',ExpandConstant('{app}'),True);
StringChangeEx(Constant,'{tmp}',ExpandConstant('{tmp}'),True);
StringChangeEx(Constant,'{win}',ExpandConstant('{win}'),True);
StringChangeEx(Constant,'{sys}',ExpandConstant('{sys}'),True);
if ISWin64 then
StringChangeEx(Constant,'{syswow64}',ExpandConstant('{syswow64}'),True);
StringChangeEx(Constant,'{sd}',ExpandConstant('{sd}'),True);
StringChangeEx(Constant,'{pf}',ExpandConstant('{pf}'),True);
StringChangeEx(Constant,'{pf32}',ExpandConstant('{pf32}'),True);
if ISWin64 then
StringChangeEx(Constant,'{pf64}',ExpandConstant('{pf64}'),True);
StringChangeEx(Constant,'{cf}',ExpandConstant('{cf}'),True);
StringChangeEx(Constant,'{cf32}',ExpandConstant('{cf32}'),True);
if ISWin64 then
StringChangeEx(Constant,'{cf64}',ExpandConstant('{cf64}'),True);
StringChangeEx(Constant,'{dao}',ExpandConstant('{dao}'),True);
StringChangeEx(Constant,'{group}',ExpandConstant('{group}'),True);
StringChangeEx(Constant,'{localappdata}',ExpandConstant('{localappdata}'),True);
StringChangeEx(Constant,'{userappdata}',ExpandConstant('{userappdata}'),True);
StringChangeEx(Constant,'{commonappdata}',ExpandConstant('{commonappdata}'),True);
StringChangeEx(Constant,'{userdesktop}',ExpandConstant('{userdesktop}'),True);
StringChangeEx(Constant,'{commondesktop}',ExpandConstant('{commondesktop}'),True);
StringChangeEx(Constant,'{userdocs}',ExpandConstant('{userdocs}'),True);
StringChangeEx(Constant,'{commondocs}',ExpandConstant('{commondocs}'),True);
StringChangeEx(Constant,'{userfavorites}',ExpandConstant('{userfavorites}'),True);
StringChangeEx(Constant,'{commonfavorites}',ExpandConstant('{commonfavorites}'),True);
StringChangeEx(Constant,'{userprograms}',ExpandConstant('{userprograms}'),True);
StringChangeEx(Constant,'{commonprograms}',ExpandConstant('{commonprograms}'),True);
StringChangeEx(Constant,'{userstartmenu}',ExpandConstant('{userstartmenu}'),True);
StringChangeEx(Constant,'{commonstartup}',ExpandConstant('{commonstartup}'),True);
StringChangeEx(Constant,'{usertemplates}',ExpandConstant('{usertemplates}'),True);
StringChangeEx(Constant,'{cmd}',ExpandConstant('{cmd}'),True);
StringChangeEx(Constant,'{computername}',ExpandConstant('{computername}'),True);
StringChangeEx(Constant,'{groupname}',ExpandConstant('{groupname}'),True);
StringChangeEx(Constant,'{language}',ExpandConstant('{language}'),True);
StringChangeEx(Constant,'{uninstallexe}',ExpandConstant('{uninstallexe}'),True);
StringChangeEx(Constant,'{sysuserinfoname}',ExpandConstant('{sysuserinfoname}'),True);
StringChangeEx(Constant,'{sysuserinfoorg}',ExpandConstant('{sysuserinfoorg}'),True);
StringChangeEx(Constant,'{username}',ExpandConstant('{username}'),True);
Result:=Constant;
end;

function ConstConv4(Constant: String):String;
begin
StringChangeEx(Constant,'{app}',RemoveBackSlash(AppDir),True);
StringChangeEx(Constant,'{src}',ExpandConstant('{src}'),True);
StringChangeEx(Constant,'{tmp}',ExpandConstant('{tmp}'),True);
StringChangeEx(Constant,'{win}',ExpandConstant('{win}'),True);
StringChangeEx(Constant,'{sys}',ExpandConstant('{sys}'),True);
if ISWin64 then
StringChangeEx(Constant,'{syswow64}',ExpandConstant('{syswow64}'),True);
StringChangeEx(Constant,'{sd}',ExpandConstant('{sd}'),True);
StringChangeEx(Constant,'{pf}',ExpandConstant('{pf}'),True);
StringChangeEx(Constant,'{pf32}',ExpandConstant('{pf32}'),True);
if ISWin64 then
StringChangeEx(Constant,'{pf64}',ExpandConstant('{pf64}'),True);
StringChangeEx(Constant,'{cf}',ExpandConstant('{cf}'),True);
StringChangeEx(Constant,'{cf32}',ExpandConstant('{cf32}'),True);
if ISWin64 then
StringChangeEx(Constant,'{cf64}',ExpandConstant('{cf64}'),True);
StringChangeEx(Constant,'{dao}',ExpandConstant('{dao}'),True);
StringChangeEx(Constant,'{localappdata}',ExpandConstant('{localappdata}'),True);
StringChangeEx(Constant,'{userappdata}',ExpandConstant('{userappdata}'),True);
StringChangeEx(Constant,'{commonappdata}',ExpandConstant('{commonappdata}'),True);
StringChangeEx(Constant,'{userdesktop}',ExpandConstant('{userdesktop}'),True);
StringChangeEx(Constant,'{commondesktop}',ExpandConstant('{commondesktop}'),True);
StringChangeEx(Constant,'{userdocs}',ExpandConstant('{userdocs}'),True);
StringChangeEx(Constant,'{commondocs}',ExpandConstant('{commondocs}'),True);
StringChangeEx(Constant,'{userfavorites}',ExpandConstant('{userfavorites}'),True);
StringChangeEx(Constant,'{commonfavorites}',ExpandConstant('{commonfavorites}'),True);
StringChangeEx(Constant,'{userprograms}',ExpandConstant('{userprograms}'),True);
StringChangeEx(Constant,'{commonprograms}',ExpandConstant('{commonprograms}'),True);
StringChangeEx(Constant,'{userstartmenu}',ExpandConstant('{userstartmenu}'),True);
StringChangeEx(Constant,'{commonstartup}',ExpandConstant('{commonstartup}'),True);
StringChangeEx(Constant,'{usertemplates}',ExpandConstant('{usertemplates}'),True);
StringChangeEx(Constant,'{cmd}',ExpandConstant('{cmd}'),True);
StringChangeEx(Constant,'{computername}',ExpandConstant('{computername}'),True);
StringChangeEx(Constant,'{language}',ExpandConstant('{language}'),True);
StringChangeEx(Constant,'{srcexe}',ExpandConstant('{srcexe}'),True);
StringChangeEx(Constant,'{uninstallexe}',ExpandConstant('{uninstallexe}'),True);
StringChangeEx(Constant,'{sysuserinfoname}',ExpandConstant('{sysuserinfoname}'),True);
StringChangeEx(Constant,'{sysuserinfoorg}',ExpandConstant('{sysuserinfoorg}'),True);
StringChangeEx(Constant,'{userinfoname}',ExpandConstant('{userinfoname}'),True);
StringChangeEx(Constant,'{userinfoorg}',ExpandConstant('{userinfoorg}'),True);
StringChangeEx(Constant,'{userinfoserial}',ExpandConstant('{userinfoserial}'),True);
StringChangeEx(Constant,'{username}',ExpandConstant('{username}'),True);
Result:=Constant;
end;

function ConstConv5(Constant: String):String;
begin
StringChangeEx(Constant,'{app}',RemoveBackSlash(WizardForm.DirEdit.Text),True);
StringChangeEx(Constant,'{src}',ExpandConstant('{src}'),True);
StringChangeEx(Constant,'{tmp}',ExpandConstant('{tmp}'),True);
StringChangeEx(Constant,'{win}',ExpandConstant('{win}'),True);
StringChangeEx(Constant,'{sys}',ExpandConstant('{sys}'),True);
if ISWin64 then
StringChangeEx(Constant,'{syswow64}',ExpandConstant('{syswow64}'),True);
StringChangeEx(Constant,'{sd}',ExpandConstant('{sd}'),True);
StringChangeEx(Constant,'{pf}',ExpandConstant('{pf}'),True);
StringChangeEx(Constant,'{pf32}',ExpandConstant('{pf32}'),True);
if ISWin64 then
StringChangeEx(Constant,'{pf64}',ExpandConstant('{pf64}'),True);
StringChangeEx(Constant,'{cf}',ExpandConstant('{cf}'),True);
StringChangeEx(Constant,'{cf32}',ExpandConstant('{cf32}'),True);
if ISWin64 then
StringChangeEx(Constant,'{cf64}',ExpandConstant('{cf64}'),True);
StringChangeEx(Constant,'{dao}',ExpandConstant('{dao}'),True);
StringChangeEx(Constant,'{localappdata}',ExpandConstant('{localappdata}'),True);
StringChangeEx(Constant,'{userappdata}',ExpandConstant('{userappdata}'),True);
StringChangeEx(Constant,'{commonappdata}',ExpandConstant('{commonappdata}'),True);
StringChangeEx(Constant,'{userdesktop}',ExpandConstant('{userdesktop}'),True);
StringChangeEx(Constant,'{commondesktop}',ExpandConstant('{commondesktop}'),True);
StringChangeEx(Constant,'{userdocs}',ExpandConstant('{userdocs}'),True);
StringChangeEx(Constant,'{commondocs}',ExpandConstant('{commondocs}'),True);
StringChangeEx(Constant,'{userfavorites}',ExpandConstant('{userfavorites}'),True);
StringChangeEx(Constant,'{commonfavorites}',ExpandConstant('{commonfavorites}'),True);
StringChangeEx(Constant,'{userprograms}',ExpandConstant('{userprograms}'),True);
StringChangeEx(Constant,'{commonprograms}',ExpandConstant('{commonprograms}'),True);
StringChangeEx(Constant,'{userstartmenu}',ExpandConstant('{userstartmenu}'),True);
StringChangeEx(Constant,'{commonstartup}',ExpandConstant('{commonstartup}'),True);
StringChangeEx(Constant,'{usertemplates}',ExpandConstant('{usertemplates}'),True);
StringChangeEx(Constant,'{cmd}',ExpandConstant('{cmd}'),True);
StringChangeEx(Constant,'{computername}',ExpandConstant('{computername}'),True);
StringChangeEx(Constant,'{language}',ExpandConstant('{language}'),True);
StringChangeEx(Constant,'{srcexe}',ExpandConstant('{srcexe}'),True);
StringChangeEx(Constant,'{uninstallexe}',ExpandConstant('{uninstallexe}'),True);
StringChangeEx(Constant,'{sysuserinfoname}',ExpandConstant('{sysuserinfoname}'),True);
StringChangeEx(Constant,'{sysuserinfoorg}',ExpandConstant('{sysuserinfoorg}'),True);
StringChangeEx(Constant,'{userinfoname}',ExpandConstant('{userinfoname}'),True);
StringChangeEx(Constant,'{userinfoorg}',ExpandConstant('{userinfoorg}'),True);
StringChangeEx(Constant,'{userinfoserial}',ExpandConstant('{userinfoserial}'),True);
StringChangeEx(Constant,'{username}',ExpandConstant('{username}'),True);
Result:=Constant;
end;

function LanguageTranslator(lang:String):String;
begin
Case lang of
'English': Result:= 'eng';
'Albanian': Result:= 'alb';
'Bosnian': Result:= 'bos';
'Czech': Result:= 'cze';
'French': Result:= 'fre';
'German': Result:= 'ger';
'Hungarian': Result:= 'hun';
'Italian': Result:= 'ita';
'Malaysian': Result:= 'mas';
'Polish': Result:= 'pol';
'Portuguese': Result:= 'por';
'Russian': Result:= 'rus';
'Spanish': Result:= 'esp';
'Turkish': Result:= 'tur';
'Ukrainian': Result:= 'ukr';
'Vietnamese': Result:= 'vit';
end;
end;

function LanguageTranslator2(lang:String):String;
begin
Case lang of
'eng': Result:= 'English';
'alb': Result:= 'Albanian';
'bos': Result:= 'Bosnian';
'cze': Result:= 'Czech';
'fre': Result:= 'French';
'ger': Result:= 'German';
'hun': Result:= 'Hungarian';
'ita': Result:= 'Italian';
'mas': Result:= 'Malaysian';
'pol': Result:= 'Polish';
'por': Result:= 'Portuguese';
'rus': Result:= 'Russian';
'esp': Result:= 'Spanish';
'tur': Result:= 'Turkish';
'ukr': Result:= 'Ukrainian';
'vit': Result:= 'Vietnamese';
end;
end;

function ApplicationName(Default:String):String;
begin
#define ApplicationName ReadIni(SourcePath	+ "\Temp\Setup.ini", "Application", "Name", "")
Result:='{#ApplicationName}';
end;

function ApplicationPublisher(Default:String):String;
begin
#define ApplicationPublisher ReadIni(SourcePath	+ "\Temp\Setup.ini", "Application", "Publisher", "")
Result:='{#ApplicationPublisher}';
end;

function ApplicationVersion(Default:String):String;
begin
#define ApplicationVersion ReadIni(SourcePath	+ "\Temp\Setup.ini", "Application", "Version", "")
Result:='{#ApplicationVersion}';
end;

function ApplicationUninstall(Default:String):String;
begin
Result:=FmtMessage(cm('OtherMessage6_3'), [ApplicationName('')])
end;

function RequiredSize:integer ;
begin
#define RequiredSize ReadIni(SourcePath	+ "\Temp\Setup.ini", "Application", "RequiredSize", "")
Result:={#RequiredSize};
end;

function RecommendedSize:integer ;
begin
#define RecommendedSize ReadIni(SourcePath	+ "\Temp\Setup.ini", "Application", "RecommendedSize", "")
Result:={#RecommendedSize};
end;

function ApplicationExecutableName(Default:String):String;
begin
#define ApplicationExecutableName ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher1Name", "")
Result:='{#ApplicationExecutableName}';
end;

function ApplicationExecutableCheck(Default:String):String;
begin
#define ApplicationExecutableCheck ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher1Type", "CUSTOM")
if ('{#ApplicationExecutableCheck}' = 'Launcher') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_1}'), [ApplicationExecutableName('')]);
if ('{#ApplicationExecutableCheck}' = 'Launcher2') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_1}'), [ApplicationExecutableName('')]);
if ('{#ApplicationExecutableCheck}' = 'Config') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_2}'), [ApplicationExecutableName('')]);
if ('{#ApplicationExecutableCheck}' = 'Config2') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_2}'), [ApplicationExecutableName('')]);
if ('{#ApplicationExecutableCheck}' = 'Play') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_4}'), [ApplicationExecutableName('')]);
if ('{#ApplicationExecutableCheck}' = 'Play2') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_4}'), [ApplicationExecutableName('')]);
if ('{#ApplicationExecutableCheck}' = 'Custom') then
Result:=ApplicationExecutableName('');
end;

function ApplicationExecutable(Default:String):String;
begin
#define ApplicationExecutable ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher1Exe", "")
Result:=ConstConv('{#ApplicationExecutable}');
end;

function UnApplicationExecutable(Default:String):String;
begin
#define UnApplicationExecutable ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher1Exe", "")
Result:=ConstConv3('{#UnApplicationExecutable}');
end;

function ApplicationExecutableName2(Default:String):String;
begin
#define ApplicationExecutableName2 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher2Name", "")
Result:='{#ApplicationExecutableName2}';
end;

function ApplicationExecutableCheck2(Default:String):String;
begin
#define ApplicationExecutableCheck2 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher2Type", "CUSTOM")
if ('{#ApplicationExecutableCheck2}' = 'Launcher') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_1}'), [ApplicationExecutableName2('')]);
if ('{#ApplicationExecutableCheck2}' = 'Launcher2') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_1}'), [ApplicationExecutableName2('')]);
if ('{#ApplicationExecutableCheck2}' = 'Config') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_2}'), [ApplicationExecutableName2('')]);
if ('{#ApplicationExecutableCheck2}' = 'Config2') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_2}'), [ApplicationExecutableName2('')]);
if ('{#ApplicationExecutableCheck2}' = 'Play') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_4}'), [ApplicationExecutableName2('')]);
if ('{#ApplicationExecutableCheck2}' = 'Play2') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_4}'), [ApplicationExecutableName2('')]);
if ('{#ApplicationExecutableCheck2}' = 'Custom') then
Result:=ApplicationExecutableName2('');
end;

function ApplicationExecutable2(Default:String):String;
begin
#define ApplicationExecutable2 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher2Exe", "")
Result:=ConstConv('{#ApplicationExecutable2}');
end;

function UnApplicationExecutable2(Default:String):String;
begin
#define UnApplicationExecutable2 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher2Exe", "")
Result:=ConstConv3('{#UnApplicationExecutable2}');
end;

function ApplicationExecutableName3(Default:String):String;
begin
#define ApplicationExecutableName3 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher3Name", "")
Result:='{#ApplicationExecutableName3}';
end;

function ApplicationExecutableCheck3(Default:String):String;
begin
#define ApplicationExecutableCheck3 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher3Type", "CUSTOM")
if ('{#ApplicationExecutableCheck3}' = 'Launcher') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_1}'), [ApplicationExecutableName3('')]);
if ('{#ApplicationExecutableCheck3}' = 'Launcher2') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_1}'), [ApplicationExecutableName3('')]);
if ('{#ApplicationExecutableCheck3}' = 'Config') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_2}'), [ApplicationExecutableName3('')]);
if ('{#ApplicationExecutableCheck3}' = 'Config2') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_2}'), [ApplicationExecutableName3('')]);
if ('{#ApplicationExecutableCheck3}' = 'Play') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_4}'), [ApplicationExecutableName3('')]);
if ('{#ApplicationExecutableCheck3}' = 'Play2') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_4}'), [ApplicationExecutableName3('')]);
if ('{#ApplicationExecutableCheck3}' = 'Custom') then
Result:=ApplicationExecutableName3('');
end;

function ApplicationExecutable3(Default:String):String;
begin
#define ApplicationExecutable3 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher3Exe", "")
Result:=ConstConv('{#ApplicationExecutable3}');
end;

function UnApplicationExecutable3(Default:String):String;
begin
#define UnApplicationExecutable3 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher3Exe", "")
Result:=ConstConv3('{#UnApplicationExecutable3}');
end;

function ApplicationExecutableName4(Default:String):String;
begin
#define ApplicationExecutableName4 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher4Name", "")
Result:='{#ApplicationExecutableName4}';
end;

function ApplicationExecutableCheck4(Default:String):String;
begin
#define ApplicationExecutableCheck4 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher4Type", "CUSTOM")
if ('{#ApplicationExecutableCheck4}' = 'Launcher') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_1}'), [ApplicationExecutableName4('')]);
if ('{#ApplicationExecutableCheck4}' = 'Launcher2') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_1}'), [ApplicationExecutableName4('')]);
if ('{#ApplicationExecutableCheck4}' = 'Config') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_2}'), [ApplicationExecutableName4('')]);
if ('{#ApplicationExecutableCheck4}' = 'Config2') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_2}'), [ApplicationExecutableName4('')]);
if ('{#ApplicationExecutableCheck4}' = 'Play') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_4}'), [ApplicationExecutableName4('')]);
if ('{#ApplicationExecutableCheck4}' = 'Play2') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_4}'), [ApplicationExecutableName4('')]);
if ('{#ApplicationExecutableCheck4}' = 'Custom') then
Result:=ApplicationExecutableName4('');
end;

function ApplicationExecutable4(Default:String):String;
begin
#define ApplicationExecutable4 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher4Exe", "")
Result:=ConstConv('{#ApplicationExecutable4}');
end;

function UnApplicationExecutable4(Default:String):String;
begin
#define UnApplicationExecutable4 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher4Exe", "")
Result:=ConstConv3('{#UnApplicationExecutable4}');
end;

function ApplicationExecutableName5(Default:String):String;
begin
#define ApplicationExecutableName5 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher5Name", "")
Result:='{#ApplicationExecutableName5}';
end;

function ApplicationExecutableCheck5(Default:String):String;
begin
#define ApplicationExecutableCheck5 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher5Type", "CUSTOM")
if ('{#ApplicationExecutableCheck5}' = 'Launcher') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_1}'), [ApplicationExecutableName5('')]);
if ('{#ApplicationExecutableCheck5}' = 'Launcher2') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_1}'), [ApplicationExecutableName5('')]);
if ('{#ApplicationExecutableCheck5}' = 'Config') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_2}'), [ApplicationExecutableName5('')]);
if ('{#ApplicationExecutableCheck5}' = 'Config2') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_2}'), [ApplicationExecutableName5('')]);
if ('{#ApplicationExecutableCheck5}' = 'Play') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_4}'), [ApplicationExecutableName5('')]);
if ('{#ApplicationExecutableCheck5}' = 'Play2') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_4}'), [ApplicationExecutableName5('')]);
if ('{#ApplicationExecutableCheck5}' = 'Custom') then
Result:=ApplicationExecutableName5('');
end;

function ApplicationExecutable5(Default:String):String;
begin
#define ApplicationExecutable5 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher5Exe", "")
Result:=ConstConv('{#ApplicationExecutable5}');
end;

function UnApplicationExecutable5(Default:String):String;
begin
#define UnApplicationExecutable5 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher5Exe", "")
Result:=ConstConv3('{#UnApplicationExecutable5}');
end;

function ApplicationExecutableName6(Default:String):String;
begin
#define ApplicationExecutableName6 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher6Name", "")
Result:='{#ApplicationExecutableName6}';
end;

function ApplicationExecutableCheck6(Default:String):String;
begin
#define ApplicationExecutableCheck6 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher6Type", "CUSTOM")
if ('{#ApplicationExecutableCheck6}' = 'Launcher') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_1}'), [ApplicationExecutableName6('')]);
if ('{#ApplicationExecutableCheck6}' = 'Launcher2') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_1}'), [ApplicationExecutableName6('')]);
if ('{#ApplicationExecutableCheck6}' = 'Config') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_2}'), [ApplicationExecutableName6('')]);
if ('{#ApplicationExecutableCheck6}' = 'Config2') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_2}'), [ApplicationExecutableName6('')]);
if ('{#ApplicationExecutableCheck6}' = 'Play') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_4}'), [ApplicationExecutableName6('')]);
if ('{#ApplicationExecutableCheck6}' = 'Play2') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_4}'), [ApplicationExecutableName6('')]);
if ('{#ApplicationExecutableCheck6}' = 'Custom') then
Result:=ApplicationExecutableName6('');
end;

function ApplicationExecutable6(Default:String):String;
begin
#define ApplicationExecutable6 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher6Exe", "")
Result:=ConstConv('{#ApplicationExecutable6}');
end;

function UnApplicationExecutable6(Default:String):String;
begin
#define UnApplicationExecutable6 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher6Exe", "")
Result:=ConstConv3('{#UnApplicationExecutable6}');
end;

function ApplicationExecutableName7(Default:String):String;
begin
#define ApplicationExecutableName7 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher7Name", "")
Result:='{#ApplicationExecutableName7}';
end;

function ApplicationExecutableCheck7(Default:String):String;
begin
#define ApplicationExecutableCheck7 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher7Type", "CUSTOM")
if ('{#ApplicationExecutableCheck7}' = 'Launcher') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_1}'), [ApplicationExecutableName7('')]);
if ('{#ApplicationExecutableCheck7}' = 'Launcher2') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_1}'), [ApplicationExecutableName7('')]);
if ('{#ApplicationExecutableCheck7}' = 'Config') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_2}'), [ApplicationExecutableName7('')]);
if ('{#ApplicationExecutableCheck7}' = 'Config2') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_2}'), [ApplicationExecutableName7('')]);
if ('{#ApplicationExecutableCheck7}' = 'Play') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_4}'), [ApplicationExecutableName7('')]);
if ('{#ApplicationExecutableCheck7}' = 'Play2') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_4}'), [ApplicationExecutableName7('')]);
if ('{#ApplicationExecutableCheck7}' = 'Custom') then
Result:=ApplicationExecutableName7('');
end;

function ApplicationExecutable7(Default:String):String;
begin
#define ApplicationExecutable7 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher7Exe", "")
Result:=ConstConv('{#ApplicationExecutable7}');
end;

function UnApplicationExecutable7(Default:String):String;
begin
#define UnApplicationExecutable7 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher7Exe", "")
Result:=ConstConv3('{#UnApplicationExecutable7}');
end;

function ApplicationExecutableName8(Default:String):String;
begin
#define ApplicationExecutableName8 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher8Name", "")
Result:='{#ApplicationExecutableName8}';
end;

function ApplicationExecutableCheck8(Default:String):String;
begin
#define ApplicationExecutableCheck8 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher8Type", "CUSTOM")
if ('{#ApplicationExecutableCheck8}' = 'Launcher') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_1}'), [ApplicationExecutableName8('')]);
if ('{#ApplicationExecutableCheck8}' = 'Launcher2') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_1}'), [ApplicationExecutableName8('')]);
if ('{#ApplicationExecutableCheck8}' = 'Config') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_2}'), [ApplicationExecutableName8('')]);
if ('{#ApplicationExecutableCheck8}' = 'Config2') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_2}'), [ApplicationExecutableName8('')]);
if ('{#ApplicationExecutableCheck8}' = 'Play') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_4}'), [ApplicationExecutableName8('')]);
if ('{#ApplicationExecutableCheck8}' = 'Play2') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_4}'), [ApplicationExecutableName8('')]);
if ('{#ApplicationExecutableCheck8}' = 'Custom') then
Result:=ApplicationExecutableName8('');
end;

function ApplicationExecutable8(Default:String):String;
begin
#define ApplicationExecutable8 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher8Exe", "")
Result:=ConstConv('{#ApplicationExecutable8}');
end;

function UnApplicationExecutable8(Default:String):String;
begin
#define UnApplicationExecutable8 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher8Exe", "")
Result:=ConstConv3('{#UnApplicationExecutable8}');
end;

function ApplicationExecutableName9(Default:String):String;
begin
#define ApplicationExecutableName9 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher9Name", "")
Result:='{#ApplicationExecutableName9}';
end;

function ApplicationExecutableCheck9(Default:String):String;
begin
#define ApplicationExecutableCheck9 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher9Type", "CUSTOM")
if ('{#ApplicationExecutableCheck9}' = 'Launcher') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_1}'), [ApplicationExecutableName9('')]);
if ('{#ApplicationExecutableCheck9}' = 'Launcher2') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_1}'), [ApplicationExecutableName9('')]);
if ('{#ApplicationExecutableCheck9}' = 'Config') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_2}'), [ApplicationExecutableName9('')]);
if ('{#ApplicationExecutableCheck9}' = 'Config2') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_2}'), [ApplicationExecutableName9('')]);
if ('{#ApplicationExecutableCheck9}' = 'Play') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_4}'), [ApplicationExecutableName9('')]);
if ('{#ApplicationExecutableCheck9}' = 'Play2') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_4}'), [ApplicationExecutableName9('')]);
if ('{#ApplicationExecutableCheck9}' = 'Custom') then
Result:=ApplicationExecutableName9('');
end;

function ApplicationExecutable9(Default:String):String;
begin
#define ApplicationExecutable9 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher9Exe", "")
Result:=ConstConv('{#ApplicationExecutable9}');
end;

function UnApplicationExecutable9(Default:String):String;
begin
#define UnApplicationExecutable9 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher9Exe", "")
Result:=ConstConv3('{#UnApplicationExecutable9}');
end;

function ApplicationExecutableName10(Default:String):String;
begin
#define ApplicationExecutableName10 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher10Name", "")
Result:='{#ApplicationExecutableName10}';
end;

function ApplicationExecutableCheck10(Default:String):String;
begin
#define ApplicationExecutableCheck10 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher10Type", "CUSTOM")
if ('{#ApplicationExecutableCheck10}' = 'Launcher') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_1}'), [ApplicationExecutableName10('')]);
if ('{#ApplicationExecutableCheck10}' = 'Launcher2') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_1}'), [ApplicationExecutableName10('')]);
if ('{#ApplicationExecutableCheck10}' = 'Config') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_2}'), [ApplicationExecutableName10('')]);
if ('{#ApplicationExecutableCheck10}' = 'Config2') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_2}'), [ApplicationExecutableName10('')]);
if ('{#ApplicationExecutableCheck10}' = 'Play') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_4}'), [ApplicationExecutableName10('')]);
if ('{#ApplicationExecutableCheck10}' = 'Play2') then
Result:=FmtMessage(ExpandConstant('%1 {cm:OtherMessage6_4}'), [ApplicationExecutableName10('')]);
if ('{#ApplicationExecutableCheck10}' = 'Custom') then
Result:=ApplicationExecutableName10('');
end;

function ApplicationExecutable10(Default:String):String;
begin
#define ApplicationExecutable10 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher10Exe", "")
Result:=ConstConv('{#ApplicationExecutable10}');
end;

function UnApplicationExecutable10(Default:String):String;
begin
#define UnApplicationExecutable10 ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher10Exe", "")
Result:=ConstConv3('{#UnApplicationExecutable10}');
end;

function InstallerWidth:integer ;
begin
#define InstallerWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "InstallerWidth", "900")
Result:={#InstallerWidth};
end;

function InstallerHeight:integer ;
begin
#define InstallerHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "InstallerHeight", "500")
Result:={#InstallerHeight};
end;

function SmallInstallerWidth:integer ;
begin
#define SmallInstallerWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallInstallerWidth", "500")
Result:={#SmallInstallerWidth};
end;

function SmallInstallerHeight:integer ;
begin
#define SmallInstallerHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallInstallerHeight", "200")
Result:={#SmallInstallerHeight};
end;

function TextPositionLeft:integer ;
begin
#define TextPositionLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "TextFormLeft", "0")
Result:={#TextPositionLeft};
end;

function TextPositionTop:integer ;
begin
#define TextPositionTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "TextFormTop", "0")
Result:={#TextPositionTop};
end;

function TextPositionWidth:integer ;
begin
#define TextPositionWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "TextFormWidth", "600")
Result:={#TextPositionWidth};
end;

function TextPositionHeight:integer ;
begin
#define TextPositionHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "TextFormHeight", "300")
Result:={#TextPositionHeight};
end;

function SmallTextPositionLeft:integer ;
begin
#define SmallTextPositionLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallTextFormLeft", "0")
Result:={#SmallTextPositionLeft};
end;

function SmallTextPositionTop:integer ;
begin
#define SmallTextPositionTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallTextFormTop", "0")
Result:={#SmallTextPositionTop};
end;

function SmallTextPositionWidth:integer ;
begin
#define SmallTextPositionWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallTextFormWidth", "500")
Result:={#SmallTextPositionWidth};
end;

function SmallTextPositionHeight:integer ;
begin
#define SmallTextPositionHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallTextFormHeight", "200")
Result:={#SmallTextPositionHeight};
end;

function TextFontName:String;
begin
#define TextFontName ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "TextFormFontName", "Segoe UI")
Result:='{#TextFontName}';
end;

function TextFontSize:integer ;
begin
#define TextFontSize ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "TextFormFontSize", "13")
Result:={#TextFontSize};
end;

function TextFontColor:integer ;
begin
#define TextFontColor ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "TextFormFontColor", "#FFFFFF")
Result:={#TextFontColor};
end;

function TextFontBold:Boolean;
begin
#define TextFontBold ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "TextFormFontBold", "0")
Result:={#TextFontBold} = 1;
end;

function TextFontItalic:Boolean;
begin
#define TextFontItalic ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "TextFormFontItalic", "0")
Result:={#TextFontItalic} = 1;
end;

function TextFontUnderline:Boolean;
begin
#define TextFontUnderline ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "TextFormFontUnderline", "0")
Result:={#TextFontUnderline} = 1;
end;

function TextFontStrikeOut:Boolean;
begin
#define TextFontStrikeOut ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "TextFormFontStrikeOut", "0")
Result:={#TextFontStrikeOut} = 1;
end;

function TextFontUppercase:Boolean;
begin
#define TextFontUppercase ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "TextFormFontUppercase", "0")
Result:={#TextFontUppercase} = 1;
end;

function TextAlignment:String;
begin
#define TextAlignment ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "TextFormHorzAlign", "Center")
Result:='{#TextAlignment}';
end;

function SmallTextFontName:String;
begin
#define SmallTextFontName ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallTextFormFontName", "Segoe UI")
Result:='{#SmallTextFontName}';
end;

function SmallTextOneFontSize:integer ;
begin
#define SmallTextOneFontSize ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallTextFormOneFontSize", "11")
Result:={#SmallTextOneFontSize};
end;

function SmallTextTwoFontSize:integer ;
begin
#define SmallTextTwoFontSize ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallTextFormTwoFontSize", "11")
Result:={#SmallTextTwoFontSize};
end;

function SmallTextFontColor:integer ;
begin
#define SmallTextFontColor ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallTextFormFontColor", "#FFFFFF")
Result:=StrToInt('{#SmallTextFontColor}');
end;

function SmallTextFontBold:Boolean;
begin
#define SmallTextFontBold ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallTextFormFontBold", "0")
Result:={#SmallTextFontBold} = 1;
end;

function SmallTextFontItalic:Boolean;
begin
#define SmallTextFontItalic ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallTextFormFontItalic", "0")
Result:={#SmallTextFontItalic} = 1;
end;

function SmallTextFontUnderline:Boolean;
begin
#define SmallTextFontUnderline ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallTextFormFontUnderline", "0")
Result:={#SmallTextFontUnderline} = 1;
end;

function SmallTextFontStrikeOut:Boolean;
begin
#define SmallTextFontStrikeOut ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallTextFormFontStrikeOut", "0")
Result:={#SmallTextFontStrikeOut} = 1;
end;

function SmallTextFontUppercase:Boolean;
begin
#define SmallTextFontUppercase ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallTextFormFontUppercase", "0")
Result:={#SmallTextFontUppercase} = 1;
end;

function SmallTextAlignment:String;
begin
#define SmallTextAlignment ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallTextFormHorzAlign", "Center")
Result:='{#SmallTextAlignment}';
end;

function TextOneFontName:String;
begin
Result:=TextFontName;
end;

function TextOneFontSize:integer ;
begin
#define TextOneFontSize ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "TextFormOneFontSize", "13")
Result:={#TextOneFontSize};
end;

function TextOneFontBold:Boolean;
begin
Result:=TextFontBold;
end;

function TextOneFontItalic:Boolean;
begin
Result:=TextFontItalic;
end;

function TextOneFontUnderline:Boolean;
begin
Result:=TextFontUnderline;
end;

function TextOneFontStrikeOut:Boolean;
begin
Result:=TextFontStrikeOut;
end;

function TextOneFontUppercase:Boolean;
begin
Result:= TextFontUppercase;
end;

function TextOneFontColor:integer ;
begin
Result:=TextFontColor;
end;

function TextOneCenter:TAlignment ;
begin
if TextAlignment = 'Right' then
Result:=taRightJustify;
if TextAlignment = 'Left' then
Result:=taLeftJustify;
if TextAlignment = 'Center' then
Result:=taCenter;
end;

function TextTwoFontName:String;
begin
Result:=TextFontName;
end;

function TextTwoFontSize:integer ;
begin
#define TextTwoFontSize ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "TextFormTwoFontSize", "13")
Result:={#TextTwoFontSize};
end;

function TextTwoFontBold:Boolean;
begin
Result:=TextFontBold;
end;

function TextTwoFontItalic:Boolean;
begin
Result:=TextFontItalic;
end;

function TextTwoFontUnderline:Boolean;
begin
Result:=TextFontUnderline;
end;

function TextTwoFontStrikeOut:Boolean;
begin
Result:=TextFontStrikeOut;
end;

function TextTwoFontUppercase:Boolean;
begin
Result:= TextFontUppercase;
end;

function TextTwoFontColor:integer ;
begin
Result:=TextFontColor;
end;

function TextTwoCenter:TAlignment ;
begin
if TextAlignment = 'Right' then
Result:=taRightJustify;
if TextAlignment = 'Left' then
Result:=taLeftJustify;
if TextAlignment = 'Center' then
Result:=taCenter;
end;

function SmallTextOneFontName:String;
begin
Result:=SmallTextFontName;
end;

function SmallTextOneFontBold:Boolean;
begin
Result:=SmallTextFontBold;
end;

function SmallTextOneFontItalic:Boolean;
begin
Result:=SmallTextFontItalic;
end;

function SmallTextOneFontUnderline:Boolean;
begin
Result:=SmallTextFontUnderline;
end;

function SmallTextOneFontStrikeOut:Boolean;
begin
Result:=SmallTextFontStrikeOut;
end;

function SmallTextOneFontUppercase:Boolean;
begin
Result:= SmallTextFontUppercase;
end;

function SmallTextOneFontColor:integer ;
begin
Result:=SmallTextFontColor;
end;

function SmallTextOneCenter:TAlignment ;
begin
if SmallTextAlignment = 'Right' then
Result:=taRightJustify;
if SmallTextAlignment = 'Left' then
Result:=taLeftJustify;
if SmallTextAlignment = 'Center' then
Result:=taCenter;
end;

function SmallTextTwoFontName:String;
begin
Result:=SmallTextFontName;
end;

function SmallTextTwoFontBold:Boolean;
begin
Result:=SmallTextFontBold;
end;

function SmallTextTwoFontItalic:Boolean;
begin
Result:=SmallTextFontItalic;
end;

function SmallTextTwoFontUnderline:Boolean;
begin
Result:=SmallTextFontUnderline;
end;

function SmallTextTwoFontStrikeOut:Boolean;
begin
Result:=SmallTextFontStrikeOut;
end;

function SmallTextTwoFontUppercase:Boolean;
begin
Result:= SmallTextFontUppercase;
end;

function SmallTextTwoFontColor:integer ;
begin
Result:=SmallTextFontColor;
end;

function SmallTextTwoCenter:TAlignment ;
begin
if SmallTextAlignment = 'Right' then
Result:=taRightJustify;
if SmallTextAlignment = 'Left' then
Result:=taLeftJustify;
if SmallTextAlignment = 'Center' then
Result:=taCenter;
end;

function SmallButtonFontName:String;
begin
#define SmallButtonFontName ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallButtonFontName", "Segoe UI")
Result:='{#SmallButtonFontName}';
end;

function SmallButtonFontSize:integer ;
begin
#define SmallButtonFontSize ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallButtonFontSize", "11")
Result:={#SmallButtonFontSize};
end;

function SmallButtonFontSizeSelected:integer ;
begin
#define SmallButtonFontSizeSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallButtonFontSizeSelected", ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallButtonFontSize", "11"))
Result:={#SmallButtonFontSizeSelected};
end;

function SmallButtonFontSizeClicked:integer ;
begin
#define SmallButtonFontSizeClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallButtonFontSizeClicked", ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallButtonFontSize", "11"))
Result:={#SmallButtonFontSizeClicked};
end;

function SmallButtonFontSizeDisabled:integer ;
begin
#define SmallButtonFontSizeDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallButtonFontSizeDisabled", ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallButtonFontSize", "11"))
Result:={#SmallButtonFontSizeDisabled};
end;

function SmallButtonFontBold:Boolean;
begin
#define SmallButtonFontBold ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallButtonFontBold", "0")
Result:={#SmallButtonFontBold} = 1;
end;

function SmallButtonFontItalic:Boolean;
begin
#define SmallButtonFontItalic ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallButtonFontItalic", "0")
Result:={#SmallButtonFontItalic} = 1;
end;

function SmallButtonFontUnderline:Boolean;
begin
#define SmallButtonFontUnderline ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallButtonFontUnderline", "0")
Result:={#SmallButtonFontUnderline} = 1;
end;

function SmallButtonFontStrikeOut:Boolean;
begin
#define SmallButtonFontStrikeOut ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallButtonFontStrikeOut", "0")
Result:={#SmallButtonFontStrikeOut} = 1;
end;

function SmallButtonFontUppercase:Boolean;
begin
#define SmallButtonFontUppercase ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallButtonFontUppercase", "0")
Result:={#SmallButtonFontUppercase} = 1;
end;

function SmallButtonFontColor:integer ;
begin
#define SmallButtonFontColor ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallButtonFontColor", "#FFFFFF")
Result:=StrToInt('{#SmallButtonFontColor}');
end;

function SmallButtonFontColorSelected:integer ;
begin
#define SmallButtonFontColorSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallButtonFontColorSelected", "#FFFFFF")
Result:=StrToInt('{#SmallButtonFontColorSelected}');
end;

function SmallButtonFontColorClicked:integer ;
begin
#define SmallButtonFontColorClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallButtonFontColorClicked", "#FFFFFF")
Result:=StrToInt('{#SmallButtonFontColorClicked}');
end;

function SmallButtonFontColorDisabled:integer ;
begin
#define SmallButtonFontColorDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallButtonFontColorDisabled", "#FFFFFF")
Result:=StrToInt('{#SmallButtonFontColorDisabled}');
end;

function SmallButtonTextHorzAlign:TAlignment;
begin
#define SmallButtonTextHorzAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallButtonTextHorzAlign", "Center")
if '{#SmallButtonTextHorzAlign}' = 'Right' then
Result:=taRightJustify;
if '{#SmallButtonTextHorzAlign}' = 'Left' then
Result:=taLeftJustify;
if '{#SmallButtonTextHorzAlign}' = 'Center' then
Result:=taCenter;
end;

function SmallButtonTextVertAlign:TTextLayout;
begin
#define SmallButtonTextVertAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallButtonTextVertAlign", "Center")
if '{#SmallButtonTextVertAlign}' = 'Center' then
Result:=tlCenter;
if '{#SmallButtonTextVertAlign}' = 'Top' then
Result:=tlTop;
if '{#SmallButtonTextVertAlign}' = 'Bottom' then
Result:=tlBottom;
end;

function SmallButtonTextOffsetX:integer ;
begin
#define SmallButtonTextOffsetX ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallButtonTextOffsetX", "0")
Result:={#SmallButtonTextOffsetX};
end;

function SmallButtonTextOffsetY:integer ;
begin
#define SmallButtonTextOffsetY ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallButtonTextOffsetY", "0")
Result:={#SmallButtonTextOffsetY};
end;

function BackButtonLeft:integer ;
begin
#define BackButtonLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "BackButtonLeft", "0")
Result:={#BackButtonLeft};
end;

function BackButtonTop:integer ;
begin
#define BackButtonTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "BackButtonTop", "0")
Result:={#BackButtonTop};
end;

function BackButtonWidth:integer ;
begin
#define BackButtonWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "BackButtonWidth", "200")
Result:={#BackButtonWidth};
end;

function BackButtonHeight:integer ;
begin
#define BackButtonHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "BackButtonHeight", "30")
Result:={#BackButtonHeight};
end;

function BackButtonTextOffsetX:integer ;
begin
#define BackButtonTextOffsetX ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "BackButtonTextOffsetX", "0")
Result:={#BackButtonTextOffsetX};
end;

function BackButtonTextOffsetY:integer ;
begin
#define BackButtonTextOffsetY ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "BackButtonTextOffsetY", "0")
Result:={#BackButtonTextOffsetY};
end;

function BackButtonFontName:String;
begin
#define BackButtonFontName ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "BackButtonFontName", "Segoe UI")
Result:='{#BackButtonFontName}';
end;

function BackButtonFontSize:integer ;
begin
#define BackButtonFontSize ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "BackButtonFontSize", "13")
Result:={#BackButtonFontSize};
end;

function BackButtonFontSizeSelected:integer ;
begin
#define BackButtonFontSizeSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "BackButtonFontSizeSelected", "13")
Result:={#BackButtonFontSizeSelected};
end;

function BackButtonFontSizeClicked:integer ;
begin
#define BackButtonFontSizeClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "BackButtonFontSizeClicked", "13")
Result:={#BackButtonFontSizeClicked};
end;

function BackButtonFontSizeDisabled:integer ;
begin
#define BackButtonFontSizeDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "BackButtonFontSize", "13")
Result:={#BackButtonFontSizeDisabled};
end;

function BackButtonFontBold:Boolean;
begin
#define BackButtonFontBold ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "BackButtonFontBold", "0")
Result:={#BackButtonFontBold} = 1;
end;

function BackButtonFontItalic:Boolean;
begin
#define BackButtonFontItalic ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "BackButtonFontItalic", "0")
Result:={#BackButtonFontItalic} = 1;
end;

function BackButtonFontUnderline:Boolean;
begin
#define BackButtonFontUnderline ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "BackButtonFontUnderline", "0")
Result:={#BackButtonFontUnderline} = 1;
end;

function BackButtonFontStrikeOut:Boolean;
begin
#define BackButtonFontStrikeOut ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "BackButtonFontStrikeOut", "0")
Result:={#BackButtonFontStrikeOut} = 1;
end;

function BackButtonFontUppercase:Boolean;
begin
#define BackButtonFontUppercase ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "BackButtonFontUppercase", "0")
Result:={#BackButtonFontUppercase} = 1;
end;

function BackButtonFontColor:integer ;
begin
#define BackButtonFontColor ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "BackButtonFontColor", "#FFFFFF")
Result:=StrToInt('{#BackButtonFontColor}');
end;

function BackButtonFontColorSelected:integer ;
begin
#define BackButtonFontColorSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "BackButtonFontColorSelected", "#FFFFFF")
Result:=StrToInt('{#BackButtonFontColorSelected}');
end;

function BackButtonFontColorClicked:integer ;
begin
#define BackButtonFontColorClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "BackButtonFontColorClicked", "#FFFFFF")
Result:=StrToInt('{#BackButtonFontColorClicked}');
end;

function BackButtonFontColorDisabled:integer ;
begin
#define BackButtonFontColorDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "BackButtonFontColorDisabled", "#FFFFFF")
Result:=StrToInt('{#BackButtonFontColorDisabled}');
end;

function BackButtonTextHorzAlign:TAlignment;
begin
#define BackButtonTextHorzAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "BackButtonTextHorzAlign", "Center")
if '{#BackButtonTextHorzAlign}' = 'Right' then
Result:=taRightJustify;
if '{#BackButtonTextHorzAlign}' = 'Left' then
Result:=taLeftJustify;
if '{#BackButtonTextHorzAlign}' = 'Center' then
Result:=taCenter;
end;

function BackButtonTextVertAlign:TTextLayout;
begin
#define BackButtonTextVertAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "BackButtonTextVertAlign", "Center")
if '{#BackButtonTextVertAlign}' = 'Center' then
Result:=tlCenter;
if '{#BackButtonTextVertAlign}' = 'Top' then
Result:=tlTop;
if '{#BackButtonTextVertAlign}' = 'Bottom' then
Result:=tlBottom;
end;

function NextButtonLeft:integer ;
begin
#define NextButtonLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "NextButtonLeft", "0")
Result:={#NextButtonLeft};
end;

function NextButtonTop:integer ;
begin
#define NextButtonTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "NextButtonTop", "0")
Result:={#NextButtonTop};
end;

function NextButtonWidth:integer ;
begin
#define NextButtonWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "NextButtonWidth", "200")
Result:={#NextButtonWidth};
end;

function NextButtonHeight:integer ;
begin
#define NextButtonHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "NextButtonHeight", "30")
Result:={#NextButtonHeight};
end;

function NextButtonTextOffsetX:integer ;
begin
#define NextButtonTextOffsetX ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "NextButtonTextOffsetX", "0")
Result:={#NextButtonTextOffsetX};
end;

function NextButtonTextOffsetY:integer ;
begin
#define NextButtonTextOffsetY ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "NextButtonTextOffsetY", "0")
Result:={#NextButtonTextOffsetY};
end;

function NextButtonFontName:String;
begin
#define NextButtonFontName ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "NextButtonFontName", "Segoe UI")
Result:='{#NextButtonFontName}';
end;

function NextButtonFontSize:integer ;
begin
#define NextButtonFontSize ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "NextButtonFontSize", "13")
Result:={#NextButtonFontSize};
end;

function NextButtonFontSizeSelected:integer ;
begin
#define NextButtonFontSizeSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "NextButtonFontSizeSelected", "13")
Result:={#NextButtonFontSizeSelected};
end;

function NextButtonFontSizeClicked:integer ;
begin
#define NextButtonFontSizeClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "NextButtonFontSizeClicked", "13")
Result:={#NextButtonFontSizeClicked};
end;

function NextButtonFontSizeDisabled:integer ;
begin
#define NextButtonFontSizeDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "NextButtonFontSize", "13")
Result:={#NextButtonFontSizeDisabled};
end;

function NextButtonFontBold:Boolean;
begin
#define NextButtonFontBold ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "NextButtonFontBold", "0")
Result:={#NextButtonFontBold} = 1;
end;

function NextButtonFontItalic:Boolean;
begin
#define NextButtonFontItalic ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "NextButtonFontItalic", "0")
Result:={#NextButtonFontItalic} = 1;
end;

function NextButtonFontUnderline:Boolean;
begin
#define NextButtonFontUnderline ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "NextButtonFontUnderline", "0")
Result:={#NextButtonFontUnderline} = 1;
end;

function NextButtonFontStrikeOut:Boolean;
begin
#define NextButtonFontStrikeOut ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "NextButtonFontStrikeOut", "0")
Result:={#NextButtonFontStrikeOut} = 1;
end;

function NextButtonFontUppercase:Boolean;
begin
#define NextButtonFontUppercase ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "NextButtonFontUppercase", "0")
Result:={#NextButtonFontUppercase} = 1;
end;

function NextButtonFontColor:integer ;
begin
#define NextButtonFontColor ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "NextButtonFontColor", "#FFFFFF")
Result:=StrToInt('{#NextButtonFontColor}');
end;

function NextButtonFontColorSelected:integer ;
begin
#define NextButtonFontColorSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "NextButtonFontColorSelected", "#FFFFFF")
Result:=StrToInt('{#NextButtonFontColorSelected}');
end;

function NextButtonFontColorClicked:integer ;
begin
#define NextButtonFontColorClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "NextButtonFontColorClicked", "#FFFFFF")
Result:=StrToInt('{#NextButtonFontColorClicked}');
end;

function NextButtonFontColorDisabled:integer ;
begin
#define NextButtonFontColorDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "NextButtonFontColorDisabled", "#FFFFFF")
Result:=StrToInt('{#NextButtonFontColorDisabled}');
end;

function NextButtonTextHorzAlign:TAlignment;
begin
#define NextButtonTextHorzAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "NextButtonTextHorzAlign", "Center")
if '{#NextButtonTextHorzAlign}' = 'Right' then
Result:=taRightJustify;
if '{#NextButtonTextHorzAlign}' = 'Left' then
Result:=taLeftJustify;
if '{#NextButtonTextHorzAlign}' = 'Center' then
Result:=taCenter;
end;

function NextButtonTextVertAlign:TTextLayout;
begin
#define NextButtonTextVertAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "NextButtonTextVertAlign", "Center")
if '{#NextButtonTextVertAlign}' = 'Center' then
Result:=tlCenter;
if '{#NextButtonTextVertAlign}' = 'Top' then
Result:=tlTop;
if '{#NextButtonTextVertAlign}' = 'Bottom' then
Result:=tlBottom;
end;

function CancelButtonLeft:integer ;
begin
#define CancelButtonLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "CancelButtonLeft", "0")
Result:={#CancelButtonLeft};
end;

function CancelButtonTop:integer ;
begin
#define CancelButtonTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "CancelButtonTop", "0")
Result:={#CancelButtonTop};
end;

function CancelButtonWidth:integer ;
begin
#define CancelButtonWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "CancelButtonWidth", "200")
Result:={#CancelButtonWidth};
end;

function CancelButtonHeight:integer ;
begin
#define CancelButtonHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "CancelButtonHeight", "30")
Result:={#CancelButtonHeight};
end;

function CancelButtonTextOffsetX:integer ;
begin
#define CancelButtonTextOffsetX ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "CancelButtonTextOffsetX", "0")
Result:={#CancelButtonTextOffsetX};
end;

function CancelButtonTextOffsetY:integer ;
begin
#define CancelButtonTextOffsetY ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "CancelButtonTextOffsetY", "0")
Result:={#CancelButtonTextOffsetY};
end;

function CancelButtonFontName:String;
begin
#define CancelButtonFontName ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "CancelButtonFontName", "Segoe UI")
Result:='{#CancelButtonFontName}';
end;

function CancelButtonFontSize:integer ;
begin
#define CancelButtonFontSize ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "CancelButtonFontSize", "13")
Result:={#CancelButtonFontSize};
end;

function CancelButtonFontSizeSelected:integer ;
begin
#define CancelButtonFontSizeSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "CancelButtonFontSizeSelected", "13")
Result:={#CancelButtonFontSizeSelected};
end;

function CancelButtonFontSizeClicked:integer ;
begin
#define CancelButtonFontSizeClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "CancelButtonFontSizeClicked", "13")
Result:={#CancelButtonFontSizeClicked};
end;

function CancelButtonFontSizeDisabled:integer ;
begin
#define CancelButtonFontSizeDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "CancelButtonFontSize", "13")
Result:={#CancelButtonFontSizeDisabled};
end;

function CancelButtonFontBold:Boolean;
begin
#define CancelButtonFontBold ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "CancelButtonFontBold", "0")
Result:={#CancelButtonFontBold} = 1;
end;

function CancelButtonFontItalic:Boolean;
begin
#define CancelButtonFontItalic ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "CancelButtonFontItalic", "0")
Result:={#CancelButtonFontItalic} = 1;
end;

function CancelButtonFontUnderline:Boolean;
begin
#define CancelButtonFontUnderline ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "CancelButtonFontUnderline", "0")
Result:={#CancelButtonFontUnderline} = 1;
end;

function CancelButtonFontStrikeOut:Boolean;
begin
#define CancelButtonFontStrikeOut ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "CancelButtonFontStrikeOut", "0")
Result:={#CancelButtonFontStrikeOut} = 1;
end;

function CancelButtonFontUppercase:Boolean;
begin
#define CancelButtonFontUppercase ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "CancelButtonFontUppercase", "0")
Result:={#CancelButtonFontUppercase} = 1;
end;

function CancelButtonFontColor:integer ;
begin
#define CancelButtonFontColor ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "CancelButtonFontColor", "#FFFFFF")
Result:=StrToInt('{#CancelButtonFontColor}');
end;

function CancelButtonFontColorSelected:integer ;
begin
#define CancelButtonFontColorSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "CancelButtonFontColorSelected", "#FFFFFF")
Result:=StrToInt('{#CancelButtonFontColorSelected}');
end;

function CancelButtonFontColorClicked:integer ;
begin
#define CancelButtonFontColorClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "CancelButtonFontColorClicked", "#FFFFFF")
Result:=StrToInt('{#CancelButtonFontColorClicked}');
end;

function CancelButtonFontColorDisabled:integer ;
begin
#define CancelButtonFontColorDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "CancelButtonFontColorDisabled", "#FFFFFF")
Result:=StrToInt('{#CancelButtonFontColorDisabled}');
end;

function CancelButtonTextHorzAlign:TAlignment;
begin
#define CancelButtonTextHorzAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "CancelButtonTextHorzAlign", "Center")
if '{#CancelButtonTextHorzAlign}' = 'Right' then
Result:=taRightJustify;
if '{#CancelButtonTextHorzAlign}' = 'Left' then
Result:=taLeftJustify;
if '{#CancelButtonTextHorzAlign}' = 'Center' then
Result:=taCenter;
end;

function CancelButtonTextVertAlign:TTextLayout;
begin
#define CancelButtonTextVertAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "CancelButtonTextVertAlign", "Center")
if '{#CancelButtonTextVertAlign}' = 'Center' then
Result:=tlCenter;
if '{#CancelButtonTextVertAlign}' = 'Top' then
Result:=tlTop;
if '{#CancelButtonTextVertAlign}' = 'Bottom' then
Result:=tlBottom;
end;

function MusicButtonLeft:integer ;
begin
#define MusicButtonLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "MusicButtonLeft", "0")
Result:={#MusicButtonLeft};
end;

function MusicButtonTop:integer ;
begin
#define MusicButtonTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "MusicButtonTop", "0")
Result:={#MusicButtonTop};
end;

function MusicButtonWidth:integer ;
begin
#define MusicButtonWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "MusicButtonWidth", "200")
Result:={#MusicButtonWidth};
end;

function MusicButtonHeight:integer ;
begin
#define MusicButtonHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "MusicButtonHeight", "30")
Result:={#MusicButtonHeight};
end;

function MusicButtonTextOffsetX:integer ;
begin
#define MusicButtonTextOffsetX ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "MusicButtonTextOffsetX", "0")
Result:={#MusicButtonTextOffsetX};
end;

function MusicButtonTextOffsetY:integer ;
begin
#define MusicButtonTextOffsetY ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "MusicButtonTextOffsetY", "0")
Result:={#MusicButtonTextOffsetY};
end;

function MusicButtonFontName:String;
begin
#define MusicButtonFontName ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "MusicButtonFontName", "Segoe UI")
Result:='{#MusicButtonFontName}';
end;

function MusicButtonFontSize:integer ;
begin
#define MusicButtonFontSize ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "MusicButtonFontSize", "13")
Result:={#MusicButtonFontSize};
end;

function MusicButtonFontSizeSelected:integer ;
begin
#define MusicButtonFontSizeSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "MusicButtonFontSizeSelected", "13")
Result:={#MusicButtonFontSizeSelected};
end;

function MusicButtonFontSizeClicked:integer ;
begin
#define MusicButtonFontSizeClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "MusicButtonFontSizeClicked", "13")
Result:={#MusicButtonFontSizeClicked};
end;

function MusicButtonFontSizeDisabled:integer ;
begin
#define MusicButtonFontSizeDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "MusicButtonFontSize", "13")
Result:={#MusicButtonFontSizeDisabled};
end;

function MusicButtonFontBold:Boolean;
begin
#define MusicButtonFontBold ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "MusicButtonFontBold", "0")
Result:={#MusicButtonFontBold} = 1;
end;

function MusicButtonFontItalic:Boolean;
begin
#define MusicButtonFontItalic ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "MusicButtonFontItalic", "0")
Result:={#MusicButtonFontItalic} = 1;
end;

function MusicButtonFontUnderline:Boolean;
begin
#define MusicButtonFontUnderline ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "MusicButtonFontUnderline", "0")
Result:={#MusicButtonFontUnderline} = 1;
end;

function MusicButtonFontStrikeOut:Boolean;
begin
#define MusicButtonFontStrikeOut ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "MusicButtonFontStrikeOut", "0")
Result:={#MusicButtonFontStrikeOut} = 1;
end;

function MusicButtonFontUppercase:Boolean;
begin
#define MusicButtonFontUppercase ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "MusicButtonFontUppercase", "0")
Result:={#MusicButtonFontUppercase} = 1;
end;

function MusicButtonFontColor:integer ;
begin
#define MusicButtonFontColor ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "MusicButtonFontColor", "#FFFFFF")
Result:=StrToInt('{#MusicButtonFontColor}');
end;

function MusicButtonFontColorSelected:integer ;
begin
#define MusicButtonFontColorSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "MusicButtonFontColorSelected", "#FFFFFF")
Result:=StrToInt('{#MusicButtonFontColorSelected}');
end;

function MusicButtonFontColorClicked:integer ;
begin
#define MusicButtonFontColorClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "MusicButtonFontColorClicked", "#FFFFFF")
Result:=StrToInt('{#MusicButtonFontColorClicked}');
end;

function MusicButtonFontColorDisabled:integer ;
begin
#define MusicButtonFontColorDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "MusicButtonFontColorDisabled", "#FFFFFF")
Result:=StrToInt('{#MusicButtonFontColorDisabled}');
end;

function MusicButtonTextHorzAlign:TAlignment;
begin
#define MusicButtonTextHorzAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "MusicButtonTextHorzAlign", "Center")
if '{#MusicButtonTextHorzAlign}' = 'Right' then
Result:=taRightJustify;
if '{#MusicButtonTextHorzAlign}' = 'Left' then
Result:=taLeftJustify;
if '{#MusicButtonTextHorzAlign}' = 'Center' then
Result:=taCenter;
end;

function MusicButtonTextVertAlign:TTextLayout;
begin
#define MusicButtonTextVertAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "MusicButtonTextVertAlign", "Center")
if '{#MusicButtonTextVertAlign}' = 'Center' then
Result:=tlCenter;
if '{#MusicButtonTextVertAlign}' = 'Top' then
Result:=tlTop;
if '{#MusicButtonTextVertAlign}' = 'Bottom' then
Result:=tlBottom;
end;

function MusicButton3Left:integer ;
begin
#define MusicButton3Left ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "MusicButton2Left", "0")
Result:={#MusicButton3Left};
end;

function MusicButton3Top:integer ;
begin
#define MusicButton3Top ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "MusicButton2Top", "0")
Result:={#MusicButton3Top};
end;

function MusicButton3Width:integer ;
begin
#define MusicButton3Width ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "MusicButton2Width", "0")
Result:={#MusicButton3Width};
end;

function MusicButton3Height:integer ;
begin
#define MusicButton3Height ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "MusicButton2Height", "0")
Result:={#MusicButton3Height};
end;

function CloseButtonLeft:integer ;
begin
#define CloseButtonLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "CloseButtonLeft", "0")
Result:={#CloseButtonLeft};
end;

function CloseButtonTop:integer ;
begin
#define CloseButtonTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "CloseButtonTop", "0")
Result:={#CloseButtonTop};
end;

function CloseButtonWidth:integer ;
begin
#define CloseButtonWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "CloseButtonWidth", "0")
Result:={#CloseButtonWidth};
end;

function CloseButtonHeight:integer ;
begin
#define CloseButtonHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "CloseButtonHeight", "0")
Result:={#CloseButtonHeight};
end;

function SmallCloseButtonLeft:integer ;
begin
#define SmallCloseButtonLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallCloseButtonLeft", "0")
Result:={#SmallCloseButtonLeft};
end;

function SmallCloseButtonTop:integer ;
begin
#define SmallCloseButtonTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallCloseButtonTop", "0")
Result:={#SmallCloseButtonTop};
end;

function SmallCloseButtonWidth:integer ;
begin
#define SmallCloseButtonWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallCloseButtonWidth", "0")
Result:={#SmallCloseButtonWidth};
end;

function SmallCloseButtonHeight:integer ;
begin
#define SmallCloseButtonHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallCloseButtonHeight", "0")
Result:={#SmallCloseButtonHeight};
end;

function MinimizeButtonLeft:integer ;
begin
#define MinimizeButtonLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "MinimizeButtonLeft", "0")
Result:={#MinimizeButtonLeft};
end;

function MinimizeButtonTop:integer ;
begin
#define MinimizeButtonTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "MinimizeButtonTop", "0")
Result:={#MinimizeButtonTop};
end;

function MinimizeButtonWidth:integer ;
begin
#define MinimizeButtonWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "MinimizeButtonWidth", "0")
Result:={#MinimizeButtonWidth};
end;

function MinimizeButtonHeight:integer ;
begin
#define MinimizeButtonHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "MinimizeButtonHeight", "0")
Result:={#MinimizeButtonHeight};
end;

function SmallMinimizeButtonLeft:integer ;
begin
#define SmallMinimizeButtonLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallMinimizeButtonLeft", "0")
Result:={#SmallMinimizeButtonLeft};
end;

function SmallMinimizeButtonTop:integer ;
begin
#define SmallMinimizeButtonTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallMinimizeButtonTop", "0")
Result:={#SmallMinimizeButtonTop};
end;

function SmallMinimizeButtonWidth:integer ;
begin
#define SmallMinimizeButtonWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallMinimizeButtonWidth", "0")
Result:={#SmallMinimizeButtonWidth};
end;

function SmallMinimizeButtonHeight:integer ;
begin
#define SmallMinimizeButtonHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "SmallMinimizeButtonHeight", "0")
Result:={#SmallMinimizeButtonHeight};
end;

function LogoLeft:integer ;
begin
#define LogoLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "LogoLeft", "0")
Result:={#LogoLeft};
end;

function LogoTop:integer ;
begin
#define LogoTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "LogoTop", "0")
Result:={#LogoTop};
end;

function LogoWidth:integer ;
begin
#define LogoWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "LogoWidth", "0")
Result:={#LogoWidth};
end;

function LogoHeight:integer ;
begin
#define LogoHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "LogoHeight", "0")
Result:={#LogoHeight};
end;

function ProcCore:integer ;
begin
#define ProcCore ReadIni(SourcePath	+ "\Temp\Setup.ini", "SystemSettings", "SystemCPUCores", "0")
Result:={#ProcCore};
end;

function ProcFreq:integer ;
begin
#define ProcFreq ReadIni(SourcePath	+ "\Temp\Setup.ini", "SystemSettings", "SystemCPUClock", "0")
Result:={#ProcFreq};
end;

function RAM:integer ;
begin
#define RAM ReadIni(SourcePath	+ "\Temp\Setup.ini", "SystemSettings", "SystemRAM", "0")
Result:={#RAM};
end;

function VideoRAM:integer ;
begin
#define VideoRAM ReadIni(SourcePath	+ "\Temp\Setup.ini", "SystemSettings", "SystemGPUMEM", "0")
Result:={#VideoRAM};
end;

function WinVerMajor:integer ;
begin
#define WinVerMajor ReadIni(SourcePath	+ "\Temp\Setup.ini", "SystemSettings", "SystemVerMajor", "5")
Result:={#WinVerMajor};
end;

function WinVerMinor:integer ;
begin
#define WinVerMinor ReadIni(SourcePath	+ "\Temp\Setup.ini", "SystemSettings", "SystemVerMinor", "1")
Result:={#WinVerMinor};
end;

function ServicePack:integer ;
begin
#define ServicePack ReadIni(SourcePath	+ "\Temp\Setup.ini", "SystemSettings", "SystemVerSP", "2")
Result:={#ServicePack};
end;

function SoundDevice:Boolean;
begin
#define SoundDevice ReadIni(SourcePath	+ "\Temp\Setup.ini", "SystemSettings", "SystemSettings", "1")
Result:={#SoundDevice} = 1;
end;

function SplashTimer1:integer ;
begin
#define SplashTimer1 ReadIni(SourcePath	+ "\Temp\Setup.ini", "AdditionalSettings", "SplashTimeIn", "1")
Result:={#SplashTimer1} * 1000;
end;

function SplashTimer2:integer ;
begin
#define SplashTimer2 ReadIni(SourcePath	+ "\Temp\Setup.ini", "AdditionalSettings", "SplashTimeShow", "3")
Result:={#SplashTimer2} * 1000;
end;

function SplashTimer3:integer ;
begin
#define SplashTimer3 ReadIni(SourcePath	+ "\Temp\Setup.ini", "AdditionalSettings", "SplashTimeOut", "1")
Result:={#SplashTimer3} * 1000;
end;

function SlideTime:integer ;
begin
#define SlideTime ReadIni(SourcePath	+ "\Temp\Setup.ini", "AdditionalSettings", "SlideTime", "10")
Result:={#SlideTime} * 1000;
end;

function ShowDiskPromptBox(Disk, ArcName: String):Integer; forward;

function GetMessage(MsgNum: Integer; Var1, Var2: String): String;
begin
Result:=ExpandConstant('{cm:Message'+IntToStr(MsgNum)+'}');
StringChange(Result,'%1',Var1);
StringChange(Result,'%2',Var2);
end;

procedure ProgressLabels(Status, CurrentFile: String);
begin
with InstallLabel3_3_1.Labl do
Caption:=CurrentFile;
end;

function ProgressCallback(OveralPct,CurrentPct: integer;CurrentFile,TimeStr1,TimeStr2,TimeStr3:PAnsiChar): longword;
begin
if (OveralPct + SplitPct)<=WizardForm.ProgressGauge.Max then
WizardForm.ProgressGauge.Position := OveralPct + SplitPct;
if Pos('.lnk',ExtractFileName(CurrentFile)) <> 0 then
InstallLabel3_3_1.Labl.Caption:=SetupMessage(msgStatusCreateIcons)
else if Pos('unins000.exe',ExtractFileName(CurrentFile)) <> 0 then
InstallLabel3_3_1.Labl.Caption:=SetupMessage(msgStatusSavingUninstall)
else begin
with InstallLabel3_3_1.Labl do
begin
if String(CurrentFile) <> '' then
ProgressLabels('',GetMessage(1,MinimizePathName(AddBackSlash(ExpandConstant('{app}')) + CurrentFile,Font, Width - 95),''));
end;
end;
CreateShadow(InstallLabel3_3_1,False);
Result := ISDoneCancel;
end;

function UpdateSource(hFile, NewSource: String):String;
begin
Result:=hFile;
StringChange(Result,'{src}',NewSource);
Result:=ExpandConstant(Result);
end;

function ComponentsCheckFA(ComponentNumber: Integer):Boolean;
begin
if ComponentNumber <= 0 then
begin
Result:=True;
exit;
end;
#ifdef Component
if ComponentNumber <= GetArrayLength(SelectComponentCheck1) + 1 then
Result:=BtnGetChecked(SelectComponentCheck1[ComponentNumber - 1])
else
Result:=False;
#else
Result:=True;
#endif
end;

function TaskCheckFA(TaskNumber: Integer):Boolean;
begin
if TaskNumber <= 0 then
begin
Result:=True;
exit;
end;
#ifdef Task
if TaskNumber <= GetArrayLength(SelectTaskCheck1) + 1 then
Result:=BtnGetChecked(SelectTaskCheck1[TaskNumber - 1])
else
Result:=False;
#else
Result:=True;
#endif
end;

function InstallSourceFile(Number: Integer; Str1, Str2, Str3: String):Boolean;
begin
if ISDoneError = True then
Result := False
else if ((LanguageTranslator(Str1) = ActiveLanguage) = False) and not (Str1 = '') then
Result := False
else if ComponentsCheckFA(StrToInt(Str2)) = False then
Result := False
else if TaskCheckFA(StrToInt(Str3)) = False then
Result := False
else
Result:= True;
end;

function WizardImage_JPG:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\Installer1.jpg'))
then
Result := True
else
Result := False;
end;

function SmallWizardImage_JPG:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\SmallInstaller1.jpg'))
then
Result := True
else
Result := False;
end;

function WizardImage_PNG:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\Installer1.png'))
then
Result := True
else
Result := False;
end;

function SmallWizardImage_PNG:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\SmallInstaller1.png'))
then
Result := True
else
Result := False;
end;

function DialogWizardImage:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\Dialog.jpg'))
then
Result := True
else
Result := False;
end;

function DialogWizardBackground:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\DialogTextBackground.png'))
then
Result := True
else
Result := False;
end;

function CustomProgressGauge:Boolean;
begin
if (FileExists(ExpandConstant('{tmp}\ProgressImage.png'))) and (FileExists(ExpandConstant('{tmp}\ProgressBackground.png')))
then
Result:=True
else
Result:=False
end;

function LogoImage:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\Logo.png'))
then
Result:=True
else
Result:=False
end;

function CustomTextBackground:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\TextBackground.png'))
then
Result:=True
else
Result:=False
end;

function CustomSmallTextBackground:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\SmallTextBackground.png'))
then
Result:=True
else
Result:=False
end;

function CustomEditBackground:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\EditBackground.png'))
then
Result:=True
else
Result:=False
end;

function CustomCursor1_1:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\Cursor.cur')) then
Result :=True
else
Result :=False
end;

function CustomCursor1_2:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\Cursor.ani')) then
Result :=True
else
Result :=False
end;

procedure CustomCursor;
begin
if CustomCursor1_1 then begin
NewCursor:= LoadCursorFromFile(ExpandConstant('{tmp}\Cursor.cur'));
OldCursor:= SetClassLong(WizardForm.Handle, GCL_HCURSOR, NewCursor);
end;
if CustomCursor1_2 then begin
NewCursor:= LoadCursorFromFile(ExpandConstant('{tmp}\Cursor.ani'));
OldCursor:= SetClassLong(WizardForm.Handle, GCL_HCURSOR, NewCursor);
end;
end;

function PreviewAvai:Boolean;
begin
if (FileExists(ExpandConstant('{tmp}\Preview1.jpg')) and FileExists(ExpandConstant('{tmp}\Preview2.jpg')) and FileExists(ExpandConstant('{tmp}\Preview3.jpg'))) or
(FileExists(ExpandConstant('{tmp}\Preview1.jpg')) and FileExists(ExpandConstant('{tmp}\Preview2.jpg')) and FileExists(ExpandConstant('{tmp}\Preview3.jpg')))
then
Result := True
else
Result := False;
end;

function SplashAvai:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\Splash1.png'))
then
Result := True
else
Result := False;
end;

function CustomFontAvai:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\font1.ttf')) or FileExists(ExpandConstant('{tmp}\font1.ttf'))
then
Result := True
else
Result := False;
end;

function CustomSmallButtons:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\smallbutton.png'))
then
Result := True
else
Result := False;
end;

function CustomButton1:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\SmallMusicButton.png'))
then
Result := True
else
Result := False;
end;

function CustomButton2:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\CloseButton.png'))
then
Result := True
else
Result := False;
end;

function CustomButton3:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\MinimizeButton.png'))
then
Result := True
else
Result := False;
end;

function CustomButtonSound:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\ButtonSelected.wav'))
then
Result := True
else
Result := False;
end;

function CustomButtonSound2:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\ButtonClicked.wav'))
then
Result := True
else
Result := False;
end;

procedure ButtonSoundSelected(hBtn:HWND);
begin
if CustomButtonSound then
sndPlaySound(ExpandConstant('{tmp}\ButtonSelected.wav'),$0001);
end;

procedure ButtonSoundClicked(hBtn:HWND);
begin
if CustomButtonSound2 then
sndPlaySound(ExpandConstant('{tmp}\ButtonClicked.wav'),$0001);
end;

procedure ButtonSoundSelected2;
begin
if CustomButtonSound then
sndPlaySound(ExpandConstant('{tmp}\ButtonSelected.wav'),$0001);
end;

procedure ButtonSoundClicked2;
begin
if CustomButtonSound2 then
sndPlaySound(ExpandConstant('{tmp}\ButtonClicked.wav'),$0001);
end;

function MusicEnabled():Boolean;
begin
if FileExists(ExpandConstant('{tmp}\Music.mp3')) then
Result :=True
else
Result :=False
end;

function SlidesEnabled:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\1.jpg')) then
Result := True
else
Result := False;
end;

function VideoEnabled:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\Video.wmv')) then
Result := True
else
Result := False;
end;

function ShowBGFullscreen:Boolean;
begin
#define ShowBGFullscreen ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "InstallerFullscreen", "0")
if SlidesEnabled or VideoEnabled then
Result:={#ShowBGFullscreen} = 1
else
Result:= False;
if Result = True then
begin
if (WizardImage_JPG or WizardImage_PNG) and not (SmallWizardImage_JPG or SmallWizardImage_PNG) then
Result:= False;
end;
end;

function ShowBGFullscreen2:Boolean;
begin
#define ShowBGFullscreen2 ReadIni(SourcePath	+ "\Temp\Setup.ini", "InstallerSettings", "InstallerFullscreen", "0")
Result:={#ShowBGFullscreen2} = 1;
if Result = True then
begin
if (WizardImage_JPG or WizardImage_PNG) and not (SmallWizardImage_JPG or SmallWizardImage_PNG) then
Result:= False;
end;
end;

function MHzToGHz(MHz : Integer): String;
begin
if Length(IntToStr(MHz)) > 3 then
Result := Copy(IntToStr(MHz), 0, Length(IntToStr(MHz))-3) + '.' + Copy(IntToStr(MHz), Length(IntToStr(MHz))-2, 2) + ' '+FmtMessage(cm('ConversionUnit5_2'), [ExpandConstant(' ')])
else
Result := IntToStr(MHz) + ' '+FmtMessage(cm('ConversionUnit5_1'), [ExpandConstant(' ')])
end;

function MBToGB(MB : Integer): String;
begin
if Length(IntToStr(MB)) > 3 then
Result := Copy(IntToStr(MB), 0, Length(IntToStr(MB))-3) + '.' + Copy(IntToStr(MB), Length(IntToStr(MB))-2, 1) + ' '+FmtMessage(cm('ConversionUnit4_2'), [ExpandConstant(' ')])
else
Result := IntToStr(MB) + ' '+FmtMessage(cm('ConversionUnit4_1'), [ExpandConstant(' ')])
end;

function NeededSpaceFix:Boolean;
begin
if RecommendedSize = RequiredSize then
Result:=True
else
Result:=False
end;

function isWin7: boolean;var ver: TWindowsVersion;
begin
GetWindowsVersionEx(ver);
if ((ver.Major = 6) and (ver.Minor > 0)) or (ver.Major > 6) then result:=true
else result:=false;
end;

function EnumWindowsProc(Wd: HWnd; Param: LongInt) : Boolean;
var
cl:string;i:integer;pid,wfpid:dword;
begin
Result:=true;
GetWindowThreadProcessId(WizardForm.Handle, wfpid);
GetWindowThreadProcessId(wd, pid);
SetLength(cl, 31);
i:=GetClassName(wd, cl, 31);
SetLength(cl, i);
if (pid=wfpid) and (cl='TApplication') then begin
AppHandle:=Wd;
result:=false;
end;
end;

procedure InitWin7TaskBar;
begin
loaded:=false;
if isWin7 then begin
Obj:=CreateComObject(StringToGuid(CLSID_TaskbarList));
if Obj <> nil then begin
loaded:=true;
EnumWindows(CallbackAddr(@EnumWindowsProc, 2), 0);
FTaskbar:=ITaskbarList3(Obj);
FTaskbar.HrInit;
end;
end;
end;

procedure DeInitWin7TaskBar;
begin
if isWin7 and loaded then
CoFreeUnusedLibraries;
end;

procedure SetTaskBarProgressValue(Value:Integer);
begin
if isWin7 and loaded then
FTaskbar.SetProgressValue(AppHandle, Value, 100);
end;

procedure SetTaskBarProgressState(Value:Integer);
begin
if isWin7 and loaded then
FTaskbar.SetProgressState(AppHandle, Value);
end;

procedure Taskbar1_1;
begin
SetTaskBarProgressState(TBPF_NOPROGRESS);
end;

procedure Taskbar1_2;
begin
SetTaskBarProgressState(TBPF_INDETERMINATE);
end;

procedure Taskbar1_3;
begin
SetTaskBarProgressState(TBPF_NORMAL);
end;

procedure Taskbar1_4;
begin
SetTaskBarProgressState(TBPF_ERROR);
end;

procedure Taskbar1_5;
begin
SetTaskBarProgressState(TBPF_PAUSED);
end;

function ImgPBCreate(hParent :HWND; bk, pb :ansistring; Left, Top, Width, Height :integer):TImgPB;
begin
Result.Left:=Left+1;
Result.Top:=Top+1;
Result.Width:=0;
Result.Height:=Height-2;
Result.MaxWidth:=Width-2;
if Length(bk)>0 then Result.img2:=ImgLoad(hParent,bk,Left,Top,Width,Height,True,False) else Result.img2:=0;
if Length(pb)>0 then Result.img1:=ImgLoad(hParent,pb,Result.Left,Result.Top,0,Result.Height,True,False) else Result.img1:=0;
end;

procedure ImgPBSetPosition(var PB :TImgPB; Percent :Extended);
begin
if PB.img1<>0 then begin
NewWidth:=Round(PB.MaxWidth*Percent/100);
if PB.Width<>NewWidth then begin
PB.Width:=NewWidth;
ImgSetPosition(PB.img1,PB.Left,PB.Top,PB.Width,PB.Height);
end;
end;
PB.Percent:=Percent;
end;

function ImgPBGetPosition(var PB: TimgPB):Extended;
begin
Result:=PB.Percent;
end;

procedure ImgPBDelete(var PB :TImgPB);
begin
if PB.img1<>0 then ImgRelease(PB.img1);
if PB.img2<>0 then ImgRelease(PB.img2);
PB.img1:=0;
PB.img2:=0;
end;

procedure ImgPBVisibility(var PB :TImgPB;Visible :boolean);
begin
ImgSetVisibility(PB.img1,Visible);
ImgSetVisibility(PB.img2,Visible);
end;

function PBProc(h:hWnd;Msg,wParam,lParam:Longint):Longint;
var
pi: integer;
begin
Result:=CallWindowProc(PBOldProc,h,Msg,wParam,lParam);
if (Msg=$402) and (WizardForm.ProgressGauge.Position>WizardForm.ProgressGauge.Min) then begin
i1:=WizardForm.ProgressGauge.Position-WizardForm.ProgressGauge.Min;
i2:=WizardForm.ProgressGauge.Max-WizardForm.ProgressGauge.Min;
pr:=i1*100/i2;
pi:=Round(100*pr/100);
Taskbar1_3;
SetTaskBarProgressValue(pi);
p:=Format('%f',[pr])+'%';
InstallLabel3_4.Labl.Caption:=ExpandConstant('(')+FmtMessage(cm('InstallMessage3_4'), [p])+ExpandConstant(')');
CreateShadow(InstallLabel3_4,False);
if Pos('.lnk',ExtractFileName(WizardForm.FilenameLabel.Caption)) <> 0 then
InstallLabel3_3_1.Labl.Caption:=SetupMessage(msgStatusCreateIcons)
else if Pos('unins000.exe',ExtractFileName(WizardForm.FilenameLabel.Caption)) <> 0 then
InstallLabel3_3_1.Labl.Caption:=SetupMessage(msgStatusSavingUninstall)
else if InstallLabel3_3_1.Labl.Caption<>WizardForm.FilenameLabel.Caption then
InstallLabel3_3_1.Labl.Caption:=FmtMessage(cm('InstallMessage3_3_1'), [MinimizePathName(ExtractFileName(WizardForm.FilenameLabel.Caption), InstallLabel3_3_1.Labl.Font, InstallLabel3_3_1.Labl.Width-46)]);
CreateShadow(InstallLabel3_3_1,False);
ImgPBSetPosition(Progress,pr);
ImgApplyChanges(WizardForm.Handle);
end;
end;

function PBProcUninst(h:hWnd;Msg,wParam,lParam:Longint):Longint;
var
pi: integer;
begin
if Msg=$2 then SetWindowLong(h,-4,PBOldProc);
Result:=CallWindowProc(PBOldProc,h,Msg,wParam,lParam);
if (Msg=$402) and (UninstallProgressForm.ProgressBar.Position>UninstallProgressForm.ProgressBar.Min) then begin
i1:=UninstallProgressForm.ProgressBar.Position-UninstallProgressForm.ProgressBar.Min;
i2:=UninstallProgressForm.ProgressBar.Max-UninstallProgressForm.ProgressBar.Min;
pr:=i1*100/i2;
pi:=Round(100*pr/100);
Taskbar1_3;
SetTaskBarProgressValue(pi);
p:=Format('%f',[pr])+' %';
UninstallLabel3_1.Labl.Caption:=ExpandConstant('(')+FmtMessage(cm('UninstallMessage3_1'), [p])+ExpandConstant(')');
CreateShadow(UninstallLabel3_1,False);
ImgPBSetPosition(Progress,pr);
ImgApplyChanges(UninstallProgressForm.Handle);
end;
end;

function SystemPageAvai: Boolean;
begin
#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "SystemSettings", "SystemCPUCores", "") != ""
Result:=False;
#else
Result:=True;
#endif
end;

function LauncherPageAvai: Boolean;
begin
#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher1Name", "") != ""
Result:=False;
#else
Result:=True;
#endif
end;

function ComponentPageAvai: Boolean;
begin
#ifdef Component
Result:=True;
#else
Result:=False;
#endif
end;

function PriorityPageAvai: Boolean;
begin
#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "SystemSettings", "PriorityTweaker", "0") == "0"
Result:=False;
#else
Result:=True;
#endif
end;

function DownloadPageAvai: Boolean;
begin
#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "InternetMedia", "Source1", "") != ""
Result:=False;
#else
Result:=True;
#endif
end;

function SerialPageAvai: Boolean;
begin
#ifdef SerialCode
Result:=True;
#else
Result:=False;
#endif
end;

function RedistPageAvai: Boolean;
begin
#ifdef Task
Result:=True;
#else
Result:=False;
#endif
end;

#dim M[64]
#ifdef ExpiryDate
function TimeLimit: Boolean; var lt, dateLimit: TSystemTime; LocalTime, LimitTime: TFileTime;
begin
#for {M[0] = 59; Pos('/', ExpiryDate); M[0]++} M[M[0]] = Int(Copy(ExpiryDate,,Pos('/', ExpiryDate)-1)), ExpiryDate = Copy(ExpiryDate,Pos('/', ExpiryDate)+1)
#expr M[M[0]] = ExpiryDate
dateLimit.wYear:= {#Int(M[61])}; dateLimit.wMonth:= {#Int(M[59])}; dateLimit.wDay:= {#Int(M[60])};
GetLocalTime(lt); SystemTimeToFileTime(lt, LocalTime); 
SystemTimeToFileTime(dateLimit, LimitTime)
Result:= not(CompareFileTime(LimitTime, LocalTime) = -1)
end;
#endif

function NeedSpaceAvai: Boolean;
begin
if RecommendedSize = RequiredSize then
Result:=False
else
Result:=True;
end;

procedure TrayMenuItemOnClick(MenuItemIndex: Integer);
begin
if not IsWindowEnabled(WizardForm.Handle) then exit;
end;

procedure TrayMenuOnPopup(PopMenu: LongWord; var bShow: Boolean);
begin
bShow := IsWindowEnabled(WizardForm.Handle);
if WizardFormInTray() then
begin
EnableMenuItem(PopMenu, 5, MF_BYPOSITION or MF_GRAYED);
EnableMenuItem(PopMenu, 7, MF_BYPOSITION or MF_GRAYED);
end else begin
EnableMenuItem(PopMenu, 5, MF_BYPOSITION or MF_ENABLED);
EnableMenuItem(PopMenu, 7, MF_BYPOSITION or MF_ENABLED);
end;
end;

procedure TrayBalloon;
begin
MenuItemClickCallback := WrapMenuItemClickProc(@TrayMenuItemOnClick, 1);
MenuPopupCallback := WrapMenuPopupProc(@TrayMenuOnPopup, 2);
MenuStrs := '';
InitTrayIconCtrl(MainForm.Handle, WizardForm.Handle, WM_ICON_NOTIFY, FmtMessage(ExpandConstant('{cm:OtherMessage3_2}'), [ApplicationName('')]), 0, True, True, MenuStrs, -1, @TrayMenuItemOnClick, @TrayMenuOnPopup, nil);
ShowBalloon(FmtMessage(cm('OtherMessage2_2'), [ExpandConstant(' ')])+' '+ExpandConstant('{code:ApplicationName}')+#13+FmtMessage(cm('OtherMessage2_3'), [ExpandConstant(' ')])+' '+ExpandConstant('{code:ApplicationPublisher}'), FmtMessage(cm('OtherMessage2_1'), [ExpandConstant(' ')]), 0, 20, False);
end;

procedure AddNewFont;
var
i: integer;
begin
i:=0;
if CustomFontAvai then
begin
repeat
i:= i + 1;
AddFontResource(ExpandConstant('{tmp}\font'+IntToStr(i)+'.ttf'),FR_PRIVATE,0);
until FileExists(ExpandConstant('{tmp}\font'+IntToStr(i)+'.ttf')) = False;
end;
end;

procedure AddNewFont2;
var
i: integer;
begin
i:=0;
if CustomFontAvai then
begin
repeat
i:= i + 1;
AddFontResource(ExpandConstant('{tmp}\font'+IntToStr(i)+'.ttf'),FR_PRIVATE,0);
until FileExists(ExpandConstant('{tmp}\font'+IntToStr(i)+'.ttf')) = False;
end;
end;

function TimeTextFormater(clock:String):String;
begin
case clock of
'hours': begin
if hours = 1 then
Result:= FmtMessage(cm('ConversionUnit3_1'), [ExpandConstant(' ')])
else
Result:= FmtMessage(cm('ConversionUnit3_2'), [ExpandConstant(' ')])
end;
'minutes': begin
if minutes = 1 then 
Result:= FmtMessage(cm('ConversionUnit2_1'), [ExpandConstant(' ')])
else
Result:= FmtMessage(cm('ConversionUnit2_2'), [ExpandConstant(' ')])
end;
'seconds': begin
if seconds = 1 then
Result:=FmtMessage(cm('ConversionUnit1_1'), [ExpandConstant(' ')])
else
Result:=FmtMessage(cm('ConversionUnit1_2'), [ExpandConstant(' ')])
end;
end;
end;

function TimeFormater(secondp:Integer):String;
var
TimeS,TimeM,TimeH: String;
begin
seconds := secondp
minutes := 0
hours := 0
if seconds >= 60 then begin
minutes := seconds / 60
seconds := seconds mod 60
end;
if minutes >= 60 then begin
hours := minutes / 60
minutes := minutes mod 60
end;
(*if hours <> 0 then
Result := IntToStr(hours) + ' ' + TimeTextFormater('hours') + ' ' +IntToStr(minutes) + ' ' + TimeTextFormater('minutes')
else begin
if minutes <> 0 then
Result := IntToStr(minutes) + ' ' + TimeTextFormater('minutes') + ' ' +IntToStr(seconds) + ' ' + TimeTextFormater('seconds')
else
Result := IntToStr(seconds) + ' ' + TimeTextFormater('seconds')
end;*)
if (hours > -1) and (hours < 10) then
TimeH:='0'+ IntToStr(hours)
else
TimeH:=IntToStr(hours);
if (minutes > -1) and (minutes < 10) then
TimeM:='0'+ IntToStr(minutes)
else
TimeM:=IntToStr(minutes);
if (seconds > -1) and (seconds < 10) then
TimeS:='0'+ IntToStr(seconds)
else
TimeS:=IntToStr(seconds);
Result:=TimeH + ':' + TimeM + ':' + TimeS;
end;

function DelSp(s: string): string;
begin
while Pos('',s)>0 do StringChange(s,'',' ');
Result:=Trim(s);
end;

function TextOneFontUpperCaser(Word: String): string;
begin
if TextOneFontUppercase then begin
For x:=1 to Length(Word) do begin
Result := Result + CharUpper(Word[x]);
end;
end
else
Result := Word;
end;

function TextTwoFontUpperCaser(Word: String): string;
begin
if TextTwoFontUppercase then begin
For x:=1 to Length(Word) do begin
Result := Result + CharUpper(Word[x]);
end;
end
else
Result := Word;
end;

procedure CreateTextFontStyle;
begin
if TextOneFontBold then
begin
WelcomeLabel1_1.Labl.Font.Style:=WelcomeLabel1_1.Labl.Font.Style + [fsBold];
SerialLabel1_1.Labl.Font.Style:=SerialLabel1_1.Labl.Font.Style + [fsBold];
LicenseLabel1_1.Labl.Font.Style:=LicenseLabel1_1.Labl.Font.Style + [fsBold];
SystemLabel1_1.Labl.Font.Style:=SystemLabel1_1.Labl.Font.Style + [fsBold];
InformationLabel1_1.Labl.Font.Style:=InformationLabel1_1.Labl.Font.Style + [fsBold];
SelectComponentLabel1_1.Labl.Font.Style:=SelectComponentLabel1_1.Labl.Font.Style + [fsBold];
SelectDirLabel1_1.Labl.Font.Style:=SelectDirLabel1_1.Labl.Font.Style + [fsBold];
SelectGroupLabel1_1.Labl.Font.Style:=SelectGroupLabel1_1.Labl.Font.Style + [fsBold];
PreviewLabel1_1.Labl.Font.Style:=PreviewLabel1_1.Labl.Font.Style + [fsBold];
SelectPriorityLabel1_1.Labl.Font.Style:=SelectPriorityLabel1_1.Labl.Font.Style + [fsBold];
SelectTaskLabel1_1.Labl.Font.Style:=SelectTaskLabel1_1.Labl.Font.Style + [fsBold];
ReadyLabel1_1.Labl.Font.Style:=ReadyLabel1_1.Labl.Font.Style + [fsBold];
DownloadLabel1_1.Labl.Font.Style:=DownloadLabel1_1.Labl.Font.Style + [fsBold];
InstallLabel1_1.Labl.Font.Style:=InstallLabel1_1.Labl.Font.Style + [fsBold];
FinishLabel1_1.Labl.Font.Style:=FinishLabel1_1.Labl.Font.Style + [fsBold];
end;

if TextOneFontItalic then
begin
WelcomeLabel1_1.Labl.Font.Style:=WelcomeLabel1_1.Labl.Font.Style + [fsItalic];
SerialLabel1_1.Labl.Font.Style:=SerialLabel1_1.Labl.Font.Style + [fsItalic];
LicenseLabel1_1.Labl.Font.Style:=LicenseLabel1_1.Labl.Font.Style + [fsItalic];
SystemLabel1_1.Labl.Font.Style:=SystemLabel1_1.Labl.Font.Style + [fsItalic];
InformationLabel1_1.Labl.Font.Style:=InformationLabel1_1.Labl.Font.Style + [fsItalic];
SelectComponentLabel1_1.Labl.Font.Style:=SelectComponentLabel1_1.Labl.Font.Style + [fsItalic];
SelectDirLabel1_1.Labl.Font.Style:=SelectDirLabel1_1.Labl.Font.Style + [fsItalic];
SelectGroupLabel1_1.Labl.Font.Style:=SelectGroupLabel1_1.Labl.Font.Style + [fsItalic];
PreviewLabel1_1.Labl.Font.Style:=PreviewLabel1_1.Labl.Font.Style + [fsItalic];
SelectPriorityLabel1_1.Labl.Font.Style:=SelectPriorityLabel1_1.Labl.Font.Style + [fsItalic];
SelectTaskLabel1_1.Labl.Font.Style:=SelectTaskLabel1_1.Labl.Font.Style + [fsItalic];
ReadyLabel1_1.Labl.Font.Style:=ReadyLabel1_1.Labl.Font.Style + [fsItalic];
DownloadLabel1_1.Labl.Font.Style:=DownloadLabel1_1.Labl.Font.Style + [fsItalic];
InstallLabel1_1.Labl.Font.Style:=InstallLabel1_1.Labl.Font.Style + [fsItalic];
FinishLabel1_1.Labl.Font.Style:=FinishLabel1_1.Labl.Font.Style + [fsItalic];
end;

if TextOneFontUnderline then
begin
WelcomeLabel1_1.Labl.Font.Style:=WelcomeLabel1_1.Labl.Font.Style + [fsUnderline];
SerialLabel1_1.Labl.Font.Style:=SerialLabel1_1.Labl.Font.Style + [fsUnderline];
LicenseLabel1_1.Labl.Font.Style:=LicenseLabel1_1.Labl.Font.Style + [fsUnderline];
SystemLabel1_1.Labl.Font.Style:=SystemLabel1_1.Labl.Font.Style + [fsUnderline];
InformationLabel1_1.Labl.Font.Style:=InformationLabel1_1.Labl.Font.Style + [fsUnderline];
SelectComponentLabel1_1.Labl.Font.Style:=SelectComponentLabel1_1.Labl.Font.Style + [fsUnderline];
SelectDirLabel1_1.Labl.Font.Style:=SelectDirLabel1_1.Labl.Font.Style + [fsUnderline];
SelectGroupLabel1_1.Labl.Font.Style:=SelectGroupLabel1_1.Labl.Font.Style + [fsUnderline];
PreviewLabel1_1.Labl.Font.Style:=PreviewLabel1_1.Labl.Font.Style + [fsUnderline];
SelectPriorityLabel1_1.Labl.Font.Style:=SelectPriorityLabel1_1.Labl.Font.Style + [fsUnderline];
SelectTaskLabel1_1.Labl.Font.Style:=SelectTaskLabel1_1.Labl.Font.Style + [fsUnderline];
ReadyLabel1_1.Labl.Font.Style:=ReadyLabel1_1.Labl.Font.Style + [fsUnderline];
InstallLabel1_1.Labl.Font.Style:=InstallLabel1_1.Labl.Font.Style + [fsUnderline];
FinishLabel1_1.Labl.Font.Style:=FinishLabel1_1.Labl.Font.Style + [fsUnderline];
end;

if TextOneFontStrikeOut then
begin
WelcomeLabel1_1.Labl.Font.Style:=WelcomeLabel1_1.Labl.Font.Style + [fsStrikeOut];
SerialLabel1_1.Labl.Font.Style:=SerialLabel1_1.Labl.Font.Style + [fsStrikeOut];
LicenseLabel1_1.Labl.Font.Style:=LicenseLabel1_1.Labl.Font.Style + [fsStrikeOut];
SystemLabel1_1.Labl.Font.Style:=SystemLabel1_1.Labl.Font.Style + [fsStrikeOut];
InformationLabel1_1.Labl.Font.Style:=InformationLabel1_1.Labl.Font.Style + [fsStrikeOut];
SelectComponentLabel1_1.Labl.Font.Style:=SelectComponentLabel1_1.Labl.Font.Style + [fsStrikeOut];
SelectDirLabel1_1.Labl.Font.Style:=SelectDirLabel1_1.Labl.Font.Style + [fsStrikeOut];
SelectGroupLabel1_1.Labl.Font.Style:=SelectGroupLabel1_1.Labl.Font.Style + [fsStrikeOut];
PreviewLabel1_1.Labl.Font.Style:=PreviewLabel1_1.Labl.Font.Style + [fsStrikeOut];
SelectPriorityLabel1_1.Labl.Font.Style:=SelectPriorityLabel1_1.Labl.Font.Style + [fsStrikeOut];
SelectTaskLabel1_1.Labl.Font.Style:=SelectTaskLabel1_1.Labl.Font.Style + [fsStrikeOut];
ReadyLabel1_1.Labl.Font.Style:=ReadyLabel1_1.Labl.Font.Style + [fsStrikeOut];
DownloadLabel1_1.Labl.Font.Style:=DownloadLabel1_1.Labl.Font.Style + [fsUnderline];
InstallLabel1_1.Labl.Font.Style:=InstallLabel1_1.Labl.Font.Style + [fsStrikeOut];
FinishLabel1_1.Labl.Font.Style:=FinishLabel1_1.Labl.Font.Style + [fsStrikeOut];
end;

if TextTwoFontBold then
begin
WelcomeLabel2_1.Labl.Font.Style:=WelcomeLabel2_1.Labl.Font.Style + [fsBold];
SerialLabel2_1.Labl.Font.Style:=SerialLabel2_1.Labl.Font.Style + [fsBold];
LicenseLabel2_1.Labl.Font.Style:=LicenseLabel2_1.Labl.Font.Style + [fsBold];
SystemLabel2_1.Labl.Font.Style:=SystemLabel2_1.Labl.Font.Style + [fsBold];
InformationLabel2_1.Labl.Font.Style:=InformationLabel2_1.Labl.Font.Style + [fsBold];
SelectComponentLabel2_1.Labl.Font.Style:=SelectComponentLabel2_1.Labl.Font.Style + [fsBold];
SelectDirLabel2_1.Labl.Font.Style:=SelectDirLabel2_1.Labl.Font.Style + [fsBold];
SelectGroupLabel2_1.Labl.Font.Style:=SelectGroupLabel2_1.Labl.Font.Style + [fsBold];
SelectPriorityLabel2_1.Labl.Font.Style:=SelectPriorityLabel2_1.Labl.Font.Style + [fsBold];
SelectTaskLabel2_1.Labl.Font.Style:=SelectTaskLabel2_1.Labl.Font.Style + [fsBold];
ReadyLabel2_1.Labl.Font.Style:=ReadyLabel2_1.Labl.Font.Style + [fsBold];
DownloadLabel2_1.Labl.Font.Style:=DownloadLabel2_1.Labl.Font.Style + [fsBold];
InstallLabel2_1.Labl.Font.Style:=InstallLabel2_1.Labl.Font.Style + [fsBold];
FinishLabel2_1.Labl.Font.Style:=FinishLabel2_1.Labl.Font.Style + [fsBold];
end;

if TextTwoFontItalic then
begin
WelcomeLabel2_1.Labl.Font.Style:=WelcomeLabel2_1.Labl.Font.Style + [fsItalic];
SerialLabel2_1.Labl.Font.Style:=SerialLabel2_1.Labl.Font.Style + [fsItalic];
LicenseLabel2_1.Labl.Font.Style:=LicenseLabel2_1.Labl.Font.Style + [fsItalic];
SystemLabel2_1.Labl.Font.Style:=SystemLabel2_1.Labl.Font.Style + [fsItalic];
InformationLabel2_1.Labl.Font.Style:=InformationLabel2_1.Labl.Font.Style + [fsItalic];
SelectComponentLabel2_1.Labl.Font.Style:=SelectComponentLabel2_1.Labl.Font.Style + [fsItalic];
SelectDirLabel2_1.Labl.Font.Style:=SelectDirLabel2_1.Labl.Font.Style + [fsItalic];
SelectGroupLabel2_1.Labl.Font.Style:=SelectGroupLabel2_1.Labl.Font.Style + [fsItalic];
SelectPriorityLabel2_1.Labl.Font.Style:=SelectPriorityLabel2_1.Labl.Font.Style + [fsItalic];
SelectTaskLabel2_1.Labl.Font.Style:=SelectTaskLabel2_1.Labl.Font.Style + [fsItalic];
ReadyLabel2_1.Labl.Font.Style:=ReadyLabel2_1.Labl.Font.Style + [fsItalic];
DownloadLabel2_1.Labl.Font.Style:=DownloadLabel2_1.Labl.Font.Style + [fsItalic];
InstallLabel2_1.Labl.Font.Style:=InstallLabel2_1.Labl.Font.Style + [fsItalic];
FinishLabel2_1.Labl.Font.Style:=FinishLabel2_1.Labl.Font.Style + [fsItalic];
end;

if TextTwoFontUnderline then
begin
WelcomeLabel2_1.Labl.Font.Style:=WelcomeLabel2_1.Labl.Font.Style + [fsUnderline];
SerialLabel2_1.Labl.Font.Style:=SerialLabel2_1.Labl.Font.Style + [fsUnderline];
LicenseLabel2_1.Labl.Font.Style:=LicenseLabel2_1.Labl.Font.Style + [fsUnderline];
SystemLabel2_1.Labl.Font.Style:=SystemLabel2_1.Labl.Font.Style + [fsUnderline];
InformationLabel2_1.Labl.Font.Style:=InformationLabel2_1.Labl.Font.Style + [fsUnderline];
SelectComponentLabel2_1.Labl.Font.Style:=SelectComponentLabel2_1.Labl.Font.Style + [fsUnderline];
SelectDirLabel2_1.Labl.Font.Style:=SelectDirLabel2_1.Labl.Font.Style + [fsUnderline];
SelectGroupLabel2_1.Labl.Font.Style:=SelectGroupLabel2_1.Labl.Font.Style + [fsUnderline];
SelectPriorityLabel2_1.Labl.Font.Style:=SelectPriorityLabel2_1.Labl.Font.Style + [fsUnderline];
SelectTaskLabel2_1.Labl.Font.Style:=SelectTaskLabel2_1.Labl.Font.Style + [fsUnderline];
ReadyLabel2_1.Labl.Font.Style:=ReadyLabel2_1.Labl.Font.Style + [fsUnderline];
DownloadLabel2_1.Labl.Font.Style:=DownloadLabel2_1.Labl.Font.Style + [fsUnderline];
InstallLabel2_1.Labl.Font.Style:=InstallLabel2_1.Labl.Font.Style + [fsUnderline];
FinishLabel2_1.Labl.Font.Style:=FinishLabel2_1.Labl.Font.Style + [fsUnderline];
end;

if TextTwoFontStrikeOut then
begin
WelcomeLabel2_1.Labl.Font.Style:=WelcomeLabel2_1.Labl.Font.Style + [fsStrikeOut];
SerialLabel2_1.Labl.Font.Style:=SerialLabel2_1.Labl.Font.Style + [fsStrikeOut];
LicenseLabel2_1.Labl.Font.Style:=LicenseLabel2_1.Labl.Font.Style + [fsStrikeOut];
SystemLabel2_1.Labl.Font.Style:=SystemLabel2_1.Labl.Font.Style + [fsStrikeOut];
InformationLabel2_1.Labl.Font.Style:=InformationLabel2_1.Labl.Font.Style + [fsStrikeOut];
SelectComponentLabel2_1.Labl.Font.Style:=SelectComponentLabel2_1.Labl.Font.Style + [fsStrikeOut];
SelectDirLabel2_1.Labl.Font.Style:=SelectDirLabel2_1.Labl.Font.Style + [fsStrikeOut];
SelectGroupLabel2_1.Labl.Font.Style:=SelectGroupLabel2_1.Labl.Font.Style + [fsStrikeOut];
SelectPriorityLabel2_1.Labl.Font.Style:=SelectPriorityLabel2_1.Labl.Font.Style + [fsStrikeOut];
SelectTaskLabel2_1.Labl.Font.Style:=SelectTaskLabel2_1.Labl.Font.Style + [fsStrikeOut];
ReadyLabel2_1.Labl.Font.Style:=ReadyLabel2_1.Labl.Font.Style + [fsStrikeOut];
DownloadLabel2_1.Labl.Font.Style:=DownloadLabel2_1.Labl.Font.Style + [fsStrikeOut];
InstallLabel2_1.Labl.Font.Style:=InstallLabel2_1.Labl.Font.Style + [fsStrikeOut];
FinishLabel2_1.Labl.Font.Style:=FinishLabel2_1.Labl.Font.Style + [fsStrikeOut];
end;

if SmallTextFontBold then
InstallLabel2_1.Labl.Font.Style:=InstallLabel2_1.Labl.Font.Style + [fsBold];

if SmallTextFontItalic then
InstallLabel2_1.Labl.Font.Style:=InstallLabel2_1.Labl.Font.Style + [fsItalic];

if SmallTextFontUnderline then
InstallLabel2_1.Labl.Font.Style:=InstallLabel2_1.Labl.Font.Style + [fsUnderline];

if SmallTextFontStrikeOut then
InstallLabel2_1.Labl.Font.Style:=InstallLabel2_1.Labl.Font.Style + [fsStrikeOut];
end;

function MusicPos:longint;
var
TempString :String;
begin
TempString:=Copy(GetCmdTail, Pos('MUSIC=',GetCmdTail) + 6, Length(GetCmdTail))
if Pos(' ',TempString) <> 0 then
Result := StrToInt(Copy(TempString, 0, Pos(' ',TempString)-1))
else
Result := StrToInt(TempString) ;
end;

Function CodecInstalled:boolean;
begin
Result:= (FileExists(ExpandConstant('{sys}\xvidcore.dll')) and
FileExists(ExpandConstant('{sys}\xvidvfw.dll')) and
RegValueExists(HKEY_LOCAL_MACHINE,'SOFTWARE\Microsoft\Windows NT\CurrentVersion\Drivers32','VIDC.XVID'))
end;


procedure CodecInstall;
begin
 ExtractTemporaryFile('xvidcore.dll');
 ExtractTemporaryFile('xvidvfw.dll');
 FileCopy(ExpandConstant('{tmp}\xvidcore.dll'),ExpandConstant('{sys}\xvidcore.dll'),False);
 FileCopy(ExpandConstant('{tmp}\xvidvfw.dll'),ExpandConstant('{sys}\xvidvfw.dll'),False);
 RegWriteStringValue(HKEY_LOCAL_MACHINE,'SOFTWARE\Microsoft\Windows NT\CurrentVersion\Drivers32','VIDC.XVID','xvidvfw.dll');
end;

procedure PlayMusic;
begin
BASS_ChannelPlay(mp3Handle, False);
end;

procedure StopMusic;
begin
BASS_ChannelPause(mp3Handle);
end;

procedure PlayVideo;
begin
BGForm2.Show;
BGForm2.SendToBack;
WizardForm.BringToFront;
if DirBrowseForm.Showing then
DirBrowseForm.BringToFront;
if CancelForm.Showing then
CancelForm.BringToFront;
if DiskPromptForm.Showing then
DiskPromptForm.BringToFront;
if VideoEnabled then
begin
mciSendString('open "'+ ExpandConstant('{tmp}\Video.wmv') +'" alias AVIFile parent '+ IntToStr(BGForm2.Handle) +' style child','',0,0);
mciSendString('put AVIFile window at '+ IntToStr(Round(VideoLeft) + 1) +' '+ IntToStr(Round(VideoTop) + 1) +' '+ IntToStr(Round(VideoWidth) - 2) +' '+ IntToStr(Round(VideoHeight) - 2),'',0,0);
mciSendString('play AVIFile repeat','',0,0);
end;
if SlidesEnabled and ShowBGFullscreen then
BGForm1.Hide;
end;

procedure StopVideo;
begin
if SlidesEnabled and ShowBGFullscreen then
begin
BGForm1.Show;
BGForm1.SendToBack;
WizardForm.BringToFront;
if DirBrowseForm.Showing then
DirBrowseForm.BringToFront;
if CancelForm.Showing then
CancelForm.BringToFront;
if DiskPromptForm.Showing then
DiskPromptForm.BringToFront;
end;
if VideoEnabled then
begin
mciSendString('stop AVIFile','',0,0);
mciSendString('close AVIFile','',0,0);
end;
BGForm2.Hide;
end;

function infostate(ChangeMode: Boolean): string;
begin
if ChangeMode then
begin
if MusicEnabled and VideoEnabled and (WizardForm.CurPageID = wpInstalling) then
begin
if DisplayMode = VideoMode then
begin
PlayMusic;
StopVideo;
DisplayMode:=MusicMode;
Result:= ExpandConstant('{cm:OtherMessage4_2}');
exit;
end;
if DisplayMode = MusicMode then
begin
StopMusic;
StopVideo;
DisplayMode:=0;
Result:= ExpandConstant('{cm:OtherMessage4_1}');
exit;
end;
if DisplayMode = 0 then
begin
PlayVideo;
StopMusic;
DisplayMode:=VideoMode;
Result:= ExpandConstant('{cm:OtherMessage4_4}');
exit;
end;
end;
if MusicEnabled then
begin
if MusicPlaying = False then begin
PlayMusic;
Result:= ExpandConstant('{cm:OtherMessage4_2}');
MusicPlaying:=True;
end else begin
StopMusic;
Result:= ExpandConstant('{cm:OtherMessage4_1}');
MusicPlaying:=False;
end;
exit;
end;
if VideoEnabled and (WizardForm.CurPageID = wpInstalling) then
begin
if VideoPlaying = False then begin
PlayVideo;
Result:= ExpandConstant('{cm:OtherMessage4_4}')
VideoPlaying:=True;
end else begin
StopVideo;
Result:= ExpandConstant('{cm:OtherMessage4_3}')
VideoPlaying:=False;
end;
exit;
end;
end else begin
if MusicEnabled and VideoEnabled then
begin
if DisplayMode = 0 then
Result:= ExpandConstant('{cm:OtherMessage4_1}');
if DisplayMode = MusicMode then
Result:= ExpandConstant('{cm:OtherMessage4_2}');
if DisplayMode = VideoMode then
Result:= ExpandConstant('{cm:OtherMessage4_4}');
exit;
end;
if VideoEnabled then
begin
if VideoPlaying = False then
Result:= ExpandConstant('{cm:OtherMessage4_3}')
else
Result:= ExpandConstant('{cm:OtherMessage4_4}');
exit;
end;
if MusicEnabled then
begin
if MusicPlaying = False then
Result:= ExpandConstant('{cm:OtherMessage4_1}')
else
Result:= ExpandConstant('{cm:OtherMessage4_2}');
exit;
end;
end;
end;

function ACustomButtonSound:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\AButtonSelected.wav'))
then
Result := True
else
Result := False;
end;

function ACustomButtonSound2:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\AButtonClicked.wav'))
then
Result := True
else
Result := False;
end;

procedure AButtonSoundSelected(hBtn:HWND);
begin
if CustomButtonSound then
sndplaySound(ExpandConstant('{tmp}\AButtonSelected.wav'),$0001);
end;

procedure AButtonSoundClicked(hBtn:HWND);
begin
if CustomButtonSound2 then
sndplaySound(ExpandConstant('{tmp}\AButtonClicked.wav'),$0001);
end;

procedure AButtonSoundSelected2;
begin
if CustomButtonSound then
sndplaySound(ExpandConstant('{tmp}\AButtonSelected.wav'),$0001);
end;

procedure AButtonSoundClicked2;
begin
if CustomButtonSound2 then
sndplaySound(ExpandConstant('{tmp}\AButtonClicked.wav'),$0001);
end;

procedure MainAreaMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
ReleaseCapture;
SendMessage(Wizardform.Handle,$0112,$F012,0);
end;

procedure AMainAreaMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
AutorunForm.SetFocus;
ReleaseCapture;
SendMessage(Autorunform.Handle,$0112,$F012,0);
end;

procedure ButtonDisabled(Sender:TObject);
begin

end;

procedure ButtonEnter(var Button:TBtn);
begin
if Button.StandardBtn.Enabled then
begin
ButtonSoundSelected2;
Button.Normal:=False;
Button.Selected:=True;
Button.Clicked:=False;
Button.Area.OnClick:=Button.ClickAction;
Button.Area.OnDblClick:=Button.ClickAction;
Button.StandardBtn.OnClick:=Button.ClickAction;
end else begin
Button.Normal:=False;
Button.Selected:=False;
Button.Clicked:=False;
Button.Area.OnClick:=@ButtonDisabled;
Button.Area.OnDblClick:=@ButtonDisabled;
Button.StandardBtn.OnClick:=@ButtonDisabled;
end;
if Button.StandardBtn.Visible = False then
begin
Button.Normal:=False;
Button.Selected:=False;
Button.Clicked:=False;
end;
end;

procedure ButtonLeave(var Button:TBtn);
begin
if Button.StandardBtn.Enabled then
begin
Button.Normal:=True;
Button.Selected:=False;
Button.Clicked:=False;
Button.Area.OnClick:=Button.ClickAction;
Button.Area.OnDblClick:=Button.ClickAction;
Button.StandardBtn.OnClick:=Button.ClickAction;
end else begin
Button.Normal:=False;
Button.Selected:=False;
Button.Clicked:=False;
Button.Area.OnClick:=@ButtonDisabled;
Button.Area.OnDblClick:=@ButtonDisabled;
Button.StandardBtn.OnClick:=@ButtonDisabled;
end;
if Button.StandardBtn.Visible = False then
begin
Button.Normal:=False;
Button.Selected:=False;
Button.Clicked:=False;
end;
end;

procedure ButtonDown(var Button:TBtn);
begin
if Button.StandardBtn.Enabled then
begin
ButtonSoundClicked2;
Button.Normal:=False;
Button.Selected:=False;
Button.Clicked:=True;
Button.Area.OnClick:=Button.ClickAction;
Button.Area.OnDblClick:=Button.ClickAction;
Button.StandardBtn.OnClick:=Button.ClickAction;
end else begin
Button.Normal:=False;
Button.Selected:=False;
Button.Clicked:=False;
Button.Area.OnClick:=@ButtonDisabled;
Button.Area.OnDblClick:=@ButtonDisabled;
Button.StandardBtn.OnClick:=@ButtonDisabled;
end;
if Button.StandardBtn.Visible = False then
begin
Button.Normal:=False;
Button.Selected:=False;
Button.Clicked:=False;
end;
end;

procedure ButtonUp(var Button:TBtn);
begin
if Button.StandardBtn.Enabled then
begin
Button.Normal:=False;
Button.Selected:=True;
Button.Clicked:=False;
Button.Area.OnClick:=Button.ClickAction;
Button.Area.OnDblClick:=Button.ClickAction;
Button.StandardBtn.OnClick:=Button.ClickAction;
end else begin
Button.Normal:=False;
Button.Selected:=False;
Button.Clicked:=False;
Button.Area.OnClick:=@ButtonDisabled;
Button.Area.OnDblClick:=@ButtonDisabled;
Button.StandardBtn.OnClick:=@ButtonDisabled;
end;
if Button.StandardBtn.Visible = False then
begin
Button.Normal:=False;
Button.Selected:=False;
Button.Clicked:=False;
end;
end;

procedure AButtonEnter(var Button:TBtn);
begin
if Button.StandardBtn.Enabled then
begin
AButtonSoundSelected2;
Button.Normal:=False;
Button.Selected:=True;
Button.Clicked:=False;
Button.Area.OnClick:=Button.ClickAction;
Button.Area.OnDblClick:=Button.ClickAction;
Button.StandardBtn.OnClick:=Button.ClickAction;
end else begin
Button.Normal:=False;
Button.Selected:=False;
Button.Clicked:=False;
Button.Area.OnClick:=@ButtonDisabled;
Button.Area.OnDblClick:=@ButtonDisabled;
Button.StandardBtn.OnClick:=@ButtonDisabled;
end;
if Button.StandardBtn.Visible = False then
begin
Button.Normal:=False;
Button.Selected:=False;
Button.Clicked:=False;
end;
end;

procedure AButtonLeave(var Button:TBtn);
begin
if Button.StandardBtn.Enabled then
begin
Button.Normal:=True;
Button.Selected:=False;
Button.Clicked:=False;
Button.Area.OnClick:=Button.ClickAction;
Button.Area.OnDblClick:=Button.ClickAction;
Button.StandardBtn.OnClick:=Button.ClickAction;
end else begin
Button.Normal:=False;
Button.Selected:=False;
Button.Clicked:=False;
Button.Area.OnClick:=@ButtonDisabled;
Button.Area.OnDblClick:=@ButtonDisabled;
Button.StandardBtn.OnClick:=@ButtonDisabled;
end;
if Button.StandardBtn.Visible = False then
begin
Button.Normal:=False;
Button.Selected:=False;
Button.Clicked:=False;
end;
end;

procedure AButtonDown(var Button:TBtn);
begin
if Button.StandardBtn.Enabled then
begin
AButtonSoundClicked2;
Button.Normal:=False;
Button.Selected:=False;
Button.Clicked:=True;
Button.Area.OnClick:=Button.ClickAction;
Button.Area.OnDblClick:=Button.ClickAction;
Button.StandardBtn.OnClick:=Button.ClickAction;
end else begin
Button.Normal:=False;
Button.Selected:=False;
Button.Clicked:=False;
Button.Area.OnClick:=@ButtonDisabled;
Button.Area.OnDblClick:=@ButtonDisabled;
Button.StandardBtn.OnClick:=@ButtonDisabled;
end;
if Button.StandardBtn.Visible = False then
begin
Button.Normal:=False;
Button.Selected:=False;
Button.Clicked:=False;
end;
end;

procedure AButtonUp(var Button:TBtn);
begin
if Button.StandardBtn.Enabled then
begin
Button.Normal:=False;
Button.Selected:=True;
Button.Clicked:=False;
Button.Area.OnClick:=Button.ClickAction;
Button.Area.OnDblClick:=Button.ClickAction;
Button.StandardBtn.OnClick:=Button.ClickAction;
end else begin
Button.Normal:=False;
Button.Selected:=False;
Button.Clicked:=False;
Button.Area.OnClick:=@ButtonDisabled;
Button.Area.OnDblClick:=@ButtonDisabled;
Button.StandardBtn.OnClick:=@ButtonDisabled;
end;
if Button.StandardBtn.Visible = False then
begin
Button.Normal:=False;
Button.Selected:=False;
Button.Clicked:=False;
end;
end;

procedure ButtonOnEnter(Sender:TObject);
begin
if WizardForm.Showing then
begin
case Sender of
BackBtn.Area: ButtonEnter(BackBtn);
NextBtn.Area: ButtonEnter(NextBtn);
CancelBtn.Area: ButtonEnter(CancelBtn);
MusicBtn.Area: ButtonEnter(MusicBtn);
DirBrowseBtn.Area: ButtonEnter(DirBrowseBtn);
GroupBrowseBtn.Area: ButtonEnter(GroupBrowseBtn);
CancelBtn2.Area: ButtonEnter(CancelBtn2);
MusicBtn2.Area: ButtonEnter(MusicBtn2);
MusicBtn3.Area: ButtonEnter(MusicBtn3);
MinimizeBtn.Area: ButtonEnter(MinimizeBtn);
CloseBtn.Area: ButtonEnter(CloseBtn);
end;
if PreviewAvai then
begin
case Sender of
Preview1Btn.Area: ButtonEnter(Preview1Btn);
Preview2Btn.Area: ButtonEnter(Preview2Btn);
Preview3Btn.Area: ButtonEnter(Preview3Btn);
end;
end;
end;
if CancelForm.Showing then
begin
case Sender of
CancelYesBtn.Area: ButtonEnter(CancelYesBtn);
CancelNoBtn.Area: ButtonEnter(CancelNoBtn);
end;
end;
if DiskPromptForm.Showing then
begin
case Sender of
DiskPromptOkBtn.Area: ButtonEnter(DiskPromptOkBtn);
DiskPromptCancelBtn.Area: ButtonEnter(DiskPromptCancelBtn);
end;
end;
if DirBrowseForm.Showing then
begin
case Sender of
DirBrowseOkBtn.Area: ButtonEnter(DirBrowseOkBtn);
DirBrowseCancelBtn.Area: ButtonEnter(DirBrowseCancelBtn);
end;
end;
if CreditsForm.Showing then
begin
case Sender of
CreditsOkBtn.Area: ButtonEnter(CreditsOkBtn);
end;
end;
end;

procedure AButtonOnEnter(Sender:TObject);
begin
if AutorunForm.Showing then
begin
case Sender of
LaunchBtn.Area: AButtonEnter(LaunchBtn);
Launch2Btn.Area: AButtonEnter(Launch2Btn);
Launch3Btn.Area: AButtonEnter(Launch3Btn);
Launch4Btn.Area: AButtonEnter(Launch4Btn);
Launch5Btn.Area: AButtonEnter(Launch5Btn);
Launch6Btn.Area: AButtonEnter(Launch6Btn);
Launch7Btn.Area: AButtonEnter(Launch7Btn);
Launch8Btn.Area: AButtonEnter(Launch8Btn);
Launch9Btn.Area: AButtonEnter(Launch9Btn);
Launch10Btn.Area: AButtonEnter(Launch10Btn);
InstallBtn.Area: AButtonEnter(InstallBtn);
ExitBtn.Area: AButtonEnter(ExitBtn);
AMusicBtn.Area: AButtonEnter(AMusicBtn);
AMusicBtn2.Area: AButtonEnter(AMusicBtn2);
OpenDiskBtn.Area: AButtonEnter(OpenDiskBtn);
ReadmeBtn.Area: AButtonEnter(ReadmeBtn);
ManualBtn.Area: AButtonEnter(ManualBtn);
WebBtn.Area: AButtonEnter(WebBtn);
AMinimizeBtn.Area: AButtonEnter(AMinimizeBtn);
ACloseBtn.Area: AButtonEnter(ACloseBtn);
end;
end;
end;

procedure ButtonOnLeave(Sender:TObject);
begin
if WizardForm.Showing then
begin
case Sender of
BackBtn.Area: ButtonLeave(BackBtn);
NextBtn.Area: ButtonLeave(NextBtn);
CancelBtn.Area: ButtonLeave(CancelBtn);
MusicBtn.Area: ButtonLeave(MusicBtn);
DirBrowseBtn.Area: ButtonLeave(DirBrowseBtn);
GroupBrowseBtn.Area: ButtonLeave(GroupBrowseBtn);
CancelBtn2.Area: ButtonLeave(CancelBtn2);
MusicBtn2.Area: ButtonLeave(MusicBtn2);
MusicBtn3.Area: ButtonLeave(MusicBtn3);
MinimizeBtn.Area: ButtonLeave(MinimizeBtn);
CloseBtn.Area: ButtonLeave(CloseBtn);
end;
if PreviewAvai then
begin
case Sender of
Preview1Btn.Area: ButtonLeave(Preview1Btn);
Preview2Btn.Area: ButtonLeave(Preview2Btn);
Preview3Btn.Area: ButtonLeave(Preview3Btn);
end;
end;
end;
if CancelForm.Showing then
begin
case Sender of
CancelYesBtn.Area: ButtonLeave(CancelYesBtn);
CancelNoBtn.Area: ButtonLeave(CancelNoBtn);
end;
end;
if DiskPromptForm.Showing then
begin
case Sender of
DiskPromptOkBtn.Area: ButtonLeave(DiskPromptOkBtn);
DiskPromptCancelBtn.Area: ButtonLeave(DiskPromptCancelBtn);
end;
end;
if DirBrowseForm.Showing then
begin
case Sender of
DirBrowseOkBtn.Area: ButtonLeave(DirBrowseOkBtn);
DirBrowseCancelBtn.Area: ButtonLeave(DirBrowseCancelBtn);
end;
end;
if CreditsForm.Showing then
begin
case Sender of
CreditsOkBtn.Area: ButtonLeave(CreditsOkBtn);
end;
end;
end;

procedure AButtonOnLeave(Sender:TObject);
begin
if AutorunForm.Showing then
begin
case Sender of
LaunchBtn.Area: AButtonLeave(LaunchBtn);
Launch2Btn.Area: AButtonLeave(Launch2Btn);
Launch3Btn.Area: AButtonLeave(Launch3Btn);
Launch4Btn.Area: AButtonLeave(Launch4Btn);
Launch5Btn.Area: AButtonLeave(Launch5Btn);
Launch6Btn.Area: AButtonLeave(Launch6Btn);
Launch7Btn.Area: AButtonLeave(Launch7Btn);
Launch8Btn.Area: AButtonLeave(Launch8Btn);
Launch9Btn.Area: AButtonLeave(Launch9Btn);
Launch10Btn.Area: AButtonLeave(Launch10Btn);
InstallBtn.Area: AButtonLeave(InstallBtn);
ExitBtn.Area: AButtonLeave(ExitBtn);
AMusicBtn.Area: AButtonLeave(AMusicBtn);
AMusicBtn2.Area: AButtonLeave(AMusicBtn2);
OpenDiskBtn.Area: AButtonLeave(OpenDiskBtn);
ReadmeBtn.Area: AButtonLeave(ReadmeBtn);
ManualBtn.Area: AButtonLeave(ManualBtn);
WebBtn.Area: AButtonLeave(WebBtn);
AMinimizeBtn.Area: AButtonLeave(AMinimizeBtn);
ACloseBtn.Area: AButtonLeave(ACloseBtn);
end;
end;
end;

procedure ButtonOnDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if WizardForm.Showing then
begin
case Sender of
BackBtn.Area: ButtonDown(BackBtn);
NextBtn.Area: ButtonDown(NextBtn);
CancelBtn.Area: ButtonDown(CancelBtn);
MusicBtn.Area: ButtonDown(MusicBtn);
DirBrowseBtn.Area: ButtonDown(DirBrowseBtn);
GroupBrowseBtn.Area: ButtonDown(GroupBrowseBtn);
CancelBtn2.Area: ButtonDown(CancelBtn2);
MusicBtn2.Area: ButtonDown(MusicBtn2);
MusicBtn3.Area: ButtonDown(MusicBtn3);
MinimizeBtn.Area: ButtonDown(MinimizeBtn);
CloseBtn.Area: ButtonDown(CloseBtn);
end;
if PreviewAvai then
begin
case Sender of
Preview1Btn.Area: ButtonDown(Preview1Btn);
Preview2Btn.Area: ButtonDown(Preview2Btn);
Preview3Btn.Area: ButtonDown(Preview3Btn);
end;
end;
end;
if CancelForm.Showing then
begin
case Sender of
CancelYesBtn.Area: ButtonDown(CancelYesBtn);
CancelNoBtn.Area: ButtonDown(CancelNoBtn);
end;
end;
if DiskPromptForm.Showing then
begin
case Sender of
DiskPromptOkBtn.Area: ButtonDown(DiskPromptOkBtn);
DiskPromptCancelBtn.Area: ButtonDown(DiskPromptCancelBtn);
end;
end;
if DirBrowseForm.Showing then
begin
case Sender of
DirBrowseOkBtn.Area: ButtonDown(DirBrowseOkBtn);
DirBrowseCancelBtn.Area: ButtonDown(DirBrowseCancelBtn);
end;
end;
if CreditsForm.Showing then
begin
case Sender of
CreditsOkBtn.Area: ButtonDown(CreditsOkBtn);
end;
end;
end;

procedure AButtonOnDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if AutorunForm.Showing then
begin
case Sender of
LaunchBtn.Area: AButtonDown(LaunchBtn);
Launch2Btn.Area: AButtonDown(Launch2Btn);
Launch3Btn.Area: AButtonDown(Launch3Btn);
Launch4Btn.Area: AButtonDown(Launch4Btn);
Launch5Btn.Area: AButtonDown(Launch5Btn);
Launch6Btn.Area: AButtonDown(Launch6Btn);
Launch7Btn.Area: AButtonDown(Launch7Btn);
Launch8Btn.Area: AButtonDown(Launch8Btn);
Launch9Btn.Area: AButtonDown(Launch9Btn);
Launch10Btn.Area: AButtonDown(Launch10Btn);
InstallBtn.Area: AButtonDown(InstallBtn);
ExitBtn.Area: AButtonDown(ExitBtn);
AMusicBtn.Area: AButtonDown(AMusicBtn);
AMusicBtn2.Area: AButtonDown(AMusicBtn2);
OpenDiskBtn.Area: AButtonDown(OpenDiskBtn);
ReadmeBtn.Area: AButtonDown(ReadmeBtn);
ManualBtn.Area: AButtonDown(ManualBtn);
WebBtn.Area: AButtonDown(WebBtn);
AMinimizeBtn.Area: AButtonDown(AMinimizeBtn);
ACloseBtn.Area: AButtonDown(ACloseBtn);
end;
end;
end;

procedure ButtonOnUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if WizardForm.Showing then
begin
case Sender of
BackBtn.Area: ButtonUp(BackBtn);
NextBtn.Area: ButtonUp(NextBtn);
CancelBtn.Area: ButtonUp(CancelBtn);
MusicBtn.Area: ButtonUp(MusicBtn);
DirBrowseBtn.Area: ButtonUp(DirBrowseBtn);
GroupBrowseBtn.Area: ButtonUp(GroupBrowseBtn);
CancelBtn2.Area: ButtonUp(CancelBtn2);
MusicBtn2.Area: ButtonUp(MusicBtn2);
MusicBtn3.Area: ButtonUp(MusicBtn3);
MinimizeBtn.Area: ButtonUp(MinimizeBtn);
CloseBtn.Area: ButtonUp(CloseBtn);
end;
if PreviewAvai then
begin
case Sender of
Preview1Btn.Area: ButtonUp(Preview1Btn);
Preview2Btn.Area: ButtonUp(Preview2Btn);
Preview3Btn.Area: ButtonUp(Preview3Btn);
end;
end;
end;
if CancelForm.Showing then
begin
case Sender of
CancelYesBtn.Area: ButtonUp(CancelYesBtn);
CancelNoBtn.Area: ButtonUp(CancelNoBtn);
end;
end;
if DiskPromptForm.Showing then
begin
case Sender of
DiskPromptOkBtn.Area: ButtonUp(DiskPromptOkBtn);
DiskPromptCancelBtn.Area: ButtonUp(DiskPromptCancelBtn);
end;
end;
if DirBrowseForm.Showing then
begin
case Sender of
DirBrowseOkBtn.Area: ButtonUp(DirBrowseOkBtn);
DirBrowseCancelBtn.Area: ButtonUp(DirBrowseCancelBtn);
end;
end;
if CreditsForm.Showing then
begin
case Sender of
CreditsOkBtn.Area: ButtonUp(CreditsOkBtn);
end;
end;
end;

procedure AButtonOnUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
if AutorunForm.Showing then
begin
case Sender of
LaunchBtn.Area: AButtonUp(LaunchBtn);
Launch2Btn.Area: AButtonUp(Launch2Btn);
Launch3Btn.Area: AButtonUp(Launch3Btn);
Launch4Btn.Area: AButtonUp(Launch4Btn);
Launch5Btn.Area: AButtonUp(Launch5Btn);
Launch6Btn.Area: AButtonUp(Launch6Btn);
Launch7Btn.Area: AButtonUp(Launch7Btn);
Launch8Btn.Area: AButtonUp(Launch8Btn);
Launch9Btn.Area: AButtonUp(Launch9Btn);
Launch10Btn.Area: AButtonUp(Launch10Btn);
InstallBtn.Area: AButtonUp(InstallBtn);
ExitBtn.Area: AButtonUp(ExitBtn);
AMusicBtn.Area: AButtonUp(AMusicBtn);
AMusicBtn2.Area: AButtonUp(AMusicBtn2);
OpenDiskBtn.Area: AButtonUp(OpenDiskBtn);
ReadmeBtn.Area: AButtonUp(ReadmeBtn);
ManualBtn.Area: AButtonUp(ManualBtn);
WebBtn.Area: AButtonUp(WebBtn);
AMinimizeBtn.Area: AButtonUp(AMinimizeBtn);
ACloseBtn.Area: AButtonUp(ACloseBtn);
end;
end;
end;

function ButtonFontUpperCaser(Word: String): string;
begin
For x:=1 to Length(Word) do begin
Result := Result + CharUpper(Word[x]);
end;
end;

procedure ButtonSetText(var Button:TBtn; hText: String);
begin
if Button.FontUpperCase then
Button.CstmLabl.Labl.Caption:=ButtonFontUpperCaser(hText)
else
Button.CstmLabl.Labl.Caption:=hText;
if Button.FontUpperCase then
Button.StandardBtn.Caption:=ButtonFontUpperCaser(hText)
else
Button.StandardBtn.Caption:=hText;
CreateShadow(Button.CstmLabl,False);
end;

procedure ButtonSetFont(var Button:TBtn; hFontName: String; hFontSize, hFontSizeSelected, hFontSizeClicked, hFontSizeDisabled: Integer);
begin
Button.CstmLabl.Labl.Font.Name:=hFontName;
Button.CstmLabl.Labl.Font.Size:=hFontSize;
Button.StandardBtn.Font.Name:=hFontName;
Button.StandardBtn.Font.Size:=hFontSize;
Button.FontSize:=hFontSize;
Button.FontSizeSelected:=hFontSizeSelected;
Button.FontSizeClicked:=hFontSizeClicked;
Button.FontSizeDisabled:=hFontSizeDisabled;
CreateShadow(Button.CstmLabl,False);
end;

procedure ButtonSetFontColor(var Button:TBtn;hFontColor, hFontColorSelected, hFontColorClicked, hFontColorDisabled : Integer);
begin
Button.CstmLabl.Labl.Font.Color:=hFontColor;
Button.FontColor:=hFontColor;
Button.FontColorSelected:=hFontColorSelected;
Button.FontColorClicked:=hFontColorClicked;
Button.FontColorDisabled:=hFontColorDisabled;
Button.StandardBtn.Font.Color:=hFontColor;
CreateShadow(Button.CstmLabl,False);
end;

procedure ButtonSetTextAlignment(var Button: TBtn; hAlignment: TAlignment; hLayout: TTextLayout; LabelX, LabelY: Integer);
begin
if Button.CstmLabl.Labl.Left <> -12911 then
Button.CstmLabl.Labl.SetBounds(Button.CstmLabl.Labl.Left + LabelX,Button.CstmLabl.Labl.Top + LabelY,Button.CstmLabl.Labl.Width,Button.CstmLabl.Labl.Height)
else
Button.CstmLabl.Labl.SetBounds(-12911,0,0,0);
Button.CstmLabl.Labl.Alignment:=hAlignment;
Button.CstmLabl.Labl.Layout:=hLayout;
CreateShadow(Button.CstmLabl,False);
end;

procedure ButtonSetFontStyle(var Button: TBtn; hBold, hItalic, hUnderline, hStrikeOut, hUpperCase: Boolean);
begin
if hBold then
Button.CstmLabl.Labl.Font.Style:=Button.CstmLabl.Labl.Font.Style + [fsBold]
else
Button.CstmLabl.Labl.Font.Style:=Button.CstmLabl.Labl.Font.Style - [fsBold];
if hItalic then
Button.CstmLabl.Labl.Font.Style:=Button.CstmLabl.Labl.Font.Style + [fsItalic]
else
Button.CstmLabl.Labl.Font.Style:=Button.CstmLabl.Labl.Font.Style - [fsItalic];
if hUnderline then
Button.CstmLabl.Labl.Font.Style:=Button.CstmLabl.Labl.Font.Style + [fsUnderline]
else
Button.CstmLabl.Labl.Font.Style:=Button.CstmLabl.Labl.Font.Style - [fsUnderline];
if hStrikeOut then
Button.CstmLabl.Labl.Font.Style:=Button.CstmLabl.Labl.Font.Style + [fsStrikeout]
else
Button.CstmLabl.Labl.Font.Style:=Button.CstmLabl.Labl.Font.Style - [fsStrikeout];
if hUpperCase then
Button.CstmLabl.Labl.Caption:=ButtonFontUpperCaser(Button.CstmLabl.Labl.Caption);
if hBold then
Button.StandardBtn.Font.Style:=Button.StandardBtn.Font.Style + [fsBold]
else
Button.StandardBtn.Font.Style:=Button.StandardBtn.Font.Style - [fsBold];
if hItalic then
Button.StandardBtn.Font.Style:=Button.StandardBtn.Font.Style + [fsItalic]
else
Button.StandardBtn.Font.Style:=Button.StandardBtn.Font.Style - [fsItalic];
if hUnderline then
Button.StandardBtn.Font.Style:=Button.StandardBtn.Font.Style + [fsUnderline]
else
Button.StandardBtn.Font.Style:=Button.StandardBtn.Font.Style - [fsUnderline];
if hStrikeOut then
Button.StandardBtn.Font.Style:=Button.StandardBtn.Font.Style + [fsStrikeout]
else
Button.StandardBtn.Font.Style:=Button.StandardBtn.Font.Style - [fsStrikeout];
if hUpperCase then
Button.StandardBtn.Caption:=ButtonFontUpperCaser(Button.StandardBtn.Caption);
Button.FontUpperCase:=hUpperCase;
CreateShadow(Button.CstmLabl,False);
end;

procedure ButtonSetEnabled(var Button: TBtn; hEnabled: Boolean);
begin
Button.StandardBtn.Enabled:=hEnabled;
if Button.CstmImg = True then
begin
if hEnabled then
begin
Button.CstmLabl.Labl.Font.Color:=Button.FontColor;
if Button.StandardBtn.Visible then
ImgSetTransparent(Button.Btn,255)
else
ImgSetTransparent(Button.Btn,0);
ImgSetTransparent(Button.BtnSelected,0);
ImgSetTransparent(Button.BtnClicked,0);
ImgSetTransparent(Button.BtnDisabled,0);
end else begin
Button.CstmLabl.Labl.Font.Color:=Button.FontColorDisabled;
ImgSetTransparent(Button.Btn,0);
ImgSetTransparent(Button.BtnSelected,0);
ImgSetTransparent(Button.BtnClicked,0);
if Button.StandardBtn.Visible then
ImgSetTransparent(Button.BtnDisabled,255)
else
ImgSetTransparent(Button.BtnDisabled,0);
end;
end;
CreateShadow(Button.CstmLabl,False);
end;

procedure ButtonSetVisibility(var Button: TBtn; hVisible: Boolean);
begin
Button.Area.Visible:=hVisible;
Button.CstmLabl.Labl.Visible:=hVisible;
Button.StandardBtn.Visible:=hVisible;
if Button.CstmImg = True then
begin
if hVisible then
begin
if Button.StandardBtn.Enabled then
begin
Button.CstmLabl.Labl.Font.Color:=Button.FontColor;
ImgSetTransparent(Button.Btn,255);
end else
ImgSetTransparent(Button.Btn,0);
ImgSetTransparent(Button.BtnSelected,0);
ImgSetTransparent(Button.BtnClicked,0);
if Button.StandardBtn.Enabled then
ImgSetTransparent(Button.BtnDisabled,0)
else begin
Button.CstmLabl.Labl.Font.Color:=Button.FontColorDisabled;
ImgSetTransparent(Button.BtnDisabled,255);
end;
end else begin
if Button.StandardBtn.Enabled then
ImgSetTransparent(Button.Btn,0);
ImgSetTransparent(Button.BtnSelected,0);
ImgSetTransparent(Button.BtnClicked,0);
if Button.StandardBtn.Enabled = False then
ImgSetTransparent(Button.BtnDisabled,0);
end;
end;
CreateShadow(Button.CstmLabl,False);
end;

procedure ButtonSetCursor(var Button: TBtn; hCursor: PAnsiChar);
begin
with Button.StandardBtn do
OldCursor:= SetClassLong(Handle, GCL_HCURSOR, LoadCursorFromFile(hCursor));
CreateShadow(Button.CstmLabl,False);
end;

procedure ButtonSetPosition(var Button: TBtn; hLeft, hTop, hWidth, hHeight: Integer);
begin
if Button.CstmLabl.Labl.Left <> -12911 then
begin
Button.Area.SetBounds(hLeft,hTop,hWidth,hHeight);
Button.CstmLabl.Labl.SetBounds(hLeft,hTop,hWidth,hHeight);
if Button.CstmImg = True then
begin
ImgSetPosition(Button.Btn,hLeft,hTop,hWidth,hHeight);
ImgSetPosition(Button.BtnSelected,hLeft,hTop,hWidth,hHeight);
ImgSetPosition(Button.BtnClicked,hLeft,hTop,hWidth,hHeight);
ImgSetPosition(Button.BtnDisabled,hLeft,hTop,hWidth,hHeight);
end;
end;
if Button.StandardBtn.Left <> -12911 then
Button.StandardBtn.SetBounds(hLeft,hTop,hWidth,hHeight);
CreateShadow(Button.CstmLabl,False);
end;

procedure ButtonSetEvent(var Button: TBtn; Event: TNotifyEvent);
begin
Button.Area.OnClick:=Event;
Button.Area.OnDblClick:=Event;
Button.StandardBtn.OnClick:=Event;
Button.ClickAction:=Event;
CreateShadow(Button.CstmLabl,False);
end;

function ButtonGetText(var Button:TBtn): String;
begin
Result:=Button.StandardBtn.Caption;
end;

function ButtonGetEnabled(var Button: TBtn): Boolean;
begin
Result:=Button.StandardBtn.Enabled;
end;

function ButtonGetVisibility(var Button: TBtn): Boolean;
begin
Result:=Button.StandardBtn.Visible;
end;

procedure ButtonGetPosition(var Button: TBtn; hLeft, hTop, hWidth, hHeight: Integer);
begin
if Button.Area.Left <> -12911 then
begin
hLeft:=Button.Area.Left;
hTop:=Button.Area.Top;
hWidth:=Button.Area.Width;
hHeight:=Button.Area.Height;
end;
if Button.StandardBtn.Left <> -12911 then
begin
hLeft:=Button.StandardBtn.Left;
hTop:=Button.StandardBtn.Top;
hWidth:=Button.StandardBtn.Width;
hHeight:=Button.StandardBtn.Height;
end;
end;

procedure ButtonApplyChanges(hParent :TWinControl);
begin
ImgApplyChanges(hParent.Handle);
end;

procedure ButtonModal(var Button: TBtn);
begin
Button.ModalBtn.Click;
end;

function ButtonCreate(hParent :TWinControl; hLeft, hTop, hWidth, hHeight: Integer; FileName1, FileName2, FileName3, FileName4: PAnsiChar; Modal: Integer):TBtn;
begin
if FileExists(FileName1) or FileExists(ExpandConstant('{tmp}\Blank.png')) then
begin
Result.CstmImg:= True;
if not FileExists(FileName1) then
FileCopy(ExpandConstant('{tmp}\Blank.png'),FileName1,False);
if not FileExists(FileName2) then
FileCopy(FileName1,FileName2,False);
if not FileExists(FileName3) then
FileCopy(FileName1,FileName3,False);
if not FileExists(FileName4) then
FileCopy(FileName1,FileName4,False);
Result.Btn:= ImgLoad(hParent.Handle,FileName1,hLeft,hTop,hWidth,hHeight,True,True);
Result.BtnSelected:= ImgLoad(hParent.Handle,FileName2,hLeft,hTop,hWidth,hHeight,True,True);
Result.BtnClicked:= ImgLoad(hParent.Handle,FileName3,hLeft,hTop,hWidth,hHeight,True,True);
Result.BtnDisabled:= ImgLoad(hParent.Handle,FileName4,hLeft,hTop,hWidth,hHeight,True,True);
end else
Result.CstmImg:= False;
if Result.CstmImg = True then
begin
ImgSetTransparent(Result.Btn,255);
ImgSetTransparent(Result.BtnSelected,0);
ImgSetTransparent(Result.BtnClicked,0);
ImgSetTransparent(Result.BtnDisabled,0);
end;
Result.CstmLabl.Labl:=TLabel.Create(hParent);
Result.CstmLabl.Labl.Parent:=hParent;
Result.CstmLabl.Labl.AutoSize:=False;
Result.CstmLabl.Labl.Alignment:=taCenter;
Result.CstmLabl.Labl.Layout:=tlCenter;
Result.CstmLabl.Labl.OnMouseDown := @MainAreaMouseDown;
if FileExists(FileName1) then
Result.CstmLabl.Labl.SetBounds(hLeft,hTop,hWidth,hHeight)
else
Result.CstmLabl.Labl.SetBounds(-12911,0,0,0);
Result.CstmLabl.Labl.Transparent:= true;
Result.CstmLabl.Labl.BringToFront;
CreateShadow(Result.CstmLabl,True);
Result.Area:=TLabel.Create(hParent);
Result.Area.Parent:=hParent;
Result.Area.AutoSize:=False;
Result.Area.Alignment:=taCenter;
Result.Area.Layout:=tlCenter;
if FileExists(FileName1) then
Result.Area.SetBounds(hLeft,hTop,hWidth,hHeight)
else
Result.Area.SetBounds(-12911,0,0,0);
Result.Area.Transparent:= true;
Result.Area.BringToFront;
Result.Area.OnMouseEnter:= @ButtonOnEnter;
Result.Area.OnMouseLeave:= @ButtonOnLeave;
Result.Area.OnMouseDown := @ButtonOnDown;
Result.Area.OnMouseUp := @ButtonOnUp;
Result.StandardBtn:= TButton.Create(hParent);
Result.StandardBtn.Parent:= hParent;
Result.ModalBtn:= TButton.Create(hParent);
Result.ModalBtn.SetBounds(0,0,0,0);
Result.ModalBtn.ModalResult:=Modal;
Result.ModalBtn.Parent:= hParent;
if FileExists(FileName1) then
Result.StandardBtn.SetBounds(-12911,0,0,0)
else
Result.StandardBtn.SetBounds(hLeft,hTop,hWidth,hHeight);
end;

function AButtonCreate(hParent :TWinControl; hLeft, hTop, hWidth, hHeight: Integer; FileName1, FileName2, FileName3, FileName4: PAnsiChar; Modal: Integer):TBtn;
begin
if FileExists(FileName1) or FileExists(ExpandConstant('{tmp}\Blank.png')) then
begin
Result.CstmImg:= True;
if not FileExists(FileName1) then
FileCopy(ExpandConstant('{tmp}\Blank.png'),FileName1,False);
if not FileExists(FileName2) then
FileCopy(FileName1,FileName2,False);
if not FileExists(FileName3) then
FileCopy(FileName1,FileName3,False);
if not FileExists(FileName4) then
FileCopy(FileName1,FileName4,False);
Result.Btn:= ImgLoad(hParent.Handle,FileName1,hLeft,hTop,hWidth,hHeight,True,True);
Result.BtnSelected:= ImgLoad(hParent.Handle,FileName2,hLeft,hTop,hWidth,hHeight,True,True);
Result.BtnClicked:= ImgLoad(hParent.Handle,FileName3,hLeft,hTop,hWidth,hHeight,True,True);
Result.BtnDisabled:= ImgLoad(hParent.Handle,FileName4,hLeft,hTop,hWidth,hHeight,True,True);
end else
Result.CstmImg:= False;
if Result.CstmImg = True then
begin
ImgSetTransparent(Result.Btn,255);
ImgSetTransparent(Result.BtnSelected,0);
ImgSetTransparent(Result.BtnClicked,0);
ImgSetTransparent(Result.BtnDisabled,0);
end;
Result.CstmLabl.Labl:=TLabel.Create(hParent);
Result.CstmLabl.Labl.Parent:=hParent;
Result.CstmLabl.Labl.AutoSize:=False;
Result.CstmLabl.Labl.Alignment:=taCenter;
Result.CstmLabl.Labl.Layout:=tlCenter;
Result.CstmLabl.Labl.OnMouseDown := @MainAreaMouseDown;
if FileExists(FileName1) then
Result.CstmLabl.Labl.SetBounds(hLeft,hTop,hWidth,hHeight)
else
Result.CstmLabl.Labl.SetBounds(-12911,0,0,0);
Result.CstmLabl.Labl.Transparent:= true;
Result.CstmLabl.Labl.BringToFront;
CreateShadow(Result.CstmLabl,True);
Result.Area:=TLabel.Create(hParent);
Result.Area.Parent:=hParent;
Result.Area.AutoSize:=False;
Result.Area.Alignment:=taCenter;
Result.Area.Layout:=tlCenter;
if FileExists(FileName1) then
Result.Area.SetBounds(hLeft,hTop,hWidth,hHeight)
else
Result.Area.SetBounds(-12911,0,0,0);
Result.Area.Transparent:= true;
Result.Area.BringToFront;
Result.Area.OnMouseEnter:= @AButtonOnEnter;
Result.Area.OnMouseLeave:= @AButtonOnLeave;
Result.Area.OnMouseDown := @AButtonOnDown;
Result.Area.OnMouseUp := @AButtonOnUp;
Result.StandardBtn:= TButton.Create(hParent);
Result.StandardBtn.Parent:= hParent;
Result.ModalBtn:= TButton.Create(hParent);
Result.ModalBtn.SetBounds(0,0,0,0);
Result.ModalBtn.ModalResult:=Modal;
Result.ModalBtn.Parent:= hParent;
if FileExists(FileName1) then
Result.StandardBtn.SetBounds(-12911,0,0,0)
else
Result.StandardBtn.SetBounds(hLeft,hTop,hWidth,hHeight);
end;

procedure FontEffect(Button:TBtn; TargetFontColor, TargetFontSize:Integer);
var R1,G1,B1,R2,G2,B2:Integer;
begin
with Button do begin
R1 := CstmLabl.Labl.Font.Color / $10000;
G1 := CstmLabl.Labl.Font.Color / $100 - R1 * $100;
B1 := CstmLabl.Labl.Font.Color- R1 * $10000 - G1 * $100 ;
R2 := TargetFontColor / $10000;
G2 := TargetFontColor / $100 - R2 * $100;
B2 := TargetFontColor- R2 * $10000 - G2 * $100 ;
if CstmLabl.Labl.Font.Color >= TargetFontColor then begin
if R1 > R2 then
R1 := R1 - $11;
if R1 < R2 then
R1 := R2;
if G1 > G2 then
G1 := G1 - $11;
if G1 < G2 then
G1 := G2;
if B1 > B2 then
B1 := B1 - $11;
if B1 < B2 then
B1 := B2;
CstmLabl.Labl.Font.Color:= R1 * $10000 + G1 * $100 + B1;
if CstmLabl.Labl.Font.Color - $111111 <= TargetFontColor then
CstmLabl.Labl.Font.Color := TargetFontColor;
end else begin
if R1 < R2 then
R1 := R1 + $11;
if R1 > R2 then
R1 := R2;
if G1 < G2 then
G1 := G1 + $11;
if G1 > G2 then
G1 := G2;
if B1 < B2 then
B1 := B1 + $11;
if B1 > B2 then
B1 := B2;
CstmLabl.Labl.Font.Color:= R1 * $10000 + G1 * $100 + B1;
if CstmLabl.Labl.Font.Color + $111111 >= TargetFontColor then
CstmLabl.Labl.Font.Color := TargetFontColor;
end;
if CstmImg = True then
begin
if CstmLabl.Labl.Font.Size < TargetFontSize then
CstmLabl.Labl.Font.Size:=CstmLabl.Labl.Font.Size + 1;
if CstmLabl.Labl.Font.Size > TargetFontSize then
CstmLabl.Labl.Font.Size:=CstmLabl.Labl.Font.Size - 1;
end;
if StandardBtn.Font.Size < TargetFontSize then
StandardBtn.Font.Size:=StandardBtn.Font.Size + 1;
if StandardBtn.Font.Size > TargetFontSize then
StandardBtn.Font.Size:=StandardBtn.Font.Size - 1;
end;
CreateShadow(Button.CstmLabl,False);
end;

procedure ButtonAnimator(Button:TBtn);
begin
with Button do begin
if StandardBtn.Enabled then
begin
if Normal then begin
FontEffect(Button,Button.FontColor, Button.FontSize);
if CstmImg = True then
begin
if ImgGetTransparent(Btn) < 255 then
ImgSetTransparent(Btn,ImgGetTransparent(Btn) + (30));
if (ImgGetTransparent(BtnSelected) > 0) and (ImgGetTransparent(Btn) = 255) then
ImgSetTransparent(BtnSelected,ImgGetTransparent(BtnSelected) - (30));
if (ImgGetTransparent(BtnClicked) > 0) and (ImgGetTransparent(Btn) = 255)then
ImgSetTransparent(BtnClicked,ImgGetTransparent(BtnClicked) - (30));
if (ImgGetTransparent(BtnDisabled) > 0) and (ImgGetTransparent(Btn) = 255) then
ImgSetTransparent(BtnDisabled,ImgGetTransparent(BtnDisabled) - (30));
end;
end;
if Selected then begin
FontEffect(Button,Button.FontColorSelected, Button.FontSizeSelected);
if CstmImg = True then
begin
if (ImgGetTransparent(Btn) > 0) and (ImgGetTransparent(BtnSelected) = 255) then
ImgSetTransparent(Btn,ImgGetTransparent(Btn) - (30));
if ImgGetTransparent(BtnSelected) < 255 then
ImgSetTransparent(BtnSelected,ImgGetTransparent(BtnSelected) + (30));
if (ImgGetTransparent(BtnClicked) > 0) and (ImgGetTransparent(BtnSelected) = 255) then
ImgSetTransparent(BtnClicked,ImgGetTransparent(BtnClicked) - (30));
if (ImgGetTransparent(BtnDisabled) > 0) and (ImgGetTransparent(BtnSelected) = 255) then
ImgSetTransparent(BtnDisabled,ImgGetTransparent(BtnDisabled) - (30));
end;
end;
if Clicked then begin
FontEffect(Button,Button.FontColorClicked, Button.FontSizeClicked);
if CstmImg = True then
begin
if (ImgGetTransparent(Btn) > 0) and (ImgGetTransparent(BtnClicked) = 255) then
ImgSetTransparent(Btn,ImgGetTransparent(Btn) - (30));
if (ImgGetTransparent(BtnSelected) > 0) and (ImgGetTransparent(BtnClicked) = 255) then
ImgSetTransparent(BtnSelected,ImgGetTransparent(BtnSelected) - (30));
if ImgGetTransparent(BtnClicked) < 255 then
ImgSetTransparent(BtnClicked,ImgGetTransparent(BtnClicked) + (30));
if (ImgGetTransparent(BtnDisabled) > 0) and (ImgGetTransparent(BtnClicked) = 255) then
ImgSetTransparent(BtnDisabled,ImgGetTransparent(BtnDisabled) - (30));
end;
end;
end else begin
if CstmImg = True then
begin
FontEffect(Button,Button.FontColorDisabled, Button.FontSizeDisabled);
if CstmImg = True then
begin
if (ImgGetTransparent(Btn) > 0) and (ImgGetTransparent(BtnDisabled) = 255) then
ImgSetTransparent(Btn,ImgGetTransparent(Btn) - (30));
if (ImgGetTransparent(BtnSelected) > 0) and (ImgGetTransparent(BtnDisabled) = 255) then
ImgSetTransparent(BtnSelected,ImgGetTransparent(BtnSelected) - (30));
if (ImgGetTransparent(BtnClicked) > 0) and (ImgGetTransparent(BtnDisabled) = 255) then
ImgSetTransparent(BtnClicked,ImgGetTransparent(BtnClicked) - (30));
if ImgGetTransparent(BtnDisabled) < 255 then
ImgSetTransparent(BtnDisabled,ImgGetTransparent(BtnDisabled) + (30));
end;
end;
if StandardBtn.Visible = False then
begin
if CstmImg = True then
begin
ImgSetTransparent(Btn,0);
ImgSetTransparent(BtnSelected,0);
ImgSetTransparent(BtnClicked,0);
ImgSetTransparent(BtnDisabled,0);
end;
end;
end;
end;
end;

procedure ButtonTimer(Sender: TObject);
begin
if SetupRunning2 then
begin
if WizardForm.Showing then
begin
if BackBtn.StandardBtn.Visible then
ButtonAnimator(BackBtn);
if NextBtn.StandardBtn.Visible then
ButtonAnimator(NextBtn);
if CancelBtn.StandardBtn.Visible then
ButtonAnimator(CancelBtn);
if MusicBtn.StandardBtn.Visible then
ButtonAnimator(MusicBtn);
if DirBrowseBtn.StandardBtn.Visible then
ButtonAnimator(DirBrowseBtn);
if GroupBrowseBtn.StandardBtn.Visible then
ButtonAnimator(GroupBrowseBtn);
if CancelBtn2.StandardBtn.Visible then
ButtonAnimator(CancelBtn2);
if MusicBtn2.StandardBtn.Visible then
ButtonAnimator(MusicBtn2);
if MusicBtn3.StandardBtn.Visible then
ButtonAnimator(MusicBtn3);
if MinimizeBtn.StandardBtn.Visible then
ButtonAnimator(MinimizeBtn);
if CloseBtn.StandardBtn.Visible then
ButtonAnimator(CloseBtn);
if PreviewAvai then
begin
if Preview1Btn.StandardBtn.Visible then
ButtonAnimator(Preview1Btn);
if Preview2Btn.StandardBtn.Visible then
ButtonAnimator(Preview2Btn);
if Preview3Btn.StandardBtn.Visible then
ButtonAnimator(Preview3Btn);
end;
ButtonApplyChanges(WizardForm);
end;
if CancelForm.Showing then
begin
if CancelYesBtn.StandardBtn.Visible then
ButtonAnimator(CancelYesBtn);
if CancelNoBtn.StandardBtn.Visible then
ButtonAnimator(CancelNoBtn);
ButtonApplyChanges(CancelForm);
end;
if DiskPromptForm.Showing then
begin
if DiskPromptOkBtn.StandardBtn.Visible then
ButtonAnimator(DiskPromptOkBtn);
if DiskPromptCancelBtn.StandardBtn.Visible then
ButtonAnimator(DiskPromptCancelBtn);
ButtonApplyChanges(DiskPromptForm);
end;
if DirBrowseForm.Showing then
begin
if DirBrowseOkBtn.StandardBtn.Visible then
ButtonAnimator(DirBrowseOkBtn);
if DirBrowseCancelBtn.StandardBtn.Visible then
ButtonAnimator(DirBrowseCancelBtn);
ButtonApplyChanges(DirBrowseForm);
end;
if CreditsForm.Showing then
begin
if CreditsOkBtn.StandardBtn.Visible then
ButtonAnimator(CreditsOkBtn);
ButtonApplyChanges(CreditsForm);
end;
end;
end;

procedure AButtonTimer(Sender: TObject);
begin
if SetupRunning2 then
begin
if AutorunForm.Showing then
begin
if LaunchBtn.StandardBtn.Visible then
ButtonAnimator(LaunchBtn);
if Launch2Btn.StandardBtn.Visible then
ButtonAnimator(Launch2Btn);
if Launch3Btn.StandardBtn.Visible then
ButtonAnimator(Launch3Btn);
if Launch4Btn.StandardBtn.Visible then
ButtonAnimator(Launch4Btn);
if Launch5Btn.StandardBtn.Visible then
ButtonAnimator(Launch5Btn);
if Launch6Btn.StandardBtn.Visible then
ButtonAnimator(Launch6Btn);
if Launch7Btn.StandardBtn.Visible then
ButtonAnimator(Launch7Btn);
if Launch8Btn.StandardBtn.Visible then
ButtonAnimator(Launch8Btn);
if Launch9Btn.StandardBtn.Visible then
ButtonAnimator(Launch9Btn);
if Launch10Btn.StandardBtn.Visible then
ButtonAnimator(Launch10Btn);
if InstallBtn.StandardBtn.Visible then
ButtonAnimator(InstallBtn);
if ExitBtn.StandardBtn.Visible then
ButtonAnimator(ExitBtn);
if AMusicBtn.StandardBtn.Visible then
ButtonAnimator(AMusicBtn);
if AMusicBtn2.StandardBtn.Visible then
ButtonAnimator(AMusicBtn2);
if OpenDiskBtn.StandardBtn.Visible then
ButtonAnimator(OpenDiskBtn);
if ReadmeBtn.StandardBtn.Visible then
ButtonAnimator(ReadmeBtn);
if ManualBtn.StandardBtn.Visible then
ButtonAnimator(ManualBtn);
if WebBtn.StandardBtn.Visible then
ButtonAnimator(WebBtn);
if AMinimizeBtn.StandardBtn.Visible then
ButtonAnimator(AMinimizeBtn);
if ACloseBtn.StandardBtn.Visible then
ButtonAnimator(ACloseBtn);
ButtonApplyChanges(AutorunForm);
end;
end;
end;

var
Label3, Label4, Label5: TLabl;
Edit1: TEdit;
FolderTreeView1: TFolderTreeView;
StartMenuTreeView1: TStartMenuFolderTreeView;

procedure DirBrowse1OkBtnClick(Sender: TObject);
begin
ButtonModal(DirBrowseOkBtn);
WizardForm.DirEdit.Text:=Edit1.Text;
end;

procedure DirBrowse2OkBtnClick(Sender: TObject);
begin
ButtonModal(DirBrowseOkBtn);
WizardForm.GroupEdit.Text:=Edit1.Text;
end;

procedure DirBrowseCancelBtnClick(Sender: TObject);
begin
ButtonModal(DirBrowseCancelBtn);
end;

procedure DirFolderChange(Sneder: TObject);
begin
Edit1.Text:=AddBackSlash(FolderTreeView1.Directory) + ApplicationName('');
end;

procedure GroupFolderChange(Sneder: TObject);
begin
Edit1.Text:=AddBackSlash(StartMenuTreeView1.Directory) + ApplicationName('');
end;

procedure CreateDirBrowse;
begin
DirBrowseForm:= CreateCustomForm();
with DirBrowseForm do begin
ClientWidth := ScaleX(550);
ClientHeight := ScaleY(300);
Center;
Color:=$252525;
FormStyle:= fsStayOnTop;
BringToFront;
Caption:=WizardForm.Caption;
end;

Edit1:= TEdit.Create(DirBrowseForm);
with Edit1 do begin
SetBounds(50, 90, 450, 21);
Parent := DirBrowseForm;
end;

FolderTreeView1 := TFolderTreeView.Create(DirBrowseForm);
with FolderTreeView1 do
begin
SetBounds(50, 115, 450, 90);
Parent := DirBrowseForm;
OnChange:= @DirFolderChange;
end;

StartMenuTreeView1 := TStartMenuFolderTreeView.Create(DirBrowseForm);
with StartMenuTreeView1 do
begin
SetBounds(50, 115, 450, 90);
Parent := DirBrowseForm;
OnChange:= @GroupFolderChange;
SetPaths(ExpandConstant('{userprograms}'),ExpandConstant('{commonprograms}'),ExpandConstant('{userstartmenu}'),ExpandConstant('{commonstartmenu}'))
end;

Label3.Labl:= TLabel.Create(DirBrowseForm);
with Label3.Labl do begin
AutoSize:=False
SetBounds(50, 30, 450, 40);
WordWrap:=True
Transparent:=True
Alignment:=TextOneCenter;
Font.Name:= TextOneFontName;
Font.Size:= TextOneFontSize;
Font.Color:=TextOneFontColor;
Parent:=DirBrowseForm
end;

Label4.Labl:= TLabel.Create(DirBrowseForm);
with Label4.Labl do begin
AutoSize:=False
SetBounds(50, 55, 450, 120);
WordWrap:=True
Transparent:=True
Alignment:=TextTwoCenter;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Parent:=DirBrowseForm
end;

Label5.Labl:= TLabel.Create(DirBrowseForm);
with Label5.Labl do begin
AutoSize:=False
SetBounds(50, 210, 450, 120);
WordWrap:=True
Transparent:=True
Alignment:=TextTwoCenter;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Parent:=DirBrowseForm
end;
CreateShadow(Label3,True);
CreateShadow(Label4,True);
CreateShadow(Label5,True);
if DialogWizardImage then
begin
ImgLoad(DirBrowseForm.Handle,ExpandConstant('{tmp}\Dialog.jpg'),ScaleX(0), ScaleY(0),DirBrowseForm.ClientWidth,DirBrowseForm.ClientHeight,True,True);
if DialogWizardBackground then
ImgLoad(DirBrowseForm.Handle,ExpandConstant('{tmp}\DialogTextBackground.png'),ScaleX(25), ScaleY(25),500,215,True,True);
end;
DirBrowseOkBtn:=ButtonCreate(DirBrowseForm,305,250,ScaleX(100),ScaleY(30),ExpandConstant('{tmp}\SmallButton.png'),ExpandConstant('{tmp}\SmallButtonSelected.png'),ExpandConstant('{tmp}\SmallButtonClicked.png'),ExpandConstant('{tmp}\SmallButtonDisabled.png'),mrOk)
ButtonSetText(DirBrowseOkBtn,SetupMessage(msgButtonOk));
ButtonSetFont(DirBrowseOkBtn,SmallButtonFontName,SmallButtonFontSize,SmallButtonFontSizeSelected,SmallButtonFontSizeClicked,SmallButtonFontSizeDisabled);
ButtonSetFontStyle(DirBrowseOkBtn,SmallButtonFontBold,SmallButtonFontItalic,SmallButtonFontUnderline,SmallButtonFontStrikeOut,SmallButtonFontUppercase);
ButtonSetTextAlignment(DirBrowseOkBtn,SmallButtonTextHorzAlign,SmallButtonTextVertAlign,SmallButtonTextOffsetX,SmallButtonTextOffsetY);
ButtonSetFontColor(DirBrowseOkBtn,SmallButtonFontColor,SmallButtonFontColorSelected,SmallButtonFontColorClicked,SmallButtonFontColorDisabled);

DirBrowseCancelBtn:=ButtonCreate(DirBrowseForm,425,250,ScaleX(100),ScaleY(30),ExpandConstant('{tmp}\SmallButton.png'),ExpandConstant('{tmp}\SmallButtonSelected.png'),ExpandConstant('{tmp}\SmallButtonClicked.png'),ExpandConstant('{tmp}\SmallButtonDisabled.png'),mrCancel)
ButtonSetText(DirBrowseCancelBtn,SetupMessage(msgButtonCancel));
ButtonSetFont(DirBrowseCancelBtn,SmallButtonFontName,SmallButtonFontSize,SmallButtonFontSizeSelected,SmallButtonFontSizeClicked,SmallButtonFontSizeDisabled);
ButtonSetFontStyle(DirBrowseCancelBtn,SmallButtonFontBold,SmallButtonFontItalic,SmallButtonFontUnderline,SmallButtonFontStrikeOut,SmallButtonFontUppercase);
ButtonSetTextAlignment(DirBrowseCancelBtn,SmallButtonTextHorzAlign,SmallButtonTextVertAlign,SmallButtonTextOffsetX,SmallButtonTextOffsetY);
ButtonSetFontColor(DirBrowseCancelBtn,SmallButtonFontColor,SmallButtonFontColorSelected,SmallButtonFontColorClicked,SmallButtonFontColorDisabled);
ButtonSetEvent(DirBrowseCancelBtn,@DirBrowseCancelBtnClick);
ButtonApplyChanges(DirBrowseForm);
ImgApplyChanges(DirBrowseForm.Handle);
end;

function ShowDirBrowseBox:Integer;
begin
StartMenuTreeView1.Hide;
FolderTreeView1.Show;
Label5.Labl.Show;
Label3.Labl.Caption:=SetupMessage(msgWizardSelectDir)
Label4.Labl.Caption:=FmtMessage(cm('SelectDirMessage5_2'),[ApplicationName('')]);
if ComponentPageAvai then
Label5.Labl.Caption:=FmtMessage(cm('SelectDirMessage5_1'),[IntToStr((RequiredSize-TotalComponentSizes)+ComponentSizes)])
else
Label5.Labl.Caption:=FmtMessage(cm('SelectDirMessage5_1'),[IntToStr(RequiredSize)]);
Edit1.Text:=WizardForm.DirEdit.Text;
CreateShadow(Label3,False);
CreateShadow(Label4,False);
CreateShadow(Label5,False);
ButtonSetEvent(DirBrowseOkBtn,@DirBrowse1OkBtnClick);
DirBrowseForm.ShowModal;
end;

function ShowGroupBrowseBox:Integer;
begin
StartMenuTreeView1.Show;
FolderTreeView1.Hide;
Label5.Labl.Hide;
Label3.Labl.Caption:=SetupMessage(msgWizardSelectProgramGroup)
Label4.Labl.Caption:=FmtMessage(cm('SelectGroupMessage5_1'),[ApplicationName('')]);
Edit1.Text:=WizardForm.GroupEdit.Text;
CreateShadow(Label3,False);
CreateShadow(Label4,False);
CreateShadow(Label5,False);
ButtonSetEvent(DirBrowseOkBtn,@DirBrowse2OkBtnClick);
Result:=DirBrowseForm.ShowModal;
end;

procedure BackBtnClick(Sender: TObject);
begin
Wizardform.BackButton.OnClick(nil);
end;

procedure NextBtnClick(Sender: TObject);
begin
Wizardform.NextButton.OnClick(nil);
end;

procedure CancelBtnClick(Sender: TObject);
begin
Wizardform.CancelButton.OnClick(nil);
end;

procedure DirBrowseBtnClick(Sender: TObject);
begin
#ifexist "Temp\Resources\Dialog.jpg"
if ShowDirBrowseBox = mrOk then
WizardForm.DirEdit.Text:=Edit1.Text;
#else
Wizardform.DirBrowseButton.OnClick(nil);
#endif
end;

procedure GroupBrowseBtnClick(Sender: TObject);
begin
#ifexist "Temp\Resources\Dialog.jpg"
if ShowGroupBrowseBox = mrOk then
WizardForm.GroupEdit.Text:=Edit1.Text;
#else
Wizardform.GroupBrowseButton.OnClick(nil);
#endif
end;

procedure CloseBtnClick(Sender: TObject);
begin
WizardForm.Close;
end;

procedure MinimizeBtnClick(Sender: TObject);
begin
GetMinimizeAnimation;
SetMinimizeAnimation(true);
SendMessage(WizardForm.Handle,$112,61472,0);
end;

procedure Preview1BtnClick(Sender: TObject);
begin
ImgSetVisibility(Preview1Image,True);
ImgSetVisibility(Preview2Image,False);
ImgSetVisibility(Preview3Image,False);
ButtonSetEnabled(Preview1Btn,False);
ButtonSetEnabled(Preview2Btn,True);
ButtonSetEnabled(Preview3Btn,True);
end;

procedure Preview2BtnClick(Sender: TObject);
begin
ImgSetVisibility(Preview1Image,False);
ImgSetVisibility(Preview2Image,True);
ImgSetVisibility(Preview3Image,False);
ButtonSetEnabled(Preview1Btn,True);
ButtonSetEnabled(Preview2Btn,False);
ButtonSetEnabled(Preview3Btn,True);
end;

procedure Preview3BtnClick(Sender: TObject);
begin
ImgSetVisibility(Preview1Image,False);
ImgSetVisibility(Preview2Image,False);
ImgSetVisibility(Preview3Image,True);
ButtonSetEnabled(Preview1Btn,True);
ButtonSetEnabled(Preview2Btn,True);
ButtonSetEnabled(Preview3Btn,False);
end;

procedure MusicBtnClick(Sender: TObject);
begin
if not WizardForm.CurPageID = wpInstalling then
begin
if MusicPlaying = False then begin
DisplayMode:=MusicMode;
PlayMusic();
ButtonSetText(MusicBtn,ExpandConstant('{cm:OtherMessage4_2}'));
if ShowBGFullScreen2 then
ButtonSetText(MusicBtn2,ExpandConstant('{cm:OtherMessage4_2}'));
MusicPlaying:= True;
end else begin
DisplayMode:=0;
StopMusic();
ButtonSetText(MusicBtn,ExpandConstant('{cm:OtherMessage4_1}'));
if ShowBGFullScreen2 then
ButtonSetText(MusicBtn2,ExpandConstant('{cm:OtherMessage4_1}'));
MusicPlaying:= False;
end;
end else begin
ButtonSetText(MusicBtn,infostate(True))
ButtonSetText(MusicBtn2,infostate(False));
end;
end;

procedure CustomInstallOnClick(Sender: TObject);
begin
CustomInstallClicked := True
FastInstall := 2;
Wizardform.NextButton.OnClick(nil);
end;

procedure UninstallBtnClick(Sender: TObject);
begin
Exec(ExpandConstant('{uninstallexe}'), '/Silent','', sw_Show, ewWaitUntilTerminated, n);
ButtonSetEnabled(CancelBtn,False);
end;

procedure CreateWizardButtons;
begin
WizardForm.BackButton.SetBounds(0,0,0,0);
WizardForm.NextButton.SetBounds(0,0,0,0);
WizardForm.CancelButton.SetBounds(0,0,0,0);
WizardForm.DirBrowseButton.SetBounds(0,0,0,0);
WizardForm.GroupBrowseButton.SetBounds(0,0,0,0);

BackBtn:=ButtonCreate(WizardForm,BackButtonLeft,BackButtonTop,BackButtonWidth,BackButtonHeight,ExpandConstant('{tmp}\BackButton.png'),ExpandConstant('{tmp}\BackButtonSelected.png'),ExpandConstant('{tmp}\BackButtonClicked.png'),ExpandConstant('{tmp}\BackButtonDisabled.png'),mrNone)
ButtonSetText(BackBtn,SetupMessage(msgButtonBack));
ButtonSetEvent(BackBtn,@BackBtnClick);
ButtonSetFont(BackBtn,BackButtonFontName,BackButtonFontSize,BackButtonFontSizeSelected,BackButtonFontSizeClicked,BackButtonFontSizeDisabled);
ButtonSetFontStyle(BackBtn,BackButtonFontBold,BackButtonFontItalic,BackButtonFontUnderline,BackButtonFontStrikeOut,BackButtonFontUppercase);
ButtonSetTextAlignment(BackBtn,BackButtonTextHorzAlign,BackButtonTextVertAlign,BackButtonTextOffsetX,BackButtonTextOffsetY);
ButtonSetFontColor(BackBtn,BackButtonFontColor,BackButtonFontColorSelected,BackButtonFontColorClicked,BackButtonFontColorDisabled);

NextBtn:=ButtonCreate(WizardForm,NextButtonLeft,NextButtonTop,NextButtonWidth,NextButtonHeight,ExpandConstant('{tmp}\NextButton.png'),ExpandConstant('{tmp}\NextButtonSelected.png'),ExpandConstant('{tmp}\NextButtonClicked.png'),ExpandConstant('{tmp}\NextButtonDisabled.png'),mrNone)
ButtonSetText(NextBtn,SetupMessage(msgButtonNext));
ButtonSetEvent(NextBtn,@NextBtnClick);
ButtonSetFont(NextBtn,NextButtonFontName,NextButtonFontSize,NextButtonFontSizeSelected,NextButtonFontSizeClicked,NextButtonFontSizeDisabled);
ButtonSetFontStyle(NextBtn,NextButtonFontBold,NextButtonFontItalic,NextButtonFontUnderline,NextButtonFontStrikeOut,NextButtonFontUppercase);
ButtonSetTextAlignment(NextBtn,NextButtonTextHorzAlign,NextButtonTextVertAlign,NextButtonTextOffsetX,NextButtonTextOffsetY);
ButtonSetFontColor(NextBtn,NextButtonFontColor,NextButtonFontColorSelected,NextButtonFontColorClicked,NextButtonFontColorDisabled);

CancelBtn:=ButtonCreate(WizardForm,CancelButtonLeft,CancelButtonTop,CancelButtonWidth,CancelButtonHeight,ExpandConstant('{tmp}\CancelButton.png'),ExpandConstant('{tmp}\CancelButtonSelected.png'),ExpandConstant('{tmp}\CancelButtonClicked.png'),ExpandConstant('{tmp}\CancelButtonDisabled.png'),mrNone)
ButtonSetText(CancelBtn,SetupMessage(msgButtonCancel));
ButtonSetEvent(CancelBtn,@CancelBtnClick);
ButtonSetFont(CancelBtn,CancelButtonFontName,CancelButtonFontSize,CancelButtonFontSizeSelected,CancelButtonFontSizeClicked,CancelButtonFontSizeDisabled);
ButtonSetFontStyle(CancelBtn,CancelButtonFontBold,CancelButtonFontItalic,CancelButtonFontUnderline,CancelButtonFontStrikeOut,CancelButtonFontUppercase);
ButtonSetTextAlignment(CancelBtn,CancelButtonTextHorzAlign,CancelButtonTextVertAlign,CancelButtonTextOffsetX,CancelButtonTextOffsetY);
ButtonSetFontColor(CancelBtn,CancelButtonFontColor,CancelButtonFontColorSelected,CancelButtonFontColorClicked,CancelButtonFontColorDisabled);

MusicBtn:=ButtonCreate(WizardForm,MusicButtonLeft,MusicButtonTop,MusicButtonWidth,MusicButtonHeight,ExpandConstant('{tmp}\MusicButton.png'),ExpandConstant('{tmp}\MusicButtonSelected.png'),ExpandConstant('{tmp}\MusicButtonClicked.png'),ExpandConstant('{tmp}\MusicButtonDisabled.png'),mrNone)
ButtonSetText(MusicBtn,infostate(False));
ButtonSetEvent(MusicBtn,@MusicBtnClick);
ButtonSetFont(MusicBtn,MusicButtonFontName,MusicButtonFontSize,MusicButtonFontSizeSelected,MusicButtonFontSizeClicked,MusicButtonFontSizeDisabled);
ButtonSetFontStyle(MusicBtn,MusicButtonFontBold,MusicButtonFontItalic,MusicButtonFontUnderline,MusicButtonFontStrikeOut,MusicButtonFontUppercase);
ButtonSetTextAlignment(MusicBtn,MusicButtonTextHorzAlign,MusicButtonTextVertAlign,MusicButtonTextOffsetX,MusicButtonTextOffsetY);
ButtonSetFontColor(MusicBtn,MusicButtonFontColor,MusicButtonFontColorSelected,MusicButtonFontColorClicked,MusicButtonFontColorDisabled);

DirBrowseBtn:=ButtonCreate(WizardForm,TextPositionLeft + TextPositionWidth - 100 - 20,TextPositionTop+TextPositionHeight*69/128,ScaleX(100),ScaleY(30),ExpandConstant('{tmp}\SmallButton.png'),ExpandConstant('{tmp}\SmallButtonSelected.png'),ExpandConstant('{tmp}\SmallButtonClicked.png'),ExpandConstant('{tmp}\SmallButtonDisabled.png'),mrNone)
ButtonSetText(DirBrowseBtn,SetupMessage(msgButtonBrowse));
ButtonSetEvent(DirBrowseBtn,@DirBrowseBtnClick);
ButtonSetFont(DirBrowseBtn,SmallButtonFontName,SmallButtonFontSize,SmallButtonFontSizeSelected,SmallButtonFontSizeClicked,SmallButtonFontSizeDisabled);
ButtonSetFontStyle(DirBrowseBtn,SmallButtonFontBold,SmallButtonFontItalic,SmallButtonFontUnderline,SmallButtonFontStrikeOut,SmallButtonFontUppercase);
ButtonSetTextAlignment(DirBrowseBtn,SmallButtonTextHorzAlign,SmallButtonTextVertAlign,SmallButtonTextOffsetX,SmallButtonTextOffsetY);
ButtonSetFontColor(DirBrowseBtn,SmallButtonFontColor,SmallButtonFontColorSelected,SmallButtonFontColorClicked,SmallButtonFontColorDisabled);

GroupBrowseBtn:=ButtonCreate(WizardForm,TextPositionLeft + TextPositionWidth - 100 - 20,TextPositionTop+TextPositionHeight*69/128,ScaleX(100),ScaleY(30),ExpandConstant('{tmp}\SmallButton.png'),ExpandConstant('{tmp}\SmallButtonSelected.png'),ExpandConstant('{tmp}\SmallButtonClicked.png'),ExpandConstant('{tmp}\SmallButtonDisabled.png'),mrNone)
ButtonSetText(GroupBrowseBtn,SetupMessage(msgButtonBrowse));
ButtonSetEvent(GroupBrowseBtn,@GroupBrowseBtnClick);
ButtonSetFont(GroupBrowseBtn,SmallButtonFontName,SmallButtonFontSize,SmallButtonFontSizeSelected,SmallButtonFontSizeClicked,SmallButtonFontSizeDisabled);
ButtonSetFontStyle(GroupBrowseBtn,SmallButtonFontBold,SmallButtonFontItalic,SmallButtonFontUnderline,SmallButtonFontStrikeOut,SmallButtonFontUppercase);
ButtonSetTextAlignment(GroupBrowseBtn,SmallButtonTextHorzAlign,SmallButtonTextVertAlign,SmallButtonTextOffsetX,SmallButtonTextOffsetY);
ButtonSetFontColor(GroupBrowseBtn,SmallButtonFontColor,SmallButtonFontColorSelected,SmallButtonFontColorClicked,SmallButtonFontColorDisabled);

CancelBtn2:=ButtonCreate(WizardForm,SmallTextPositionLeft+SmallTextPositionWidth-125,SmallTextPositionTop+SmallTextPositionHeight*54/64,ScaleX(100),ScaleY(30),ExpandConstant('{tmp}\SmallButton.png'),ExpandConstant('{tmp}\SmallButtonSelected.png'),ExpandConstant('{tmp}\SmallButtonClicked.png'),ExpandConstant('{tmp}\SmallButtonDisabled.png'),mrNone)
ButtonSetText(CancelBtn2,SetupMessage(msgButtonCancel));
ButtonSetEvent(CancelBtn2,@CancelBtnClick);
ButtonSetFont(CancelBtn2,SmallButtonFontName,SmallButtonFontSize,SmallButtonFontSizeSelected,SmallButtonFontSizeClicked,SmallButtonFontSizeDisabled);
ButtonSetFontStyle(CancelBtn2,SmallButtonFontBold,SmallButtonFontItalic,SmallButtonFontUnderline,SmallButtonFontStrikeOut,SmallButtonFontUppercase);
ButtonSetTextAlignment(CancelBtn2,SmallButtonTextHorzAlign,SmallButtonTextVertAlign,SmallButtonTextOffsetX,SmallButtonTextOffsetY);
ButtonSetFontColor(CancelBtn2,SmallButtonFontColor,SmallButtonFontColorSelected,SmallButtonFontColorClicked,SmallButtonFontColorDisabled);

MusicBtn2:=ButtonCreate(WizardForm,SmallTextPositionLeft+25,SmallTextPositionTop+SmallTextPositionHeight*54/64,ScaleX(100),ScaleY(30),ExpandConstant('{tmp}\SmallButton.png'),ExpandConstant('{tmp}\SmallButtonSelected.png'),ExpandConstant('{tmp}\SmallButtonClicked.png'),ExpandConstant('{tmp}\SmallButtonDisabled.png'),mrNone)
ButtonSetText(MusicBtn2,infostate(False));
ButtonSetEvent(MusicBtn2,@MusicBtnClick);
ButtonSetFont(MusicBtn2,SmallButtonFontName,SmallButtonFontSize,SmallButtonFontSizeSelected,SmallButtonFontSizeClicked,SmallButtonFontSizeDisabled);
ButtonSetFontStyle(MusicBtn2,SmallButtonFontBold,SmallButtonFontItalic,SmallButtonFontUnderline,SmallButtonFontStrikeOut,SmallButtonFontUppercase);
ButtonSetTextAlignment(MusicBtn2,SmallButtonTextHorzAlign,SmallButtonTextVertAlign,SmallButtonTextOffsetX,SmallButtonTextOffsetY);
ButtonSetFontColor(MusicBtn2,SmallButtonFontColor,SmallButtonFontColorSelected,SmallButtonFontColorClicked,SmallButtonFontColorDisabled);

MusicBtn3:=ButtonCreate(WizardForm,MusicButton3Left,MusicButton3Top,MusicButton3Width,MusicButton3Height,ExpandConstant('{tmp}\SmallMusicButton.png'),ExpandConstant('{tmp}\SmallMusicButtonSelected.png'),ExpandConstant('{tmp}\SmallMusicButtonClicked.png'),ExpandConstant('{tmp}\SmallMusicButtonDisabled.png'),mrNone)
ButtonSetVisibility(MusicBtn3,FileExists(ExpandConstant('{tmp}\SmallMusicButton.png')) and WizardImage_PNG)
ButtonSetText(MusicBtn3,'');
ButtonSetEvent(MusicBtn3,@MusicBtnClick);

MinimizeBtn:=ButtonCreate(WizardForm,MinimizeButtonLeft,MinimizeButtonTop,MinimizeButtonWidth,MinimizeButtonHeight,ExpandConstant('{tmp}\MinimizeButton.png'),ExpandConstant('{tmp}\MinimizeButtonSelected.png'),ExpandConstant('{tmp}\MinimizeButtonClicked.png'),ExpandConstant('{tmp}\MinimizeButtonDisabled.png'),mrNone)
ButtonSetVisibility(MinimizeBtn,FileExists(ExpandConstant('{tmp}\MinimizeButton.png')) and WizardImage_PNG)
MinimizeBtn.StandardBtn.Caption:='-';
ButtonSetEvent(MinimizeBtn,@MinimizeBtnClick);

CloseBtn:=ButtonCreate(WizardForm,CloseButtonLeft,CloseButtonTop,CloseButtonWidth,CloseButtonHeight,ExpandConstant('{tmp}\CloseButton.png'),ExpandConstant('{tmp}\CloseButtonSelected.png'),ExpandConstant('{tmp}\CloseButtonClicked.png'),ExpandConstant('{tmp}\CloseButtonDisabled.png'),mrNone)
ButtonSetVisibility(CloseBtn,FileExists(ExpandConstant('{tmp}\CloseButton.png')) and WizardImage_PNG)
CloseBtn.StandardBtn.Caption:='X';
ButtonSetEvent(CloseBtn,@CloseBtnClick);

pv:=(TextPositionWidth)/2;

if PreviewAvai then
begin
Preview1Btn:=ButtonCreate(WizardForm,TextPositionLeft + 40,TextPositionTop+TextPositionHeight*56/64,ScaleX(100),ScaleY(30),ExpandConstant('{tmp}\SmallButton.png'),ExpandConstant('{tmp}\SmallButtonSelected.png'),ExpandConstant('{tmp}\SmallButtonClicked.png'),ExpandConstant('{tmp}\SmallButtonDisabled.png'),mrNone)
ButtonSetText(Preview1Btn,FmtMessage(cm('PreviewMessage2_1'), [ApplicationName('')]) + ' 1');
ButtonSetEvent(Preview1Btn,@Preview1BtnClick);
ButtonSetFont(Preview1Btn,SmallButtonFontName,SmallButtonFontSize,SmallButtonFontSizeSelected,SmallButtonFontSizeClicked,SmallButtonFontSizeDisabled);
ButtonSetFontStyle(Preview1Btn,SmallButtonFontBold,SmallButtonFontItalic,SmallButtonFontUnderline,SmallButtonFontStrikeOut,SmallButtonFontUppercase);
ButtonSetTextAlignment(Preview1Btn,SmallButtonTextHorzAlign,SmallButtonTextVertAlign,SmallButtonTextOffsetX,SmallButtonTextOffsetY);
ButtonSetFontColor(Preview1Btn,SmallButtonFontColor,SmallButtonFontColorSelected,SmallButtonFontColorClicked,SmallButtonFontColorDisabled);

Preview2Btn:=ButtonCreate(WizardForm,TextPositionLeft + pv - 50,TextPositionTop+TextPositionHeight*56/64,ScaleX(100),ScaleY(30),ExpandConstant('{tmp}\SmallButton.png'),ExpandConstant('{tmp}\SmallButtonSelected.png'),ExpandConstant('{tmp}\SmallButtonClicked.png'),ExpandConstant('{tmp}\SmallButtonDisabled.png'),mrNone)
ButtonSetText(Preview2Btn,FmtMessage(cm('PreviewMessage2_1'), [ApplicationName('')]) + ' 2');
ButtonSetEvent(Preview2Btn,@Preview2BtnClick);
ButtonSetFont(Preview2Btn,SmallButtonFontName,SmallButtonFontSize,SmallButtonFontSizeSelected,SmallButtonFontSizeClicked,SmallButtonFontSizeDisabled);
ButtonSetFontStyle(Preview2Btn,SmallButtonFontBold,SmallButtonFontItalic,SmallButtonFontUnderline,SmallButtonFontStrikeOut,SmallButtonFontUppercase);
ButtonSetTextAlignment(Preview2Btn,SmallButtonTextHorzAlign,SmallButtonTextVertAlign,SmallButtonTextOffsetX,SmallButtonTextOffsetY);
ButtonSetFontColor(Preview2Btn,SmallButtonFontColor,SmallButtonFontColorSelected,SmallButtonFontColorClicked,SmallButtonFontColorDisabled);

Preview3Btn:=ButtonCreate(WizardForm,TextPositionLeft + TextPositionWidth - 40 - 100,TextPositionTop+TextPositionHeight*56/64,ScaleX(100),ScaleY(30),ExpandConstant('{tmp}\SmallButton.png'),ExpandConstant('{tmp}\SmallButtonSelected.png'),ExpandConstant('{tmp}\SmallButtonClicked.png'),ExpandConstant('{tmp}\SmallButtonDisabled.png'),mrNone)
ButtonSetText(Preview3Btn,FmtMessage(cm('PreviewMessage2_1'), [ApplicationName('')]) + ' 3');
ButtonSetEvent(Preview3Btn,@Preview3BtnClick);
ButtonSetFont(Preview3Btn,SmallButtonFontName,SmallButtonFontSize,SmallButtonFontSizeSelected,SmallButtonFontSizeClicked,SmallButtonFontSizeDisabled);
ButtonSetFontStyle(Preview3Btn,SmallButtonFontBold,SmallButtonFontItalic,SmallButtonFontUnderline,SmallButtonFontStrikeOut,SmallButtonFontUppercase);
ButtonSetTextAlignment(Preview3Btn,SmallButtonTextHorzAlign,SmallButtonTextVertAlign,SmallButtonTextOffsetX,SmallButtonTextOffsetY);
ButtonSetFontColor(Preview3Btn,SmallButtonFontColor,SmallButtonFontColorSelected,SmallButtonFontColorClicked,SmallButtonFontColorDisabled);
end;
ButtonApplyChanges(WizardForm);
end;

procedure ButtonUpdater(CurPageID: Integer);
begin
ButtonSetVisibility(DirBrowseBtn,False);
ButtonSetVisibility(GroupBrowseBtn,False);
ButtonSetVisibility(MusicBtn2,False);
ButtonSetVisibility(CancelBtn2,False);
if PreviewAvai then
begin
ButtonSetVisibility(Preview1Btn,False);
ButtonSetVisibility(Preview2Btn,False);
ButtonSetVisibility(Preview3Btn,False);
end;
ButtonSetVisibility(BackBtn,WizardForm.BackButton.Visible);
ButtonSetVisibility(NextBtn,WizardForm.NextButton.Visible);
ButtonSetEnabled(NextBtn,True);
ButtonSetEnabled(GroupBrowseBtn,True);
ButtonSetText(BackBtn,WizardForm.BackButton.Caption);
ButtonSetText(NextBtn,WizardForm.NextButton.Caption);
ButtonSetEvent(BackBtn, @BackBtnClick);
if MusicEnabled = False then
begin
ButtonSetVisibility(MusicBtn,False);
ButtonSetVisibility(MusicBtn2,False);
ButtonSetVisibility(MusicBtn3,False);
end;
case CurPageID of
wpWelcome:
begin
FastInstall := 0;
ButtonSetText(BackBtn,ExpandConstant('{cm:OtherMessage5_4}'));
ButtonSetText(NextBtn,ExpandConstant('{cm:OtherMessage5_3}'));
ButtonSetVisibility(BackBtn,True);
ButtonSetEvent(BackBtn,@CustomInstallOnClick);
end;

SerialPage.ID:
begin
if (FastInstall = 1) and (PreviewAvai = False) then
begin
ButtonSetText(NextBtn,SetupMessage(msgButtonInstall));
ButtonSetFontStyle(NextBtn,NextButtonFontBold,NextButtonFontItalic,NextButtonFontUnderline,NextButtonFontStrikeOut,NextButtonFontUppercase);
end else begin
ButtonSetText(NextBtn,SetupMessage(msgButtonNext));
ButtonSetFontStyle(NextBtn,NextButtonFontBold,NextButtonFontItalic,NextButtonFontUnderline,NextButtonFontStrikeOut,NextButtonFontUppercase);
end;
end;

wpLicense:
begin
ButtonSetEnabled(NextBtn,BtnGetChecked(LicenseCheck1_1));
end;

wpSelectDir:
begin
ButtonSetVisibility(DirBrowseBtn,True);
end;

wpSelectProgramGroup:
begin
ButtonSetEnabled(GroupBrowseBtn,not BtnGetChecked(SelectGroupCheck1_1));
ButtonSetVisibility(GroupBrowseBtn,True);
end;

PreviewPage.ID:
begin
if PreviewAvai then
begin
ButtonSetVisibility(Preview1Btn,True);
ButtonSetVisibility(Preview2Btn,True);
ButtonSetVisibility(Preview3Btn,True);
ButtonSetEnabled(Preview1Btn,False);
ButtonSetEnabled(Preview2Btn,True);
ButtonSetEnabled(Preview3Btn,True);
end;
if FastInstall = 1 then
begin
ButtonSetText(NextBtn,SetupMessage(msgButtonInstall));
ButtonSetFontStyle(NextBtn,NextButtonFontBold,NextButtonFontItalic,NextButtonFontUnderline,NextButtonFontStrikeOut,NextButtonFontUppercase);
end else begin
ButtonSetText(NextBtn,SetupMessage(msgButtonNext));
ButtonSetFontStyle(NextBtn,NextButtonFontBold,NextButtonFontItalic,NextButtonFontUnderline,NextButtonFontStrikeOut,NextButtonFontUppercase);
end;
end;

DownloadPage.ID:
begin
ButtonSetEnabled(BackBtn,False);
ButtonSetEnabled(NextBtn,False);
ButtonSetVisibility(BackBtn,False);
ButtonSetVisibility(NextBtn,False);
end;

wpInstalling:
begin
if ShowBGFullScreen2 then
begin
if MusicEnabled or VideoEnabled then
ButtonSetVisibility(MusicBtn2,True);
ButtonSetVisibility(CancelBtn2,True);
if MusicEnabled or VideoEnabled then
begin
ButtonSetVisibility(MusicBtn,False);
ButtonSetVisibility(MusicBtn3,False);
end;
ButtonSetVisibility(CancelBtn,False);
ButtonSetPosition(MinimizeBtn,SmallMinimizeButtonLeft,SmallMinimizeButtonTop,SmallMinimizeButtonWidth,SmallMinimizeButtonHeight);
ButtonSetPosition(CloseBtn,SmallCloseButtonLeft,SmallCloseButtonTop,SmallCloseButtonWidth,SmallCloseButtonHeight);
end;
end;

wpInfoAfter:
begin
if ShowBGFullScreen2 then
begin
if MusicEnabled = True then
ButtonSetVisibility(MusicBtn2,False);
ButtonSetVisibility(CancelBtn2,False);
if MusicEnabled = True then
begin
ButtonSetVisibility(MusicBtn,True);
ButtonSetVisibility(MusicBtn3,True);
end;
ButtonSetPosition(MinimizeBtn,MinimizeButtonLeft,MinimizeButtonTop,MinimizeButtonWidth,MinimizeButtonHeight);
ButtonSetPosition(CloseBtn,CloseButtonLeft,CloseButtonTop,CloseButtonWidth,CloseButtonHeight);
end;
ButtonSetVisibility(CancelBtn,False);
end;

wpFinished:
begin
if ShowBGFullScreen2 then
begin
if MusicEnabled = True then
ButtonSetVisibility(MusicBtn2,False);
ButtonSetVisibility(CancelBtn2,False);
if MusicEnabled = True then
begin
ButtonSetVisibility(MusicBtn,True);
ButtonSetVisibility(MusicBtn3,True);
end;
ButtonSetPosition(MinimizeBtn,MinimizeButtonLeft,MinimizeButtonTop,MinimizeButtonWidth,MinimizeButtonHeight);
ButtonSetPosition(CloseBtn,CloseButtonLeft,CloseButtonTop,CloseButtonWidth,CloseButtonHeight);
end;
if not ISDoneError then
begin
ButtonSetText(CancelBtn,SetupMessage(msgUninstallAppTitle));
ButtonSetVisibility(CancelBtn,True);
ButtonSetEvent(CancelBtn,@UninstallBtnClick);
end else
ButtonSetVisibility(CancelBtn,False);
end;
end;
ButtonApplyChanges(WizardForm);
end;

procedure LicenseCheckButtonOnClick(hBtn:HWND);
begin
ButtonSoundClicked2;
Wizardform.LicenseAcceptedRadio.Checked := BtnGetChecked(LicenseCheck1_1);
Wizardform.NextButton.Enabled := BtnGetChecked(LicenseCheck1_1);
ButtonSetEnabled(NextBtn,BtnGetChecked(LicenseCheck1_1));
end;

procedure SelectGroupIconsCheckOnClick(hBtn:HWND);
begin
ButtonSoundClicked2;
SelectGroupChecked1 := BtnGetChecked(SelectGroupCheck1_1);
Wizardform.GroupBrowseButton.Enabled := not BtnGetChecked(SelectGroupCheck1_1);
ButtonSetEnabled(GroupBrowseBtn,not BtnGetChecked(SelectGroupCheck1_1));
SelectGroupLabel3_1.Labl.Enabled:=not BtnGetChecked(SelectGroupCheck1_1);
WizardForm.GroupEdit.Enabled:=not BtnGetChecked(SelectGroupCheck1_1);
CreateShadow(SelectGroupLabel3_1,False);
end;

function NoIcons: Boolean;
begin
if not BtnGetChecked(SelectGroupCheck1_1) then
begin
Result:= True;
end else begin
Result:= False;
end;
end;

function GroupIconsLauncherExecCheck: Boolean;
begin
#define GroupIconsLauncherExecCheck ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher1Startmenu", "1")
if NoIcons then
begin
if FileExists(ConstConv(ExpandConstant('{code:ApplicationExecutable}'))) then
Result := {#GroupIconsLauncherExecCheck} = 1
else
Result := False;
end;
end;

function GroupIconsLauncherExecCheck2: Boolean;
begin
#define GroupIconsLauncherExecCheck2 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher2Startmenu", "1")
if NoIcons then
begin
if FileExists(ConstConv(ExpandConstant('{code:ApplicationExecutable2}'))) then
Result := {#GroupIconsLauncherExecCheck2} = 1
else
Result := False;
end;
end;

function GroupIconsLauncherExecCheck3: Boolean;
begin
#define GroupIconsLauncherExecCheck3 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher3Startmenu", "1")
if NoIcons then
begin
if FileExists(ConstConv(ExpandConstant('{code:ApplicationExecutable3}'))) then
Result := {#GroupIconsLauncherExecCheck3} = 1
else
Result := False;
end;
end;

function GroupIconsLauncherExecCheck4: Boolean;
begin
#define GroupIconsLauncherExecCheck4 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher4Startmenu", "1")
if NoIcons then
begin
if FileExists(ConstConv(ExpandConstant('{code:ApplicationExecutable4}'))) then
Result := {#GroupIconsLauncherExecCheck4} = 1
else
Result := False;
end;
end;

function GroupIconsLauncherExecCheck5: Boolean;
begin
#define GroupIconsLauncherExecCheck5 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher5Startmenu", "1")
if NoIcons then
begin
if FileExists(ConstConv(ExpandConstant('{code:ApplicationExecutable5}'))) then
Result := {#GroupIconsLauncherExecCheck5} = 1
else
Result := False;
end;
end;

function GroupIconsLauncherExecCheck6: Boolean;
begin
#define GroupIconsLauncherExecCheck6 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher6Startmenu", "1")
if NoIcons then
begin
if FileExists(ConstConv(ExpandConstant('{code:ApplicationExecutable6}'))) then
Result := {#GroupIconsLauncherExecCheck6} = 1
else
Result := False;
end;
end;

function GroupIconsLauncherExecCheck7: Boolean;
begin
#define GroupIconsLauncherExecCheck7 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher7Startmenu", "1")
if NoIcons then
begin
if FileExists(ConstConv(ExpandConstant('{code:ApplicationExecutable7}'))) then
Result := {#GroupIconsLauncherExecCheck7} = 1
else
Result := False;
end;
end;

function GroupIconsLauncherExecCheck8: Boolean;
begin
#define GroupIconsLauncherExecCheck8 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher8Startmenu", "1")
if NoIcons then
begin
if FileExists(ConstConv(ExpandConstant('{code:ApplicationExecutable8}'))) then
Result := {#GroupIconsLauncherExecCheck8} = 1
else
Result := False;
end;
end;

function GroupIconsLauncherExecCheck9: Boolean;
begin
#define GroupIconsLauncherExecCheck9 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher9Startmenu", "1")
if NoIcons then
begin
if FileExists(ConstConv(ExpandConstant('{code:ApplicationExecutable9}'))) then
Result := {#GroupIconsLauncherExecCheck9} = 1
else
Result := False;
end;
end;

function GroupIconsLauncherExecCheck10: Boolean;
begin
#define GroupIconsLauncherExecCheck10 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher10Startmenu", "1")
if NoIcons then
begin
if FileExists(ConstConv(ExpandConstant('{code:ApplicationExecutable10}'))) then
Result := {#GroupIconsLauncherExecCheck10} = 1
else
Result := False;
end;
end;

procedure DesktopIconsCheckOnClick(hBtn:HWND);
begin
ButtonSoundClicked2;
SelectGroupChecked2 := BtnGetChecked(SelectGroupCheck2_1);
end;

function Desktop: Boolean;
begin
if BtnGetChecked(SelectGroupCheck2_1) then
begin
Result:= True;
end else begin
Result:= False;
end;
end;

function DesktopIconsLauncherExecCheck: Boolean;
begin
#define DesktopIconsLauncherExecCheck ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher1Desktop", "1")
if Desktop then
begin
if FileExists(ConstConv(ExpandConstant('{code:ApplicationExecutable}'))) then
Result := {#DesktopIconsLauncherExecCheck} = 1
else
Result := False;
end;
end;

function DesktopIconsLauncherExecCheck2: Boolean;
begin
#define DesktopIconsLauncherExecCheck2 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher2Desktop", "1")
if Desktop then
begin
if FileExists(ConstConv(ExpandConstant('{code:ApplicationExecutable2}'))) then
Result := {#DesktopIconsLauncherExecCheck2} = 1
else
Result := False;
end;
end;

function DesktopIconsLauncherExecCheck3: Boolean;
begin
#define DesktopIconsLauncherExecCheck3 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher3Desktop", "1")
if Desktop then
begin
if FileExists(ConstConv(ExpandConstant('{code:ApplicationExecutable3}'))) then
Result := {#DesktopIconsLauncherExecCheck3} = 1
else
Result := False;
end;
end;

function DesktopIconsLauncherExecCheck4: Boolean;
begin
#define DesktopIconsLauncherExecCheck4 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher4Desktop", "1")
if Desktop then
begin
if FileExists(ConstConv(ExpandConstant('{code:ApplicationExecutable4}'))) then
Result := {#DesktopIconsLauncherExecCheck4} = 1
else
Result := False;
end;
end;

function DesktopIconsLauncherExecCheck5: Boolean;
begin
#define DesktopIconsLauncherExecCheck5 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher5Desktop", "1")
if Desktop then
begin
if FileExists(ConstConv(ExpandConstant('{code:ApplicationExecutable5}'))) then
Result := {#DesktopIconsLauncherExecCheck5} = 1
else
Result := False;
end;
end;

function DesktopIconsLauncherExecCheck6: Boolean;
begin
#define DesktopIconsLauncherExecCheck6 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher6Desktop", "1")
if Desktop then
begin
if FileExists(ConstConv(ExpandConstant('{code:ApplicationExecutable6}'))) then
Result := {#DesktopIconsLauncherExecCheck6} = 1
else
Result := False;
end;
end;

function DesktopIconsLauncherExecCheck7: Boolean;
begin
#define DesktopIconsLauncherExecCheck7 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher7Desktop", "1")
if Desktop then
begin
if FileExists(ConstConv(ExpandConstant('{code:ApplicationExecutable7}'))) then
Result := {#DesktopIconsLauncherExecCheck7} = 1
else
Result := False;
end;
end;

function DesktopIconsLauncherExecCheck8: Boolean;
begin
#define DesktopIconsLauncherExecCheck8 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher8Desktop", "1")
if Desktop then
begin
if FileExists(ConstConv(ExpandConstant('{code:ApplicationExecutable8}'))) then
Result := {#DesktopIconsLauncherExecCheck8} = 1
else
Result := False;
end;
end;

function DesktopIconsLauncherExecCheck9: Boolean;
begin
#define DesktopIconsLauncherExecCheck9 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher9Desktop", "1")
if Desktop then
begin
if FileExists(ConstConv(ExpandConstant('{code:ApplicationExecutable9}'))) then
Result := {#DesktopIconsLauncherExecCheck9} = 1
else
Result := False;
end;
end;

function DesktopIconsLauncherExecCheck10: Boolean;
begin
#define DesktopIconsLauncherExecCheck10 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher10Desktop", "1")
if Desktop then
begin
if FileExists(ConstConv(ExpandConstant('{code:ApplicationExecutable10}'))) then
Result := {#DesktopIconsLauncherExecCheck10} = 1
else
Result := False;
end;
end;

procedure IdlePriorityCheckButtonOnClick(hBtn:HWND);
begin
ButtonSoundClicked2;
BtnSetChecked(SelectPriorityCheck1_1,True);
BtnSetChecked(SelectPriorityCheck2_1,False);
BtnSetChecked(SelectPriorityCheck3_1,False);
BtnSetChecked(SelectPriorityCheck4_1,False);
BtnSetChecked(SelectPriorityCheck5_1,False);
BtnSetChecked(SelectPriorityCheck6_1,False);
SetPriorityClass(GetCurrentProcess, IDLE_PRIORITY_CLASS);
PerformanceChanger:=64;
PerformanceChangerPCF:=64;
PerformanceChangerSREP:=128;
end;

procedure BelowNormalPriorityCheckButtonOnClick(hBtn:HWND);
begin
ButtonSoundClicked2;
BtnSetChecked(SelectPriorityCheck1_1,False);
BtnSetChecked(SelectPriorityCheck2_1,True);
BtnSetChecked(SelectPriorityCheck3_1,False);
BtnSetChecked(SelectPriorityCheck4_1,False);
BtnSetChecked(SelectPriorityCheck5_1,False);
BtnSetChecked(SelectPriorityCheck6_1,False);
SetPriorityClass(GetCurrentProcess, BELOW_NORMAL_PRIORITY_CLASS);
PerformanceChanger:=128;
PerformanceChangerPCF:=96;
PerformanceChangerSREP:=256;
end;
procedure NormalPriorityCheckButtonOnClick(hBtn:HWND);
begin
ButtonSoundClicked2;
BtnSetChecked(SelectPriorityCheck1_1,False);
BtnSetChecked(SelectPriorityCheck2_1,False);
BtnSetChecked(SelectPriorityCheck3_1,True);
BtnSetChecked(SelectPriorityCheck4_1,False);
BtnSetChecked(SelectPriorityCheck5_1,False);
BtnSetChecked(SelectPriorityCheck6_1,False);
SetPriorityClass(GetCurrentProcess, NORMAL_PRIORITY_CLASS);	
PerformanceChanger:=256;
PerformanceChangerPCF:=128;
PerformanceChangerSREP:=512;
end;

procedure AboveNormalPriorityCheckButtonOnClick(hBtn:HWND);
begin
ButtonSoundClicked2;
BtnSetChecked(SelectPriorityCheck1_1,False);
BtnSetChecked(SelectPriorityCheck2_1,False);
BtnSetChecked(SelectPriorityCheck3_1,False);
BtnSetChecked(SelectPriorityCheck4_1,True);
BtnSetChecked(SelectPriorityCheck5_1,False);
BtnSetChecked(SelectPriorityCheck6_1,False);
SetPriorityClass(GetCurrentProcess, ABOVE_NORMAL_PRIORITY_CLASS);
PerformanceChanger:=384;
PerformanceChangerPCF:=192;
PerformanceChangerSREP:=640;
end;

procedure HighPriorityCheckButtonOnClick(hBtn:HWND);
begin
ButtonSoundClicked2;
BtnSetChecked(SelectPriorityCheck1_1,False);
BtnSetChecked(SelectPriorityCheck2_1,False);
BtnSetChecked(SelectPriorityCheck3_1,False);
BtnSetChecked(SelectPriorityCheck4_1,False);
BtnSetChecked(SelectPriorityCheck5_1,True);
BtnSetChecked(SelectPriorityCheck6_1,False);
SetPriorityClass(GetCurrentProcess, HIGH_PRIORITY_CLASS);
PerformanceChanger:=512;	
PerformanceChangerPCF:=256;
PerformanceChangerSREP:=768;
end;

procedure RealtimePriorityCheckButtonOnClick(hBtn:HWND);
begin
ButtonSoundClicked2;
BtnSetChecked(SelectPriorityCheck1_1,False);
BtnSetChecked(SelectPriorityCheck2_1,False);
BtnSetChecked(SelectPriorityCheck3_1,False);
BtnSetChecked(SelectPriorityCheck4_1,False);
BtnSetChecked(SelectPriorityCheck5_1,False);
BtnSetChecked(SelectPriorityCheck6_1,True);
SetPriorityClass(GetCurrentProcess, REALTIME_PRIORITY_CLASS);
PerformanceChanger:=1024;
PerformanceChangerPCF:=512;
PerformanceChangerSREP:=1024;
end;

procedure Calculator(Sender: TObject);
begin
with WizardForm.ProgressGauge do begin
if Max <> 0 then
CurPercentage := (Position *1000) / Max;
end;
if TimeIncrease then TimeIncrease := False else TimeIncrease := True;
if TimeIncrease then
Time := Time + 1;
if CurPercentage <> 0 then
TimeLeft := ((Time * 1000) / CurPercentage) - Time;
InstallLabel3_1.Labl.Caption := FmtMessage(cm('InstallMessage3_1'), [ExpandConstant(' ')])+ExpandConstant(' ')+ TimeFormater(Time);
InstallLabel3_2.Labl.Caption := FmtMessage(cm('InstallMessage3_2'), [ExpandConstant(' ')])+ExpandConstant(' ')+ TimeFormater(TimeLeft);
CreateShadow(InstallLabel3_1,False);
CreateShadow(InstallLabel3_2,False);
end;

procedure InitiateSplash;
var
i: integer;
begin
i:=0;
if SplashAvai then 
begin
TrayBalloon;
repeat
i:= i + 1;
ShowSplashScreen(WizardForm.Handle,ExpandConstant('{tmp}\Splash'+IntToStr(i)+'.png'),SplashTimer1,SplashTimer2,SplashTimer3,0,255,False,$FFFFFF,10);
until FileExists(ExpandConstant('{tmp}\Splash'+IntToStr(i)+'.png')) = False;
UninitTrayIconCtrl();
end;
end;

procedure SlideOnTimer(Sender: TObject);
var
thePicture: integer;
delta: double;
begin
if CurrentPicture < SlideImageQuantity then
CurrentPicture:= CurrentPicture + 1
else
CurrentPicture:=1;
ShowImage(piclist.strings[CurrentPicture-1], 1);
end;

procedure SlideStop;
begin
DeinitializeSlideShow;
SlideTimer.Enabled:=False;;
end;

procedure Background;
begin
BGForm1 := TForm.Create(nil);
with BGForm1 do
begin
Color := Clblack
BorderStyle := bsnone;
Left := 0;
Top:= 0;
Enabled := False;
Width := GetSystemMetrics(0);
Height := GetSystemMetrics(1);
Show();
if (CustomCursor1_1 or CustomCursor1_2) then
OldCursor:= SetClassLong(Handle, GCL_HCURSOR, NewCursor);
end;
BGForm2 := TForm.Create(nil);
with BGForm2 do
begin
Color := Clblack
BorderStyle := bsnone;
Left := 0;
Top:= 0;
Enabled := False;
Width := GetSystemMetrics(0);
Height := GetSystemMetrics(1);
Show();
if (CustomCursor1_1 or CustomCursor1_2) then
OldCursor:= SetClassLong(Handle, GCL_HCURSOR, NewCursor);
end;
if SlidesEnabled = True then
begin
PicList:=tstringlist.Create;
for i:=0 to SlideImageQuantity - 1 do
piclist.add(ExpandConstant('{tmp}\'+IntToStr(i+1)+'.jpg'));
InitializeSlideShow(BGForm1.Handle, 0, 0, BGForm1.Width, BGForm1.Height, true, 1);
CurrentPicture:=1;
ShowImage(piclist.strings[CurrentPicture-1], 1);
SlideTimer := TTimer.Create(WizardForm);
with SlideTimer do begin
OnTimer:=@SlideOnTimer;
Interval:=30000;
Enabled:=True;
end;
end;
if VideoEnabled then
begin
MusicPlaying:=True;
VideoPlaying:=False;
DisplayMode:=0;
ButtonSetText(MusicBtn,infostate(True));
ButtonSetText(MusicBtn2,infostate(False));
end;
BGForm1.SendtoBack;
BGForm2.SendtoBack;
if SlidesEnabled = False then
BGForm1.Hide;
if VideoEnabled = False then
BGForm2.Hide;
end;

procedure SetRgn(h:HWND;FileName:string;Left, Top, Width,Height:integer);
var
dc:LongWord;
FRgn:LongWord;
bmp:HBITMAP;
begin
BMP:=LoadImage(0,PAnsiChar(FileName),0,Width,Height,$10);
dc:=GetDC(h);
FRgn:=CreateBitmapRgn(dc,bmp,$FFFFFF,Left, Top);
SetWindowRgn(h,FRgn,True);
ReleaseDC(h,dc);
DeleteObject(BMP);
end;

procedure UpdateFrame(Sender: TObject);
begin
if InstallerFrame.Showing and (WizardForm.Showing = False) then
WizardForm.Show;
end;

function WFProc(h:hWnd;Msg,wParam,lParam:Longint):Longint;
begin
if Msg=$3 then begin
SetWindowPos(InstallerFrame.Handle,0,WizardForm.Left,WizardForm.Top,0,0,$515)
end;
Result:=CallWindowProc(WFOldProc,h,Msg,wParam,lParam);
end;

procedure FixFrame(Sender: TObject);
begin
WizardForm.BringToFront;
end;

procedure ChangeBG(Sender: TObject);
var
i, n, x: Integer;
begin
n:=0;
x:=1;
repeat
n:= n + 1;
if ImgGetVisibility(InstallerImage[n - 1]) then
begin
ImgSetVisibility(InstallerImage[n - 1],False);
x:=n;
end;
until n = WizardImageQuantity;
if x = WizardImageQuantity then
i:=1
else
i:= x + 1;
ImgSetVisibility(InstallerImage[i - 1],True);
if WizardImage_PNG then
begin
SetRgn(WizardForm.Handle,ExpandConstant('{tmp}\Installer' + IntToStr(i) + '.bmp'), 0, 0,InstallerWidth,InstallerHeight);
with InstallerFrame do
begin
Hide;
CreateFormFromImage(Handle,ExpandConstant('{tmp}\Installer' + IntToStr(i) + '.png'));
Left:=WizardForm.Left;
Top:=WizardForm.Top;
SendToBack;
Show;
WizardForm.BringToFront;
if DirBrowseForm.Showing then
DirBrowseForm.BringToFront;
if CancelForm.Showing then
CancelForm.BringToFront;
if DiskPromptForm.Showing then
DiskPromptForm.BringToFront;
end;
end;
ImgApplyChanges(WizardForm.Handle);
end;

procedure CreateBG;
var
i: Integer;
begin
WizardForm.ClientWidth:=InstallerWidth;
WizardForm.ClientHeight:=InstallerHeight;
WizardForm.Center;
if WizardImage_PNG then
begin
with InstallerFrame do
begin
Left:=WizardForm.Left;
Top:=WizardForm.Top;
Width:=WizardForm.ClientWidth;
Height:=WizardForm.ClientHeight;
Show();
WizardForm.BringToFront;
if DirBrowseForm.Showing then
DirBrowseForm.BringToFront;
if CancelForm.Showing then
CancelForm.BringToFront;
if DiskPromptForm.Showing then
DiskPromptForm.BringToFront;
end;
end;
with BGChange do
begin
OnTimer:=@ChangeBG;
Interval:=7500;
Enabled:=False;
end;
if WizardImage_PNG then
SetRgnTimer.Enabled:=True;
if WizardImageQuantity = 1 then
BGChange.Enabled:=False;
i:=Random(WizardImageQuantity);
ImgSetVisibility(InstallerImage[i],True);
if WizardImage_PNG then
begin
with SetRgnTimer do
begin
OnTimer:=@UpdateFrame;
Interval:=10;
Enabled:=True;
end;
SetRgn(WizardForm.Handle,ExpandConstant('{tmp}\Installer' + IntToStr(i + 1) + '.bmp'), 0, 0,InstallerWidth,InstallerHeight);
with InstallerFrame do
begin
Hide;
CreateFormFromImage(Handle,ExpandConstant('{tmp}\Installer' + IntToStr(i + 1) + '.png'));
Left:=WizardForm.Left;
Top:=WizardForm.Top;
Width:=WizardForm.ClientWidth;
Height:=WizardForm.ClientHeight;
SendToBack;
Show;
WizardForm.BringToFront;
if DirBrowseForm.Showing then
DirBrowseForm.BringToFront;
if CancelForm.Showing then
CancelForm.BringToFront;
if DiskPromptForm.Showing then
DiskPromptForm.BringToFront;
end;
end;
ImgApplyChanges(WizardForm.Handle);
end;

procedure FreeBG;
begin
for i:= 0 to WizardImageQuantity - 1 do
ImgSetVisibility(InstallerImage[i],False);
BGChange.Enabled:=False;
if WizardImage_PNG then
SetRgnTimer.Enabled:=False;
ImgApplyChanges(WizardForm.Handle);
end;

procedure SChangeBG(Sender: TObject);
var
i, n, x: Integer;
begin
n:=0;
x:=1;
repeat
n:= n + 1;
if ImgGetVisibility(SmallInstallerImage[n - 1]) then
begin
ImgSetVisibility(SmallInstallerImage[n - 1],False);
x:=n;
end;
until n = WizardSmallImageQuantity;
if x = WizardSmallImageQuantity then
i:=1
else
i:= x + 1;
ImgSetVisibility(SmallInstallerImage[i - 1],True);
ImgSetPosition(SmallInstallerImage[i - 1],0,0,SmallInstallerWidth,SmallInstallerHeight);
if SmallWizardImage_PNG then
begin
SetRgn(WizardForm.Handle,ExpandConstant('{tmp}\SmallInstaller' + IntToStr(i) + '.bmp'), 0, 0,SmallInstallerWidth,SmallInstallerHeight);
with InstallerFrame do
begin
Hide;
CreateFormFromImage(Handle,ExpandConstant('{tmp}\SmallInstaller' + IntToStr(i) + '.png'));
Left:=WizardForm.Left;
Top:=WizardForm.Top;
Width:=WizardForm.ClientWidth;
Height:=WizardForm.ClientHeight;
SendToBack;
Show;
WizardForm.BringToFront;
if DirBrowseForm.Showing then
DirBrowseForm.BringToFront;
if CancelForm.Showing then
CancelForm.BringToFront;
if DiskPromptForm.Showing then
DiskPromptForm.BringToFront;
end;
end;
ImgApplyChanges(WizardForm.Handle);
end;

procedure SCreateBG;
var
i: Integer;
begin
WizardForm.ClientWidth:=SmallInstallerWidth;
WizardForm.ClientHeight:=SmallInstallerHeight;
WizardForm.Center
WizardForm.Top:=GetSystemMetrics(1)-SmallInstallerHeight-50;
if WizardImage_PNG then
begin
with InstallerFrame do
begin
BorderStyle:=bsNone;
Left:=WizardForm.Left;
Top:=WizardForm.Top;
Width:=WizardForm.ClientWidth;
Height:=WizardForm.ClientHeight;
Show();
WizardForm.BringToFront;
if DirBrowseForm.Showing then
DirBrowseForm.BringToFront;
if CancelForm.Showing then
CancelForm.BringToFront;
if DiskPromptForm.Showing then
DiskPromptForm.BringToFront;
end;
end;
with BGChange do
begin
OnTimer:=@SChangeBG;
Interval:=7500;
Enabled:=True;
end;
if WizardImage_PNG then
SetRgnTimer.Enabled:=True;
if WizardSmallImageQuantity = 1 then
BGChange.Enabled:=False;
i:=Random(WizardSmallImageQuantity);
ImgSetVisibility(SmallInstallerImage[i],True);
ImgSetPosition(SmallInstallerImage[i],0,0,SmallInstallerWidth,SmallInstallerHeight);
if SmallWizardImage_PNG then
begin
SetRgn(WizardForm.Handle,ExpandConstant('{tmp}\SmallInstaller' + IntToStr(i + 1) + '.bmp'), 0, 0, SmallInstallerWidth, SmallInstallerHeight);
with InstallerFrame do
begin
Hide;
CreateFormFromImage(Handle,ExpandConstant('{tmp}\SmallInstaller' + IntToStr(i + 1) + '.png'));
Left:=WizardForm.Left;
Top:=WizardForm.Top;
Width:=WizardForm.ClientWidth;
Height:=WizardForm.ClientHeight;
SendToBack;
Show;
WizardForm.BringToFront;
if DirBrowseForm.Showing then
DirBrowseForm.BringToFront;
if CancelForm.Showing then
CancelForm.BringToFront;
if DiskPromptForm.Showing then
DiskPromptForm.BringToFront;
end;
end;
ImgApplyChanges(WizardForm.Handle);
end;

procedure SFreeBG;
begin
for i:= 0 to WizardSmallImageQuantity - 1 do
ImgSetVisibility(SmallInstallerImage[i],False);
BGChange.Enabled:=False;
if WizardImage_PNG then
SetRgnTimer.Enabled:=False;
ImgApplyChanges(WizardForm.Handle);
end;

procedure CreateWizardImage;
var
MainArea: TLabel;
begin
with WizardForm do begin
if WizardImage_PNG then
BorderStyle:=bsNone
else
BorderStyle:=bsSingle;
ClientWidth:=InstallerWidth;
ClientHeight:=InstallerHeight;
Center;
MainArea:= TLabel.Create(WizardForm);
with MainArea do
begin
Left:= 0;
Top:= 0;
Width:= InstallerWidth;
Height:= InstallerHeight;
AutoSize:= false;
Transparent:= true;
WordWrap:= False;
Parent:= Wizardform;
OnMouseDown:=@MainAreaMouseDown;
end;
Color:=$252525;
OuterNotebook.Hide;
InnerNotebook.Hide;
Bevel.Hide;
PageNameLabel.Hide;
PageDescriptionLabel.Hide;
MainPanel.Hide;
end;

if WizardImage_JPG then
begin
counter:=0;
repeat
counter:=counter + 1
until FileExists(ExpandConstant('{tmp}\Installer'+ IntToStr(counter)+'.jpg')) = False;
WizardImageQuantity := counter - 1;
end;

if WizardImage_PNG then
begin
counter:=0;
repeat
counter:=counter + 1
until FileExists(ExpandConstant('{tmp}\Installer'+ IntToStr(counter)+'.png')) = False;
WizardImageQuantity := counter - 1;
end;

if SmallWizardImage_JPG then
begin
counter:=0;
repeat
counter:=counter + 1
until FileExists(ExpandConstant('{tmp}\SmallInstaller'+ IntToStr(counter)+'.jpg')) = False;
WizardSmallImageQuantity := counter - 1;
end;

if SmallWizardImage_PNG then
begin
counter:=0;
repeat
counter:=counter + 1
until FileExists(ExpandConstant('{tmp}\SmallInstaller'+ IntToStr(counter)+'.png')) = False;
WizardSmallImageQuantity := counter - 1;
end;

if WizardImage_JPG or WizardImage_PNG then
begin
SetArrayLength(InstallerImage,WizardImageQuantity);
for i:= 0 to WizardImageQuantity - 1 do
begin
if WizardImage_JPG then
InstallerImage[i]:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\Installer' + IntToStr(i + 1) + '.jpg'),ScaleX(0),ScaleY(0),InstallerWidth,InstallerHeight,True,True);
if WizardImage_PNG then
InstallerImage[i]:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\Installer' + IntToStr(i + 1) + '.png'),ScaleX(0),ScaleY(0),InstallerWidth,InstallerHeight,True,True);
ImgSetVisibility(InstallerImage[i],False);
end;
end;

if SmallWizardImage_JPG or SmallWizardImage_PNG then
begin
SetArrayLength(SmallInstallerImage,WizardSmallImageQuantity);
for i:= 0 to WizardSmallImageQuantity - 1 do
begin
if SmallWizardImage_JPG then
SmallInstallerImage[i]:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\SmallInstaller' + IntToStr(i + 1) + '.jpg'),ScaleX(0),ScaleY(0),SmallInstallerWidth,SmallInstallerHeight,True,True);
if SmallWizardImage_PNG then
SmallInstallerImage[i]:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\SmallInstaller' + IntToStr(i + 1) + '.png'),ScaleX(0),ScaleY(0),SmallInstallerWidth,SmallInstallerHeight,True,True);
ImgSetVisibility(SmallInstallerImage[i],False);
end;
end;

if WizardImage_PNG then
begin
InstallerFrame:= TForm.Create(nil);
InstallerFrame.OnActivate:=@FixFrame;
WFOldProc:=SetWindowLong(WizardForm.Handle,-4,WndProcCallBack(@WFProc,4));
InstallerFrame.BorderStyle:=bsNone;
end;
BGChange:= TTimer.Create(WizardForm);
if WizardImage_PNG then
SetRgnTimer:= TTimer.Create(WizardForm);
if WizardImage_JPG or WizardImage_PNG then
CreateBG
else begin
WizardForm.ClientWidth:=InstallerWidth;
WizardForm.ClientHeight:=InstallerHeight;
WizardForm.Center;
end;

if LogoImage then
Logo:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\Logo.png'),LogoLeft, LogoTop, LogoWidth, LogoHeight,True,True);

if CustomEditBackground then
EditBG:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\EditBackground.png'),TextPositionLeft+20, TextPositionTop+TextPositionHeight*7/16, TextPositionWidth-40,ScaleY(22),True,True);

if CustomTextBackground then
TextBG:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\TextBackground.png'),TextPositionLeft , TextPositionTop, TextPositionWidth, TextPositionHeight,True,True);

if CustomSmallTextBackground then
SmallTextBG:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\SmallTextBackground.png'),SmallTextPositionLeft ,SmallTextPositionTop,SmallTextPositionWidth, SmallTextPositionHeight,True,True);

if PreviewAvai then
begin
Preview1Image:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\Preview1.jpg'),TextPositionLeft+60,TextPositionTop+TextPositionHeight*11/64,TextPositionWidth-120, TextPositionHeight*42/64,True,True);
Preview2Image:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\Preview2.jpg'),TextPositionLeft+60,TextPositionTop+TextPositionHeight*11/64,TextPositionWidth-120, TextPositionHeight*42/64,True,True);
Preview3Image:=ImgLoad(WizardForm.Handle,ExpandConstant('{tmp}\Preview3.jpg'),TextPositionLeft+60,TextPositionTop+TextPositionHeight*11/64,TextPositionWidth-120, TextPositionHeight*42/64,True,True);
end;

OldMinimizeAnimation:=GetMinimizeAnimation;
SetMinimizeAnimation(False);

ImgSetVisibility(EditBG,False);
ImgSetVisibility(SmallTextBG,False);
ImgApplyChanges(WizardForm.Handle);
end;

procedure UpdateComponentsPage;
begin
Wizardform.NextButton.Enabled := True;
ButtonSetEnabled(NextBtn,Wizardform.NextButton.Enabled)
end;

procedure ComponentsClick(Sender: TObject);
begin

end;

procedure ComponentCheckOnClick(hBtn:HWND);
var
o,i,n,x,y,z: Integer;
begin
ButtonSoundClicked2;
if GetArrayLength(SelectComponentCheck1) <> 1 then
begin
for x:=0 to GetArrayLength(SelectComponentCheck1) - 1 do
begin
case hBtn of
SelectComponentCheck1[x]:
begin
o:=0;
repeat
if (x + 1) <= (GetArrayLength(SelectComponentCheck1) - 1) then
if Component[x + 1].Dependence = (x + 1) then
begin
i:= Component[x + 1].Dependence + o;
for n:=x + 1 to GetArrayLength(SelectComponentCheck1) - 1 do
begin
if Component[n].Dependence = i then
z:= n;
end;
for y:=x + 1 to z do
begin
if Component[y].Dependence <> (y + 1) then
begin
if BtnGetChecked(SelectComponentCheck1[Component[y].Dependence - 1]) then
begin
BtnSetChecked(SelectComponentCheck1[y],True);
BtnSetEnabled(SelectComponentCheck1[y],True);
SelectComponentLabel[y].Labl.Enabled:=True;
end else begin
BtnSetChecked(SelectComponentCheck1[y],False);
BtnSetEnabled(SelectComponentCheck1[y],False);
SelectComponentLabel[y].Labl.Enabled:=False;
end;
end;
end;
end;
o:=o+1;
until o = GetArrayLength(SelectComponentCheck1) - 1;
end;
end;
end;
end;
end;

function SelectComponentCheck(ComponentNumber: Integer):Boolean;
begin
Result :=Component[ComponentNumber - 1].Name <> '';
end;

procedure TaskCheckOnClick(hBtn:HWND);
var
o,i,n,x,y,z: Integer;
begin
ButtonSoundClicked2;
if GetArrayLength(SelectTaskCheck1) <> 1 then
begin
for x:=0 to GetArrayLength(SelectTaskCheck1) - 1 do
begin
case hBtn of
SelectTaskCheck1[x]:
begin
o:=0;
repeat
if (x + 1) <= (GetArrayLength(SelectTaskCheck1) - 1) then
if Task[x + 1].Dependence = (x + 1) then
begin
i:= Task[x + 1].Dependence + o;
for n:=x + 1 to GetArrayLength(SelectTaskCheck1) - 1 do
begin
if Task[n].Dependence = i then
z:= n;
end;
for y:=x + 1 to z do
begin
if Task[y].Dependence <> (y + 1) then
begin
if BtnGetChecked(SelectTaskCheck1[Task[y].Dependence - 1]) then
begin
BtnSetChecked(SelectTaskCheck1[y],True);
BtnSetEnabled(SelectTaskCheck1[y],True);
SelectTaskLabel[y].Labl.Enabled:=True;
end else begin
BtnSetChecked(SelectTaskCheck1[y],False);
BtnSetEnabled(SelectTaskCheck1[y],False);
SelectTaskLabel[y].Labl.Enabled:=False;
end;
end;
end;
end;
o:=o+1;
until o = GetArrayLength(SelectTaskCheck1) - 1;
end;
end;
end;
end;
end;

function SelectTaskCheck(TaskNumber: Integer):Boolean;
begin
Result :=Task[TaskNumber - 1].Name <> '';
end;

function InstallationError: Boolean;
begin
if ISDoneError = True then
Result := False
else
Result := True;
end;

procedure Protection;
begin
Exec('attrib', ExpandConstant('+s +h +r {tmp}'), '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
end;

procedure Protection2;
begin
Exec('attrib', ExpandConstant('-s -h -r {tmp}'), '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
end;

function AutorunWidth:integer ;
begin
#define AutorunWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "AutorunWidth", "900")
Result:={#AutorunWidth};
end;

function AutorunHeight:integer ;
begin
#define AutorunHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "AutorunHeight", "500")
Result:={#AutorunHeight};
end;

function InstallButtonLeft:integer ;
begin
#define InstallButtonLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "InstallButtonLeft", "0")
Result:={#InstallButtonLeft};
end;

function InstallButtonTop:integer ;
begin
#define InstallButtonTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "InstallButtonTop", "0")
Result:={#InstallButtonTop};
end;

function InstallButtonWidth:integer ;
begin
#define InstallButtonWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "InstallButtonWidth", "200")
Result:={#InstallButtonWidth};
end;

function InstallButtonHeight:integer ;
begin
#define InstallButtonHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "InstallButtonHeight", "30")
Result:={#InstallButtonHeight};
end;

function InstallButtonTextOffsetX:integer ;
begin
#define InstallButtonTextOffsetX ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "InstallButtonTextOffsetX", "0")
Result:={#InstallButtonTextOffsetX};
end;

function InstallButtonTextOffsetY:integer ;
begin
#define InstallButtonTextOffsetY ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "InstallButtonTextOffsetY", "0")
Result:={#InstallButtonTextOffsetY};
end;

function InstallButtonFontName:String;
begin
#define InstallButtonFontName ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "InstallButtonFontName", "Segoe UI")
Result:='{#InstallButtonFontName}';
end;

function InstallButtonFontSize:integer ;
begin
#define InstallButtonFontSize ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "InstallButtonFontSize", "13")
Result:={#InstallButtonFontSize};
end;

function InstallButtonFontSizeSelected:integer ;
begin
#define InstallButtonFontSizeSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "InstallButtonFontSizeSelected", "13")
Result:={#InstallButtonFontSizeSelected};
end;

function InstallButtonFontSizeClicked:integer ;
begin
#define InstallButtonFontSizeClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "InstallButtonFontSizeClicked", "13")
Result:={#InstallButtonFontSizeClicked};
end;

function InstallButtonFontSizeDisabled:integer ;
begin
#define InstallButtonFontSizeDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "InstallButtonFontSize", "13")
Result:={#InstallButtonFontSizeDisabled};
end;

function InstallButtonFontBold:Boolean;
begin
#define InstallButtonFontBold ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "InstallButtonFontBold", "0")
Result:={#InstallButtonFontBold} = 1;
end;

function InstallButtonFontItalic:Boolean;
begin
#define InstallButtonFontItalic ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "InstallButtonFontItalic", "0")
Result:={#InstallButtonFontItalic} = 1;
end;

function InstallButtonFontUnderline:Boolean;
begin
#define InstallButtonFontUnderline ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "InstallButtonFontUnderline", "0")
Result:={#InstallButtonFontUnderline} = 1;
end;

function InstallButtonFontStrikeOut:Boolean;
begin
#define InstallButtonFontStrikeOut ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "InstallButtonFontStrikeOut", "0")
Result:={#InstallButtonFontStrikeOut} = 1;
end;

function InstallButtonFontUppercase:Boolean;
begin
#define InstallButtonFontUppercase ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "InstallButtonFontUppercase", "0")
Result:={#InstallButtonFontUppercase} = 1;
end;

function InstallButtonFontColor:integer ;
begin
#define InstallButtonFontColor ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "InstallButtonFontColor", "#FFFFFF")
Result:=StrToInt('{#InstallButtonFontColor}');
end;

function InstallButtonFontColorSelected:integer ;
begin
#define InstallButtonFontColorSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "InstallButtonFontColorSelected", "#FFFFFF")
Result:=StrToInt('{#InstallButtonFontColorSelected}');
end;

function InstallButtonFontColorClicked:integer ;
begin
#define InstallButtonFontColorClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "InstallButtonFontColorClicked", "#FFFFFF")
Result:=StrToInt('{#InstallButtonFontColorClicked}');
end;

function InstallButtonFontColorDisabled:integer ;
begin
#define InstallButtonFontColorDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "InstallButtonFontColorDisabled", "#FFFFFF")
Result:=StrToInt('{#InstallButtonFontColorDisabled}');
end;

function InstallButtonTextHorzAlign:TAlignment;
begin
#define InstallButtonTextHorzAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "InstallButtonTextHorzAlign", "Center")
if '{#InstallButtonTextHorzAlign}' = 'Right' then
Result:=taRightJustify;
if '{#InstallButtonTextHorzAlign}' = 'Left' then
Result:=taLeftJustify;
if '{#InstallButtonTextHorzAlign}' = 'Center' then
Result:=taCenter;
end;

function InstallButtonTextVertAlign:TTextLayout;
begin
#define InstallButtonTextVertAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "InstallButtonTextVertAlign", "Center")
if '{#InstallButtonTextVertAlign}' = 'Center' then
Result:=tlCenter;
if '{#InstallButtonTextVertAlign}' = 'Top' then
Result:=tlTop;
if '{#InstallButtonTextVertAlign}' = 'Bottom' then
Result:=tlBottom;
end;

function LaunchButton1Left:integer ;
begin
#define Launch1ButtonLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch1ButtonLeft", "0")
Result:={#Launch1ButtonLeft};
end;

function LaunchButton1Top:integer ;
begin
#define Launch1ButtonTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch1ButtonTop", "0")
Result:={#Launch1ButtonTop};
end;

function LaunchButton1Width:integer ;
begin
#define Launch1ButtonWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch1ButtonWidth", "100")
Result:={#Launch1ButtonWidth};
end;

function LaunchButton1Height:integer ;
begin
#define Launch1ButtonHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch1ButtonHeight", "30")
Result:={#Launch1ButtonHeight};
end;

function LaunchButton1TextOffsetX:integer ;
begin
#define Launch1ButtonTextOffsetX ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch1ButtonTextOffsetX", "0")
Result:={#Launch1ButtonTextOffsetX};
end;

function LaunchButton1TextOffsetY:integer ;
begin
#define Launch1ButtonTextOffsetY ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch1ButtonTextOffsetY", "0")
Result:={#Launch1ButtonTextOffsetY};
end;

function LaunchButton1FontName:String;
begin
#define Launch1ButtonFontName ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch1ButtonFontName", "Segoe UI")
Result:='{#Launch1ButtonFontName}';
end;

function LaunchButton1FontSize:integer ;
begin
#define Launch1ButtonFontSize ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch1ButtonFontSize", "13")
Result:={#Launch1ButtonFontSize};
end;

function LaunchButton1FontSizeSelected:integer ;
begin
#define Launch1ButtonFontSizeSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch1ButtonFontSizeSelected", "13")
Result:={#Launch1ButtonFontSizeSelected};
end;

function LaunchButton1FontSizeClicked:integer ;
begin
#define Launch1ButtonFontSizeClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch1ButtonFontSizeClicked", "13")
Result:={#Launch1ButtonFontSizeClicked};
end;

function LaunchButton1FontSizeDisabled:integer ;
begin
#define Launch1ButtonFontSizeDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch1ButtonFontSize", "13")
Result:={#Launch1ButtonFontSizeDisabled};
end;

function LaunchButton1FontBold:Boolean;
begin
#define Launch1ButtonFontBold ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch1ButtonFontBold", "0")
Result:={#Launch1ButtonFontBold} = 1;
end;

function LaunchButton1FontItalic:Boolean;
begin
#define Launch1ButtonFontItalic ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch1ButtonFontItalic", "0")
Result:={#Launch1ButtonFontItalic} = 1;
end;

function LaunchButton1FontUnderline:Boolean;
begin
#define Launch1ButtonFontUnderline ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch1ButtonFontUnderline", "0")
Result:={#Launch1ButtonFontUnderline} = 1;
end;

function LaunchButton1FontStrikeOut:Boolean;
begin
#define Launch1ButtonFontStrikeOut ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch1ButtonFontStrikeOut", "0")
Result:={#Launch1ButtonFontStrikeOut} = 1;
end;

function LaunchButton1FontUppercase:Boolean;
begin
#define Launch1ButtonFontUppercase ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch1ButtonFontUppercase", "0")
Result:={#Launch1ButtonFontUppercase} = 1;
end;

function LaunchButton1FontColor:integer ;
begin
#define Launch1ButtonFontColor ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch1ButtonFontColor", "#FFFFFF")
Result:=StrToInt('{#Launch1ButtonFontColor}');
end;

function LaunchButton1FontColorSelected:integer ;
begin
#define Launch1ButtonFontColorSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch1ButtonFontColorSelected", "#FFFFFF")
Result:=StrToInt('{#Launch1ButtonFontColorSelected}');
end;

function LaunchButton1FontColorClicked:integer ;
begin
#define Launch1ButtonFontColorClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch1ButtonFontColorClicked", "#FFFFFF")
Result:=StrToInt('{#Launch1ButtonFontColorClicked}');
end;

function LaunchButton1FontColorDisabled:integer ;
begin
#define Launch1ButtonFontColorDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch1ButtonFontColorDisabled", "#FFFFFF")
Result:=StrToInt('{#Launch1ButtonFontColorDisabled}');
end;

function LaunchButton1TextHorzAlign:TAlignment;
begin
#define Launch1ButtonTextHorzAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch1ButtonTextHorzAlign", "Center")
if '{#Launch1ButtonTextHorzAlign}' = 'Right' then
Result:=taRightJustify;
if '{#Launch1ButtonTextHorzAlign}' = 'Left' then
Result:=taLeftJustify;
if '{#Launch1ButtonTextHorzAlign}' = 'Center' then
Result:=taCenter;
end;

function LaunchButton1TextVertAlign:TTextLayout;
begin
#define Launch1ButtonTextVertAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch1ButtonTextVertAlign", "Center")
if '{#Launch1ButtonTextVertAlign}' = 'Center' then
Result:=tlCenter;
if '{#Launch1ButtonTextVertAlign}' = 'Top' then
Result:=tlTop;
if '{#Launch1ButtonTextVertAlign}' = 'Bottom' then
Result:=tlBottom;
end;

function LaunchButton2Left:integer ;
begin
#define Launch2ButtonLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch2ButtonLeft", "0")
Result:={#Launch2ButtonLeft};
end;

function LaunchButton2Top:integer ;
begin
#define Launch2ButtonTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch2ButtonTop", "0")
Result:={#Launch2ButtonTop};
end;

function LaunchButton2Width:integer ;
begin
#define Launch2ButtonWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch2ButtonWidth", "200")
Result:={#Launch2ButtonWidth};
end;

function LaunchButton2Height:integer ;
begin
#define Launch2ButtonHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch2ButtonHeight", "30")
Result:={#Launch2ButtonHeight};
end;

function LaunchButton2TextOffsetX:integer ;
begin
#define Launch2ButtonTextOffsetX ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch2ButtonTextOffsetX", "0")
Result:={#Launch2ButtonTextOffsetX};
end;

function LaunchButton2TextOffsetY:integer ;
begin
#define Launch2ButtonTextOffsetY ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch2ButtonTextOffsetY", "0")
Result:={#Launch2ButtonTextOffsetY};
end;

function LaunchButton2FontName:String;
begin
#define Launch2ButtonFontName ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch2ButtonFontName", "Segoe UI")
Result:='{#Launch2ButtonFontName}';
end;

function LaunchButton2FontSize:integer ;
begin
#define Launch2ButtonFontSize ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch2ButtonFontSize", "13")
Result:={#Launch2ButtonFontSize};
end;

function LaunchButton2FontSizeSelected:integer ;
begin
#define Launch2ButtonFontSizeSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch2ButtonFontSizeSelected", "13")
Result:={#Launch2ButtonFontSizeSelected};
end;

function LaunchButton2FontSizeClicked:integer ;
begin
#define Launch2ButtonFontSizeClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch2ButtonFontSizeClicked", "13")
Result:={#Launch2ButtonFontSizeClicked};
end;

function LaunchButton2FontSizeDisabled:integer ;
begin
#define Launch2ButtonFontSizeDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch2ButtonFontSize", "13")
Result:={#Launch2ButtonFontSizeDisabled};
end;

function LaunchButton2FontBold:Boolean;
begin
#define Launch2ButtonFontBold ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch2ButtonFontBold", "0")
Result:={#Launch2ButtonFontBold} = 1;
end;

function LaunchButton2FontItalic:Boolean;
begin
#define Launch2ButtonFontItalic ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch2ButtonFontItalic", "0")
Result:={#Launch2ButtonFontItalic} = 1;
end;

function LaunchButton2FontUnderline:Boolean;
begin
#define Launch2ButtonFontUnderline ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch2ButtonFontUnderline", "0")
Result:={#Launch2ButtonFontUnderline} = 1;
end;

function LaunchButton2FontStrikeOut:Boolean;
begin
#define Launch2ButtonFontStrikeOut ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch2ButtonFontStrikeOut", "0")
Result:={#Launch2ButtonFontStrikeOut} = 1;
end;

function LaunchButton2FontUppercase:Boolean;
begin
#define Launch2ButtonFontUppercase ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch2ButtonFontUppercase", "0")
Result:={#Launch2ButtonFontUppercase} = 1;
end;

function LaunchButton2FontColor:integer ;
begin
#define Launch2ButtonFontColor ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch2ButtonFontColor", "#FFFFFF")
Result:=StrToInt('{#Launch2ButtonFontColor}');
end;

function LaunchButton2FontColorSelected:integer ;
begin
#define Launch2ButtonFontColorSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch2ButtonFontColorSelected", "#FFFFFF")
Result:=StrToInt('{#Launch2ButtonFontColorSelected}');
end;

function LaunchButton2FontColorClicked:integer ;
begin
#define Launch2ButtonFontColorClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch2ButtonFontColorClicked", "#FFFFFF")
Result:=StrToInt('{#Launch2ButtonFontColorClicked}');
end;

function LaunchButton2FontColorDisabled:integer ;
begin
#define Launch2ButtonFontColorDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch2ButtonFontColorDisabled", "#FFFFFF")
Result:=StrToInt('{#Launch2ButtonFontColorDisabled}');
end;

function LaunchButton2TextHorzAlign:TAlignment;
begin
#define Launch2ButtonTextHorzAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch2ButtonTextHorzAlign", "Center")
if '{#Launch2ButtonTextHorzAlign}' = 'Right' then
Result:=taRightJustify;
if '{#Launch2ButtonTextHorzAlign}' = 'Left' then
Result:=taLeftJustify;
if '{#Launch2ButtonTextHorzAlign}' = 'Center' then
Result:=taCenter;
end;

function LaunchButton2TextVertAlign:TTextLayout;
begin
#define Launch2ButtonTextVertAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch2ButtonTextVertAlign", "Center")
if '{#Launch2ButtonTextVertAlign}' = 'Center' then
Result:=tlCenter;
if '{#Launch2ButtonTextVertAlign}' = 'Top' then
Result:=tlTop;
if '{#Launch2ButtonTextVertAlign}' = 'Bottom' then
Result:=tlBottom;
end;

function LaunchButton3Left:integer ;
begin
#define Launch3ButtonLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch3ButtonLeft", "0")
Result:={#Launch3ButtonLeft};
end;

function LaunchButton3Top:integer ;
begin
#define Launch3ButtonTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch3ButtonTop", "0")
Result:={#Launch3ButtonTop};
end;

function LaunchButton3Width:integer ;
begin
#define Launch3ButtonWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch3ButtonWidth", "300")
Result:={#Launch3ButtonWidth};
end;

function LaunchButton3Height:integer ;
begin
#define Launch3ButtonHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch3ButtonHeight", "30")
Result:={#Launch3ButtonHeight};
end;

function LaunchButton3TextOffsetX:integer ;
begin
#define Launch3ButtonTextOffsetX ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch3ButtonTextOffsetX", "0")
Result:={#Launch3ButtonTextOffsetX};
end;

function LaunchButton3TextOffsetY:integer ;
begin
#define Launch3ButtonTextOffsetY ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch3ButtonTextOffsetY", "0")
Result:={#Launch3ButtonTextOffsetY};
end;

function LaunchButton3FontName:String;
begin
#define Launch3ButtonFontName ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch3ButtonFontName", "Segoe UI")
Result:='{#Launch3ButtonFontName}';
end;

function LaunchButton3FontSize:integer ;
begin
#define Launch3ButtonFontSize ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch3ButtonFontSize", "13")
Result:={#Launch3ButtonFontSize};
end;

function LaunchButton3FontSizeSelected:integer ;
begin
#define Launch3ButtonFontSizeSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch3ButtonFontSizeSelected", "13")
Result:={#Launch3ButtonFontSizeSelected};
end;

function LaunchButton3FontSizeClicked:integer ;
begin
#define Launch3ButtonFontSizeClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch3ButtonFontSizeClicked", "13")
Result:={#Launch3ButtonFontSizeClicked};
end;

function LaunchButton3FontSizeDisabled:integer ;
begin
#define Launch3ButtonFontSizeDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch3ButtonFontSize", "13")
Result:={#Launch3ButtonFontSizeDisabled};
end;

function LaunchButton3FontBold:Boolean;
begin
#define Launch3ButtonFontBold ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch3ButtonFontBold", "0")
Result:={#Launch3ButtonFontBold} = 1;
end;

function LaunchButton3FontItalic:Boolean;
begin
#define Launch3ButtonFontItalic ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch3ButtonFontItalic", "0")
Result:={#Launch3ButtonFontItalic} = 1;
end;

function LaunchButton3FontUnderline:Boolean;
begin
#define Launch3ButtonFontUnderline ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch3ButtonFontUnderline", "0")
Result:={#Launch3ButtonFontUnderline} = 1;
end;

function LaunchButton3FontStrikeOut:Boolean;
begin
#define Launch3ButtonFontStrikeOut ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch3ButtonFontStrikeOut", "0")
Result:={#Launch3ButtonFontStrikeOut} = 1;
end;

function LaunchButton3FontUppercase:Boolean;
begin
#define Launch3ButtonFontUppercase ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch3ButtonFontUppercase", "0")
Result:={#Launch3ButtonFontUppercase} = 1;
end;

function LaunchButton3FontColor:integer ;
begin
#define Launch3ButtonFontColor ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch3ButtonFontColor", "#FFFFFF")
Result:=StrToInt('{#Launch3ButtonFontColor}');
end;

function LaunchButton3FontColorSelected:integer ;
begin
#define Launch3ButtonFontColorSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch3ButtonFontColorSelected", "#FFFFFF")
Result:=StrToInt('{#Launch3ButtonFontColorSelected}');
end;

function LaunchButton3FontColorClicked:integer ;
begin
#define Launch3ButtonFontColorClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch3ButtonFontColorClicked", "#FFFFFF")
Result:=StrToInt('{#Launch3ButtonFontColorClicked}');
end;

function LaunchButton3FontColorDisabled:integer ;
begin
#define Launch3ButtonFontColorDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch3ButtonFontColorDisabled", "#FFFFFF")
Result:=StrToInt('{#Launch3ButtonFontColorDisabled}');
end;

function LaunchButton3TextHorzAlign:TAlignment;
begin
#define Launch3ButtonTextHorzAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch3ButtonTextHorzAlign", "Center")
if '{#Launch3ButtonTextHorzAlign}' = 'Right' then
Result:=taRightJustify;
if '{#Launch3ButtonTextHorzAlign}' = 'Left' then
Result:=taLeftJustify;
if '{#Launch3ButtonTextHorzAlign}' = 'Center' then
Result:=taCenter;
end;

function LaunchButton3TextVertAlign:TTextLayout;
begin
#define Launch3ButtonTextVertAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch3ButtonTextVertAlign", "Center")
if '{#Launch3ButtonTextVertAlign}' = 'Center' then
Result:=tlCenter;
if '{#Launch3ButtonTextVertAlign}' = 'Top' then
Result:=tlTop;
if '{#Launch3ButtonTextVertAlign}' = 'Bottom' then
Result:=tlBottom;
end;

function LaunchButton4Left:integer ;
begin
#define Launch4ButtonLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch4ButtonLeft", "0")
Result:={#Launch4ButtonLeft};
end;

function LaunchButton4Top:integer ;
begin
#define Launch4ButtonTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch4ButtonTop", "0")
Result:={#Launch4ButtonTop};
end;

function LaunchButton4Width:integer ;
begin
#define Launch4ButtonWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch4ButtonWidth", "400")
Result:={#Launch4ButtonWidth};
end;

function LaunchButton4Height:integer ;
begin
#define Launch4ButtonHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch4ButtonHeight", "30")
Result:={#Launch4ButtonHeight};
end;

function LaunchButton4TextOffsetX:integer ;
begin
#define Launch4ButtonTextOffsetX ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch4ButtonTextOffsetX", "0")
Result:={#Launch4ButtonTextOffsetX};
end;

function LaunchButton4TextOffsetY:integer ;
begin
#define Launch4ButtonTextOffsetY ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch4ButtonTextOffsetY", "0")
Result:={#Launch4ButtonTextOffsetY};
end;

function LaunchButton4FontName:String;
begin
#define Launch4ButtonFontName ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch4ButtonFontName", "Segoe UI")
Result:='{#Launch4ButtonFontName}';
end;

function LaunchButton4FontSize:integer ;
begin
#define Launch4ButtonFontSize ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch4ButtonFontSize", "13")
Result:={#Launch4ButtonFontSize};
end;

function LaunchButton4FontSizeSelected:integer ;
begin
#define Launch4ButtonFontSizeSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch4ButtonFontSizeSelected", "13")
Result:={#Launch4ButtonFontSizeSelected};
end;

function LaunchButton4FontSizeClicked:integer ;
begin
#define Launch4ButtonFontSizeClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch4ButtonFontSizeClicked", "13")
Result:={#Launch4ButtonFontSizeClicked};
end;

function LaunchButton4FontSizeDisabled:integer ;
begin
#define Launch4ButtonFontSizeDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch4ButtonFontSize", "13")
Result:={#Launch4ButtonFontSizeDisabled};
end;

function LaunchButton4FontBold:Boolean;
begin
#define Launch4ButtonFontBold ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch4ButtonFontBold", "0")
Result:={#Launch4ButtonFontBold} = 1;
end;

function LaunchButton4FontItalic:Boolean;
begin
#define Launch4ButtonFontItalic ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch4ButtonFontItalic", "0")
Result:={#Launch4ButtonFontItalic} = 1;
end;

function LaunchButton4FontUnderline:Boolean;
begin
#define Launch4ButtonFontUnderline ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch4ButtonFontUnderline", "0")
Result:={#Launch4ButtonFontUnderline} = 1;
end;

function LaunchButton4FontStrikeOut:Boolean;
begin
#define Launch4ButtonFontStrikeOut ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch4ButtonFontStrikeOut", "0")
Result:={#Launch4ButtonFontStrikeOut} = 1;
end;

function LaunchButton4FontUppercase:Boolean;
begin
#define Launch4ButtonFontUppercase ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch4ButtonFontUppercase", "0")
Result:={#Launch4ButtonFontUppercase} = 1;
end;

function LaunchButton4FontColor:integer ;
begin
#define Launch4ButtonFontColor ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch4ButtonFontColor", "#FFFFFF")
Result:=StrToInt('{#Launch4ButtonFontColor}');
end;

function LaunchButton4FontColorSelected:integer ;
begin
#define Launch4ButtonFontColorSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch4ButtonFontColorSelected", "#FFFFFF")
Result:=StrToInt('{#Launch4ButtonFontColorSelected}');
end;

function LaunchButton4FontColorClicked:integer ;
begin
#define Launch4ButtonFontColorClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch4ButtonFontColorClicked", "#FFFFFF")
Result:=StrToInt('{#Launch4ButtonFontColorClicked}');
end;

function LaunchButton4FontColorDisabled:integer ;
begin
#define Launch4ButtonFontColorDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch4ButtonFontColorDisabled", "#FFFFFF")
Result:=StrToInt('{#Launch4ButtonFontColorDisabled}');
end;

function LaunchButton4TextHorzAlign:TAlignment;
begin
#define Launch4ButtonTextHorzAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch4ButtonTextHorzAlign", "Center")
if '{#Launch4ButtonTextHorzAlign}' = 'Right' then
Result:=taRightJustify;
if '{#Launch4ButtonTextHorzAlign}' = 'Left' then
Result:=taLeftJustify;
if '{#Launch4ButtonTextHorzAlign}' = 'Center' then
Result:=taCenter;
end;

function LaunchButton4TextVertAlign:TTextLayout;
begin
#define Launch4ButtonTextVertAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch4ButtonTextVertAlign", "Center")
if '{#Launch4ButtonTextVertAlign}' = 'Center' then
Result:=tlCenter;
if '{#Launch4ButtonTextVertAlign}' = 'Top' then
Result:=tlTop;
if '{#Launch4ButtonTextVertAlign}' = 'Bottom' then
Result:=tlBottom;
end;

function LaunchButton5Left:integer ;
begin
#define Launch5ButtonLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch5ButtonLeft", "0")
Result:={#Launch5ButtonLeft};
end;

function LaunchButton5Top:integer ;
begin
#define Launch5ButtonTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch5ButtonTop", "0")
Result:={#Launch5ButtonTop};
end;

function LaunchButton5Width:integer ;
begin
#define Launch5ButtonWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch5ButtonWidth", "500")
Result:={#Launch5ButtonWidth};
end;

function LaunchButton5Height:integer ;
begin
#define Launch5ButtonHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch5ButtonHeight", "30")
Result:={#Launch5ButtonHeight};
end;

function LaunchButton5TextOffsetX:integer ;
begin
#define Launch5ButtonTextOffsetX ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch5ButtonTextOffsetX", "0")
Result:={#Launch5ButtonTextOffsetX};
end;

function LaunchButton5TextOffsetY:integer ;
begin
#define Launch5ButtonTextOffsetY ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch5ButtonTextOffsetY", "0")
Result:={#Launch5ButtonTextOffsetY};
end;

function LaunchButton5FontName:String;
begin
#define Launch5ButtonFontName ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch5ButtonFontName", "Segoe UI")
Result:='{#Launch5ButtonFontName}';
end;

function LaunchButton5FontSize:integer ;
begin
#define Launch5ButtonFontSize ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch5ButtonFontSize", "13")
Result:={#Launch5ButtonFontSize};
end;

function LaunchButton5FontSizeSelected:integer ;
begin
#define Launch5ButtonFontSizeSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch5ButtonFontSizeSelected", "13")
Result:={#Launch5ButtonFontSizeSelected};
end;

function LaunchButton5FontSizeClicked:integer ;
begin
#define Launch5ButtonFontSizeClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch5ButtonFontSizeClicked", "13")
Result:={#Launch5ButtonFontSizeClicked};
end;

function LaunchButton5FontSizeDisabled:integer ;
begin
#define Launch5ButtonFontSizeDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch5ButtonFontSize", "13")
Result:={#Launch5ButtonFontSizeDisabled};
end;

function LaunchButton5FontBold:Boolean;
begin
#define Launch5ButtonFontBold ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch5ButtonFontBold", "0")
Result:={#Launch5ButtonFontBold} = 1;
end;

function LaunchButton5FontItalic:Boolean;
begin
#define Launch5ButtonFontItalic ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch5ButtonFontItalic", "0")
Result:={#Launch5ButtonFontItalic} = 1;
end;

function LaunchButton5FontUnderline:Boolean;
begin
#define Launch5ButtonFontUnderline ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch5ButtonFontUnderline", "0")
Result:={#Launch5ButtonFontUnderline} = 1;
end;

function LaunchButton5FontStrikeOut:Boolean;
begin
#define Launch5ButtonFontStrikeOut ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch5ButtonFontStrikeOut", "0")
Result:={#Launch5ButtonFontStrikeOut} = 1;
end;

function LaunchButton5FontUppercase:Boolean;
begin
#define Launch5ButtonFontUppercase ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch5ButtonFontUppercase", "0")
Result:={#Launch5ButtonFontUppercase} = 1;
end;

function LaunchButton5FontColor:integer ;
begin
#define Launch5ButtonFontColor ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch5ButtonFontColor", "#FFFFFF")
Result:=StrToInt('{#Launch5ButtonFontColor}');
end;

function LaunchButton5FontColorSelected:integer ;
begin
#define Launch5ButtonFontColorSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch5ButtonFontColorSelected", "#FFFFFF")
Result:=StrToInt('{#Launch5ButtonFontColorSelected}');
end;

function LaunchButton5FontColorClicked:integer ;
begin
#define Launch5ButtonFontColorClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch5ButtonFontColorClicked", "#FFFFFF")
Result:=StrToInt('{#Launch5ButtonFontColorClicked}');
end;

function LaunchButton5FontColorDisabled:integer ;
begin
#define Launch5ButtonFontColorDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch5ButtonFontColorDisabled", "#FFFFFF")
Result:=StrToInt('{#Launch5ButtonFontColorDisabled}');
end;

function LaunchButton5TextHorzAlign:TAlignment;
begin
#define Launch5ButtonTextHorzAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch5ButtonTextHorzAlign", "Center")
if '{#Launch5ButtonTextHorzAlign}' = 'Right' then
Result:=taRightJustify;
if '{#Launch5ButtonTextHorzAlign}' = 'Left' then
Result:=taLeftJustify;
if '{#Launch5ButtonTextHorzAlign}' = 'Center' then
Result:=taCenter;
end;

function LaunchButton5TextVertAlign:TTextLayout;
begin
#define Launch5ButtonTextVertAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch5ButtonTextVertAlign", "Center")
if '{#Launch5ButtonTextVertAlign}' = 'Center' then
Result:=tlCenter;
if '{#Launch5ButtonTextVertAlign}' = 'Top' then
Result:=tlTop;
if '{#Launch5ButtonTextVertAlign}' = 'Bottom' then
Result:=tlBottom;
end;

function LaunchButton6Left:integer ;
begin
#define Launch6ButtonLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch6ButtonLeft", "0")
Result:={#Launch6ButtonLeft};
end;

function LaunchButton6Top:integer ;
begin
#define Launch6ButtonTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch6ButtonTop", "0")
Result:={#Launch6ButtonTop};
end;

function LaunchButton6Width:integer ;
begin
#define Launch6ButtonWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch6ButtonWidth", "600")
Result:={#Launch6ButtonWidth};
end;

function LaunchButton6Height:integer ;
begin
#define Launch6ButtonHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch6ButtonHeight", "30")
Result:={#Launch6ButtonHeight};
end;

function LaunchButton6TextOffsetX:integer ;
begin
#define Launch6ButtonTextOffsetX ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch6ButtonTextOffsetX", "0")
Result:={#Launch6ButtonTextOffsetX};
end;

function LaunchButton6TextOffsetY:integer ;
begin
#define Launch6ButtonTextOffsetY ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch6ButtonTextOffsetY", "0")
Result:={#Launch6ButtonTextOffsetY};
end;

function LaunchButton6FontName:String;
begin
#define Launch6ButtonFontName ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch6ButtonFontName", "Segoe UI")
Result:='{#Launch6ButtonFontName}';
end;

function LaunchButton6FontSize:integer ;
begin
#define Launch6ButtonFontSize ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch6ButtonFontSize", "13")
Result:={#Launch6ButtonFontSize};
end;

function LaunchButton6FontSizeSelected:integer ;
begin
#define Launch6ButtonFontSizeSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch6ButtonFontSizeSelected", "13")
Result:={#Launch6ButtonFontSizeSelected};
end;

function LaunchButton6FontSizeClicked:integer ;
begin
#define Launch6ButtonFontSizeClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch6ButtonFontSizeClicked", "13")
Result:={#Launch6ButtonFontSizeClicked};
end;

function LaunchButton6FontSizeDisabled:integer ;
begin
#define Launch6ButtonFontSizeDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch6ButtonFontSize", "13")
Result:={#Launch6ButtonFontSizeDisabled};
end;

function LaunchButton6FontBold:Boolean;
begin
#define Launch6ButtonFontBold ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch6ButtonFontBold", "0")
Result:={#Launch6ButtonFontBold} = 1;
end;

function LaunchButton6FontItalic:Boolean;
begin
#define Launch6ButtonFontItalic ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch6ButtonFontItalic", "0")
Result:={#Launch6ButtonFontItalic} = 1;
end;

function LaunchButton6FontUnderline:Boolean;
begin
#define Launch6ButtonFontUnderline ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch6ButtonFontUnderline", "0")
Result:={#Launch6ButtonFontUnderline} = 1;
end;

function LaunchButton6FontStrikeOut:Boolean;
begin
#define Launch6ButtonFontStrikeOut ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch6ButtonFontStrikeOut", "0")
Result:={#Launch6ButtonFontStrikeOut} = 1;
end;

function LaunchButton6FontUppercase:Boolean;
begin
#define Launch6ButtonFontUppercase ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch6ButtonFontUppercase", "0")
Result:={#Launch6ButtonFontUppercase} = 1;
end;

function LaunchButton6FontColor:integer ;
begin
#define Launch6ButtonFontColor ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch6ButtonFontColor", "#FFFFFF")
Result:=StrToInt('{#Launch6ButtonFontColor}');
end;

function LaunchButton6FontColorSelected:integer ;
begin
#define Launch6ButtonFontColorSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch6ButtonFontColorSelected", "#FFFFFF")
Result:=StrToInt('{#Launch6ButtonFontColorSelected}');
end;

function LaunchButton6FontColorClicked:integer ;
begin
#define Launch6ButtonFontColorClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch6ButtonFontColorClicked", "#FFFFFF")
Result:=StrToInt('{#Launch6ButtonFontColorClicked}');
end;

function LaunchButton6FontColorDisabled:integer ;
begin
#define Launch6ButtonFontColorDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch6ButtonFontColorDisabled", "#FFFFFF")
Result:=StrToInt('{#Launch6ButtonFontColorDisabled}');
end;

function LaunchButton6TextHorzAlign:TAlignment;
begin
#define Launch6ButtonTextHorzAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch6ButtonTextHorzAlign", "Center")
if '{#Launch6ButtonTextHorzAlign}' = 'Right' then
Result:=taRightJustify;
if '{#Launch6ButtonTextHorzAlign}' = 'Left' then
Result:=taLeftJustify;
if '{#Launch6ButtonTextHorzAlign}' = 'Center' then
Result:=taCenter;
end;

function LaunchButton6TextVertAlign:TTextLayout;
begin
#define Launch6ButtonTextVertAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch6ButtonTextVertAlign", "Center")
if '{#Launch6ButtonTextVertAlign}' = 'Center' then
Result:=tlCenter;
if '{#Launch6ButtonTextVertAlign}' = 'Top' then
Result:=tlTop;
if '{#Launch6ButtonTextVertAlign}' = 'Bottom' then
Result:=tlBottom;
end;

function LaunchButton7Left:integer ;
begin
#define Launch7ButtonLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch7ButtonLeft", "0")
Result:={#Launch7ButtonLeft};
end;

function LaunchButton7Top:integer ;
begin
#define Launch7ButtonTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch7ButtonTop", "0")
Result:={#Launch7ButtonTop};
end;

function LaunchButton7Width:integer ;
begin
#define Launch7ButtonWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch7ButtonWidth", "700")
Result:={#Launch7ButtonWidth};
end;

function LaunchButton7Height:integer ;
begin
#define Launch7ButtonHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch7ButtonHeight", "30")
Result:={#Launch7ButtonHeight};
end;

function LaunchButton7TextOffsetX:integer ;
begin
#define Launch7ButtonTextOffsetX ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch7ButtonTextOffsetX", "0")
Result:={#Launch7ButtonTextOffsetX};
end;

function LaunchButton7TextOffsetY:integer ;
begin
#define Launch7ButtonTextOffsetY ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch7ButtonTextOffsetY", "0")
Result:={#Launch7ButtonTextOffsetY};
end;

function LaunchButton7FontName:String;
begin
#define Launch7ButtonFontName ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch7ButtonFontName", "Segoe UI")
Result:='{#Launch7ButtonFontName}';
end;

function LaunchButton7FontSize:integer ;
begin
#define Launch7ButtonFontSize ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch7ButtonFontSize", "13")
Result:={#Launch7ButtonFontSize};
end;

function LaunchButton7FontSizeSelected:integer ;
begin
#define Launch7ButtonFontSizeSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch7ButtonFontSizeSelected", "13")
Result:={#Launch7ButtonFontSizeSelected};
end;

function LaunchButton7FontSizeClicked:integer ;
begin
#define Launch7ButtonFontSizeClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch7ButtonFontSizeClicked", "13")
Result:={#Launch7ButtonFontSizeClicked};
end;

function LaunchButton7FontSizeDisabled:integer ;
begin
#define Launch7ButtonFontSizeDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch7ButtonFontSize", "13")
Result:={#Launch7ButtonFontSizeDisabled};
end;

function LaunchButton7FontBold:Boolean;
begin
#define Launch7ButtonFontBold ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch7ButtonFontBold", "0")
Result:={#Launch7ButtonFontBold} = 1;
end;

function LaunchButton7FontItalic:Boolean;
begin
#define Launch7ButtonFontItalic ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch7ButtonFontItalic", "0")
Result:={#Launch7ButtonFontItalic} = 1;
end;

function LaunchButton7FontUnderline:Boolean;
begin
#define Launch7ButtonFontUnderline ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch7ButtonFontUnderline", "0")
Result:={#Launch7ButtonFontUnderline} = 1;
end;

function LaunchButton7FontStrikeOut:Boolean;
begin
#define Launch7ButtonFontStrikeOut ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch7ButtonFontStrikeOut", "0")
Result:={#Launch7ButtonFontStrikeOut} = 1;
end;

function LaunchButton7FontUppercase:Boolean;
begin
#define Launch7ButtonFontUppercase ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch7ButtonFontUppercase", "0")
Result:={#Launch7ButtonFontUppercase} = 1;
end;

function LaunchButton7FontColor:integer ;
begin
#define Launch7ButtonFontColor ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch7ButtonFontColor", "#FFFFFF")
Result:=StrToInt('{#Launch7ButtonFontColor}');
end;

function LaunchButton7FontColorSelected:integer ;
begin
#define Launch7ButtonFontColorSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch7ButtonFontColorSelected", "#FFFFFF")
Result:=StrToInt('{#Launch7ButtonFontColorSelected}');
end;

function LaunchButton7FontColorClicked:integer ;
begin
#define Launch7ButtonFontColorClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch7ButtonFontColorClicked", "#FFFFFF")
Result:=StrToInt('{#Launch7ButtonFontColorClicked}');
end;

function LaunchButton7FontColorDisabled:integer ;
begin
#define Launch7ButtonFontColorDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch7ButtonFontColorDisabled", "#FFFFFF")
Result:=StrToInt('{#Launch7ButtonFontColorDisabled}');
end;

function LaunchButton7TextHorzAlign:TAlignment;
begin
#define Launch7ButtonTextHorzAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch7ButtonTextHorzAlign", "Center")
if '{#Launch7ButtonTextHorzAlign}' = 'Right' then
Result:=taRightJustify;
if '{#Launch7ButtonTextHorzAlign}' = 'Left' then
Result:=taLeftJustify;
if '{#Launch7ButtonTextHorzAlign}' = 'Center' then
Result:=taCenter;
end;

function LaunchButton7TextVertAlign:TTextLayout;
begin
#define Launch7ButtonTextVertAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch7ButtonTextVertAlign", "Center")
if '{#Launch7ButtonTextVertAlign}' = 'Center' then
Result:=tlCenter;
if '{#Launch7ButtonTextVertAlign}' = 'Top' then
Result:=tlTop;
if '{#Launch7ButtonTextVertAlign}' = 'Bottom' then
Result:=tlBottom;
end;

function LaunchButton8Left:integer ;
begin
#define Launch8ButtonLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch8ButtonLeft", "0")
Result:={#Launch8ButtonLeft};
end;

function LaunchButton8Top:integer ;
begin
#define Launch8ButtonTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch8ButtonTop", "0")
Result:={#Launch8ButtonTop};
end;

function LaunchButton8Width:integer ;
begin
#define Launch8ButtonWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch8ButtonWidth", "800")
Result:={#Launch8ButtonWidth};
end;

function LaunchButton8Height:integer ;
begin
#define Launch8ButtonHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch8ButtonHeight", "30")
Result:={#Launch8ButtonHeight};
end;

function LaunchButton8TextOffsetX:integer ;
begin
#define Launch8ButtonTextOffsetX ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch8ButtonTextOffsetX", "0")
Result:={#Launch8ButtonTextOffsetX};
end;

function LaunchButton8TextOffsetY:integer ;
begin
#define Launch8ButtonTextOffsetY ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch8ButtonTextOffsetY", "0")
Result:={#Launch8ButtonTextOffsetY};
end;

function LaunchButton8FontName:String;
begin
#define Launch8ButtonFontName ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch8ButtonFontName", "Segoe UI")
Result:='{#Launch8ButtonFontName}';
end;

function LaunchButton8FontSize:integer ;
begin
#define Launch8ButtonFontSize ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch8ButtonFontSize", "13")
Result:={#Launch8ButtonFontSize};
end;

function LaunchButton8FontSizeSelected:integer ;
begin
#define Launch8ButtonFontSizeSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch8ButtonFontSizeSelected", "13")
Result:={#Launch8ButtonFontSizeSelected};
end;

function LaunchButton8FontSizeClicked:integer ;
begin
#define Launch8ButtonFontSizeClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch8ButtonFontSizeClicked", "13")
Result:={#Launch8ButtonFontSizeClicked};
end;

function LaunchButton8FontSizeDisabled:integer ;
begin
#define Launch8ButtonFontSizeDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch8ButtonFontSize", "13")
Result:={#Launch8ButtonFontSizeDisabled};
end;

function LaunchButton8FontBold:Boolean;
begin
#define Launch8ButtonFontBold ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch8ButtonFontBold", "0")
Result:={#Launch8ButtonFontBold} = 1;
end;

function LaunchButton8FontItalic:Boolean;
begin
#define Launch8ButtonFontItalic ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch8ButtonFontItalic", "0")
Result:={#Launch8ButtonFontItalic} = 1;
end;

function LaunchButton8FontUnderline:Boolean;
begin
#define Launch8ButtonFontUnderline ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch8ButtonFontUnderline", "0")
Result:={#Launch8ButtonFontUnderline} = 1;
end;

function LaunchButton8FontStrikeOut:Boolean;
begin
#define Launch8ButtonFontStrikeOut ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch8ButtonFontStrikeOut", "0")
Result:={#Launch8ButtonFontStrikeOut} = 1;
end;

function LaunchButton8FontUppercase:Boolean;
begin
#define Launch8ButtonFontUppercase ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch8ButtonFontUppercase", "0")
Result:={#Launch8ButtonFontUppercase} = 1;
end;

function LaunchButton8FontColor:integer ;
begin
#define Launch8ButtonFontColor ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch8ButtonFontColor", "#FFFFFF")
Result:=StrToInt('{#Launch8ButtonFontColor}');
end;

function LaunchButton8FontColorSelected:integer ;
begin
#define Launch8ButtonFontColorSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch8ButtonFontColorSelected", "#FFFFFF")
Result:=StrToInt('{#Launch8ButtonFontColorSelected}');
end;

function LaunchButton8FontColorClicked:integer ;
begin
#define Launch8ButtonFontColorClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch8ButtonFontColorClicked", "#FFFFFF")
Result:=StrToInt('{#Launch8ButtonFontColorClicked}');
end;

function LaunchButton8FontColorDisabled:integer ;
begin
#define Launch8ButtonFontColorDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch8ButtonFontColorDisabled", "#FFFFFF")
Result:=StrToInt('{#Launch8ButtonFontColorDisabled}');
end;

function LaunchButton8TextHorzAlign:TAlignment;
begin
#define Launch8ButtonTextHorzAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch8ButtonTextHorzAlign", "Center")
if '{#Launch8ButtonTextHorzAlign}' = 'Right' then
Result:=taRightJustify;
if '{#Launch8ButtonTextHorzAlign}' = 'Left' then
Result:=taLeftJustify;
if '{#Launch8ButtonTextHorzAlign}' = 'Center' then
Result:=taCenter;
end;

function LaunchButton8TextVertAlign:TTextLayout;
begin
#define Launch8ButtonTextVertAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch8ButtonTextVertAlign", "Center")
if '{#Launch8ButtonTextVertAlign}' = 'Center' then
Result:=tlCenter;
if '{#Launch8ButtonTextVertAlign}' = 'Top' then
Result:=tlTop;
if '{#Launch8ButtonTextVertAlign}' = 'Bottom' then
Result:=tlBottom;
end;

function LaunchButton9Left:integer ;
begin
#define Launch9ButtonLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch9ButtonLeft", "0")
Result:={#Launch9ButtonLeft};
end;

function LaunchButton9Top:integer ;
begin
#define Launch9ButtonTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch9ButtonTop", "0")
Result:={#Launch9ButtonTop};
end;

function LaunchButton9Width:integer ;
begin
#define Launch9ButtonWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch9ButtonWidth", "900")
Result:={#Launch9ButtonWidth};
end;

function LaunchButton9Height:integer ;
begin
#define Launch9ButtonHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch9ButtonHeight", "30")
Result:={#Launch9ButtonHeight};
end;

function LaunchButton9TextOffsetX:integer ;
begin
#define Launch9ButtonTextOffsetX ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch9ButtonTextOffsetX", "0")
Result:={#Launch9ButtonTextOffsetX};
end;

function LaunchButton9TextOffsetY:integer ;
begin
#define Launch9ButtonTextOffsetY ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch9ButtonTextOffsetY", "0")
Result:={#Launch9ButtonTextOffsetY};
end;

function LaunchButton9FontName:String;
begin
#define Launch9ButtonFontName ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch9ButtonFontName", "Segoe UI")
Result:='{#Launch9ButtonFontName}';
end;

function LaunchButton9FontSize:integer ;
begin
#define Launch9ButtonFontSize ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch9ButtonFontSize", "13")
Result:={#Launch9ButtonFontSize};
end;

function LaunchButton9FontSizeSelected:integer ;
begin
#define Launch9ButtonFontSizeSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch9ButtonFontSizeSelected", "13")
Result:={#Launch9ButtonFontSizeSelected};
end;

function LaunchButton9FontSizeClicked:integer ;
begin
#define Launch9ButtonFontSizeClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch9ButtonFontSizeClicked", "13")
Result:={#Launch9ButtonFontSizeClicked};
end;

function LaunchButton9FontSizeDisabled:integer ;
begin
#define Launch9ButtonFontSizeDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch9ButtonFontSize", "13")
Result:={#Launch9ButtonFontSizeDisabled};
end;

function LaunchButton9FontBold:Boolean;
begin
#define Launch9ButtonFontBold ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch9ButtonFontBold", "0")
Result:={#Launch9ButtonFontBold} = 1;
end;

function LaunchButton9FontItalic:Boolean;
begin
#define Launch9ButtonFontItalic ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch9ButtonFontItalic", "0")
Result:={#Launch9ButtonFontItalic} = 1;
end;

function LaunchButton9FontUnderline:Boolean;
begin
#define Launch9ButtonFontUnderline ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch9ButtonFontUnderline", "0")
Result:={#Launch9ButtonFontUnderline} = 1;
end;

function LaunchButton9FontStrikeOut:Boolean;
begin
#define Launch9ButtonFontStrikeOut ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch9ButtonFontStrikeOut", "0")
Result:={#Launch9ButtonFontStrikeOut} = 1;
end;

function LaunchButton9FontUppercase:Boolean;
begin
#define Launch9ButtonFontUppercase ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch9ButtonFontUppercase", "0")
Result:={#Launch9ButtonFontUppercase} = 1;
end;

function LaunchButton9FontColor:integer ;
begin
#define Launch9ButtonFontColor ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch9ButtonFontColor", "#FFFFFF")
Result:=StrToInt('{#Launch9ButtonFontColor}');
end;

function LaunchButton9FontColorSelected:integer ;
begin
#define Launch9ButtonFontColorSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch9ButtonFontColorSelected", "#FFFFFF")
Result:=StrToInt('{#Launch9ButtonFontColorSelected}');
end;

function LaunchButton9FontColorClicked:integer ;
begin
#define Launch9ButtonFontColorClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch9ButtonFontColorClicked", "#FFFFFF")
Result:=StrToInt('{#Launch9ButtonFontColorClicked}');
end;

function LaunchButton9FontColorDisabled:integer ;
begin
#define Launch9ButtonFontColorDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch9ButtonFontColorDisabled", "#FFFFFF")
Result:=StrToInt('{#Launch9ButtonFontColorDisabled}');
end;

function LaunchButton9TextHorzAlign:TAlignment;
begin
#define Launch9ButtonTextHorzAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch9ButtonTextHorzAlign", "Center")
if '{#Launch9ButtonTextHorzAlign}' = 'Right' then
Result:=taRightJustify;
if '{#Launch9ButtonTextHorzAlign}' = 'Left' then
Result:=taLeftJustify;
if '{#Launch9ButtonTextHorzAlign}' = 'Center' then
Result:=taCenter;
end;

function LaunchButton9TextVertAlign:TTextLayout;
begin
#define Launch9ButtonTextVertAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch9ButtonTextVertAlign", "Center")
if '{#Launch9ButtonTextVertAlign}' = 'Center' then
Result:=tlCenter;
if '{#Launch9ButtonTextVertAlign}' = 'Top' then
Result:=tlTop;
if '{#Launch9ButtonTextVertAlign}' = 'Bottom' then
Result:=tlBottom;
end;

function LaunchButton10Left:integer ;
begin
#define Launch10ButtonLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch10ButtonLeft", "0")
Result:={#Launch10ButtonLeft};
end;

function LaunchButton10Top:integer ;
begin
#define Launch10ButtonTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch10ButtonTop", "0")
Result:={#Launch10ButtonTop};
end;

function LaunchButton10Width:integer ;
begin
#define Launch10ButtonWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch10ButtonWidth", "1000")
Result:={#Launch10ButtonWidth};
end;

function LaunchButton10Height:integer ;
begin
#define Launch10ButtonHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch10ButtonHeight", "30")
Result:={#Launch10ButtonHeight};
end;

function LaunchButton10TextOffsetX:integer ;
begin
#define Launch10ButtonTextOffsetX ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch10ButtonTextOffsetX", "0")
Result:={#Launch10ButtonTextOffsetX};
end;

function LaunchButton10TextOffsetY:integer ;
begin
#define Launch10ButtonTextOffsetY ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch10ButtonTextOffsetY", "0")
Result:={#Launch10ButtonTextOffsetY};
end;

function LaunchButton10FontName:String;
begin
#define Launch10ButtonFontName ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch10ButtonFontName", "Segoe UI")
Result:='{#Launch10ButtonFontName}';
end;

function LaunchButton10FontSize:integer ;
begin
#define Launch10ButtonFontSize ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch10ButtonFontSize", "13")
Result:={#Launch10ButtonFontSize};
end;

function LaunchButton10FontSizeSelected:integer ;
begin
#define Launch10ButtonFontSizeSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch10ButtonFontSizeSelected", "13")
Result:={#Launch10ButtonFontSizeSelected};
end;

function LaunchButton10FontSizeClicked:integer ;
begin
#define Launch10ButtonFontSizeClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch10ButtonFontSizeClicked", "13")
Result:={#Launch10ButtonFontSizeClicked};
end;

function LaunchButton10FontSizeDisabled:integer ;
begin
#define Launch10ButtonFontSizeDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch10ButtonFontSize", "13")
Result:={#Launch10ButtonFontSizeDisabled};
end;

function LaunchButton10FontBold:Boolean;
begin
#define Launch10ButtonFontBold ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch10ButtonFontBold", "0")
Result:={#Launch10ButtonFontBold} = 1;
end;

function LaunchButton10FontItalic:Boolean;
begin
#define Launch10ButtonFontItalic ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch10ButtonFontItalic", "0")
Result:={#Launch10ButtonFontItalic} = 1;
end;

function LaunchButton10FontUnderline:Boolean;
begin
#define Launch10ButtonFontUnderline ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch10ButtonFontUnderline", "0")
Result:={#Launch10ButtonFontUnderline} = 1;
end;

function LaunchButton10FontStrikeOut:Boolean;
begin
#define Launch10ButtonFontStrikeOut ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch10ButtonFontStrikeOut", "0")
Result:={#Launch10ButtonFontStrikeOut} = 1;
end;

function LaunchButton10FontUppercase:Boolean;
begin
#define Launch10ButtonFontUppercase ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch10ButtonFontUppercase", "0")
Result:={#Launch10ButtonFontUppercase} = 1;
end;

function LaunchButton10FontColor:integer ;
begin
#define Launch10ButtonFontColor ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch10ButtonFontColor", "#FFFFFF")
Result:=StrToInt('{#Launch10ButtonFontColor}');
end;

function LaunchButton10FontColorSelected:integer ;
begin
#define Launch10ButtonFontColorSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch10ButtonFontColorSelected", "#FFFFFF")
Result:=StrToInt('{#Launch10ButtonFontColorSelected}');
end;

function LaunchButton10FontColorClicked:integer ;
begin
#define Launch10ButtonFontColorClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch10ButtonFontColorClicked", "#FFFFFF")
Result:=StrToInt('{#Launch10ButtonFontColorClicked}');
end;

function LaunchButton10FontColorDisabled:integer ;
begin
#define Launch10ButtonFontColorDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch10ButtonFontColorDisabled", "#FFFFFF")
Result:=StrToInt('{#Launch10ButtonFontColorDisabled}');
end;

function LaunchButton10TextHorzAlign:TAlignment;
begin
#define Launch10ButtonTextHorzAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch10ButtonTextHorzAlign", "Center")
if '{#Launch10ButtonTextHorzAlign}' = 'Right' then
Result:=taRightJustify;
if '{#Launch10ButtonTextHorzAlign}' = 'Left' then
Result:=taLeftJustify;
if '{#Launch10ButtonTextHorzAlign}' = 'Center' then
Result:=taCenter;
end;

function LaunchButton10TextVertAlign:TTextLayout;
begin
#define Launch10ButtonTextVertAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "Launch10ButtonTextVertAlign", "Center")
if '{#Launch10ButtonTextVertAlign}' = 'Center' then
Result:=tlCenter;
if '{#Launch10ButtonTextVertAlign}' = 'Top' then
Result:=tlTop;
if '{#Launch10ButtonTextVertAlign}' = 'Bottom' then
Result:=tlBottom;
end;

function ExitButtonLeft:integer ;
begin
#define ExitButtonLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ExitButtonLeft", "0")
Result:={#ExitButtonLeft};
end;

function ExitButtonTop:integer ;
begin
#define ExitButtonTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ExitButtonTop", "0")
Result:={#ExitButtonTop};
end;

function ExitButtonWidth:integer ;
begin
#define ExitButtonWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ExitButtonWidth", "200")
Result:={#ExitButtonWidth};
end;

function ExitButtonHeight:integer ;
begin
#define ExitButtonHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ExitButtonHeight", "30")
Result:={#ExitButtonHeight};
end;

function ExitButtonTextOffsetX:integer ;
begin
#define ExitButtonTextOffsetX ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ExitButtonTextOffsetX", "0")
Result:={#ExitButtonTextOffsetX};
end;

function ExitButtonTextOffsetY:integer ;
begin
#define ExitButtonTextOffsetY ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ExitButtonTextOffsetY", "0")
Result:={#ExitButtonTextOffsetY};
end;

function ExitButtonFontName:String;
begin
#define ExitButtonFontName ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ExitButtonFontName", "Segoe UI")
Result:='{#ExitButtonFontName}';
end;

function ExitButtonFontSize:integer ;
begin
#define ExitButtonFontSize ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ExitButtonFontSize", "13")
Result:={#ExitButtonFontSize};
end;

function ExitButtonFontSizeSelected:integer ;
begin
#define ExitButtonFontSizeSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ExitButtonFontSizeSelected", "13")
Result:={#ExitButtonFontSizeSelected};
end;

function ExitButtonFontSizeClicked:integer ;
begin
#define ExitButtonFontSizeClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ExitButtonFontSizeClicked", "13")
Result:={#ExitButtonFontSizeClicked};
end;

function ExitButtonFontSizeDisabled:integer ;
begin
#define ExitButtonFontSizeDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ExitButtonFontSize", "13")
Result:={#ExitButtonFontSizeDisabled};
end;

function ExitButtonFontBold:Boolean;
begin
#define ExitButtonFontBold ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ExitButtonFontBold", "0")
Result:={#ExitButtonFontBold} = 1;
end;

function ExitButtonFontItalic:Boolean;
begin
#define ExitButtonFontItalic ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ExitButtonFontItalic", "0")
Result:={#ExitButtonFontItalic} = 1;
end;

function ExitButtonFontUnderline:Boolean;
begin
#define ExitButtonFontUnderline ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ExitButtonFontUnderline", "0")
Result:={#ExitButtonFontUnderline} = 1;
end;

function ExitButtonFontStrikeOut:Boolean;
begin
#define ExitButtonFontStrikeOut ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ExitButtonFontStrikeOut", "0")
Result:={#ExitButtonFontStrikeOut} = 1;
end;

function ExitButtonFontUppercase:Boolean;
begin
#define ExitButtonFontUppercase ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ExitButtonFontUppercase", "0")
Result:={#ExitButtonFontUppercase} = 1;
end;

function ExitButtonFontColor:integer ;
begin
#define ExitButtonFontColor ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ExitButtonFontColor", "#FFFFFF")
Result:=StrToInt('{#ExitButtonFontColor}');
end;

function ExitButtonFontColorSelected:integer ;
begin
#define ExitButtonFontColorSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ExitButtonFontColorSelected", "#FFFFFF")
Result:=StrToInt('{#ExitButtonFontColorSelected}');
end;

function ExitButtonFontColorClicked:integer ;
begin
#define ExitButtonFontColorClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ExitButtonFontColorClicked", "#FFFFFF")
Result:=StrToInt('{#ExitButtonFontColorClicked}');
end;

function ExitButtonFontColorDisabled:integer ;
begin
#define ExitButtonFontColorDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ExitButtonFontColorDisabled", "#FFFFFF")
Result:=StrToInt('{#ExitButtonFontColorDisabled}');
end;

function ExitButtonTextHorzAlign:TAlignment;
begin
#define ExitButtonTextHorzAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ExitButtonTextHorzAlign", "Center")
if '{#ExitButtonTextHorzAlign}' = 'Right' then
Result:=taRightJustify;
if '{#ExitButtonTextHorzAlign}' = 'Left' then
Result:=taLeftJustify;
if '{#ExitButtonTextHorzAlign}' = 'Center' then
Result:=taCenter;
end;

function ExitButtonTextVertAlign:TTextLayout;
begin
#define ExitButtonTextVertAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ExitButtonTextVertAlign", "Center")
if '{#ExitButtonTextVertAlign}' = 'Center' then
Result:=tlCenter;
if '{#ExitButtonTextVertAlign}' = 'Top' then
Result:=tlTop;
if '{#ExitButtonTextVertAlign}' = 'Bottom' then
Result:=tlBottom;
end;

function AMusicButtonLeft:integer ;
begin
#define AMusicButtonLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "MusicButtonLeft", "0")
Result:={#AMusicButtonLeft};
end;

function AMusicButtonTop:integer ;
begin
#define AMusicButtonTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "MusicButtonTop", "0")
Result:={#AMusicButtonTop};
end;

function AMusicButtonWidth:integer ;
begin
#define AMusicButtonWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "MusicButtonWidth", "200")
Result:={#AMusicButtonWidth};
end;

function AMusicButtonHeight:integer ;
begin
#define AMusicButtonHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "MusicButtonHeight", "30")
Result:={#AMusicButtonHeight};
end;

function AMusicButtonTextOffsetX:integer ;
begin
#define AMusicButtonTextOffsetX ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "MusicButtonTextOffsetX", "0")
Result:={#AMusicButtonTextOffsetX};
end;

function AMusicButtonTextOffsetY:integer ;
begin
#define AMusicButtonTextOffsetY ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "MusicButtonTextOffsetY", "0")
Result:={#AMusicButtonTextOffsetY};
end;

function AMusicButtonFontName:String;
begin
#define AMusicButtonFontName ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "MusicButtonFontName", "Segoe UI")
Result:='{#AMusicButtonFontName}';
end;

function AMusicButtonFontSize:integer ;
begin
#define AMusicButtonFontSize ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "MusicButtonFontSize", "13")
Result:={#AMusicButtonFontSize};
end;

function AMusicButtonFontSizeSelected:integer ;
begin
#define AMusicButtonFontSizeSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "MusicButtonFontSizeSelected", "13")
Result:={#AMusicButtonFontSizeSelected};
end;

function AMusicButtonFontSizeClicked:integer ;
begin
#define AMusicButtonFontSizeClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "MusicButtonFontSizeClicked", "13")
Result:={#AMusicButtonFontSizeClicked};
end;

function AMusicButtonFontSizeDisabled:integer ;
begin
#define AMusicButtonFontSizeDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "MusicButtonFontSize", "13")
Result:={#AMusicButtonFontSizeDisabled};
end;

function AMusicButtonFontBold:Boolean;
begin
#define AMusicButtonFontBold ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "MusicButtonFontBold", "0")
Result:={#AMusicButtonFontBold} = 1;
end;

function AMusicButtonFontItalic:Boolean;
begin
#define AMusicButtonFontItalic ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "MusicButtonFontItalic", "0")
Result:={#AMusicButtonFontItalic} = 1;
end;

function AMusicButtonFontUnderline:Boolean;
begin
#define AMusicButtonFontUnderline ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "MusicButtonFontUnderline", "0")
Result:={#AMusicButtonFontUnderline} = 1;
end;

function AMusicButtonFontStrikeOut:Boolean;
begin
#define AMusicButtonFontStrikeOut ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "MusicButtonFontStrikeOut", "0")
Result:={#AMusicButtonFontStrikeOut} = 1;
end;

function AMusicButtonFontUppercase:Boolean;
begin
#define AMusicButtonFontUppercase ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "MusicButtonFontUppercase", "0")
Result:={#AMusicButtonFontUppercase} = 1;
end;

function AMusicButtonFontColor:integer ;
begin
#define AMusicButtonFontColor ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "MusicButtonFontColor", "#FFFFFF")
Result:=StrToInt('{#AMusicButtonFontColor}');
end;

function AMusicButtonFontColorSelected:integer ;
begin
#define AMusicButtonFontColorSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "MusicButtonFontColorSelected", "#FFFFFF")
Result:=StrToInt('{#AMusicButtonFontColorSelected}');
end;

function AMusicButtonFontColorClicked:integer ;
begin
#define AMusicButtonFontColorClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "MusicButtonFontColorClicked", "#FFFFFF")
Result:=StrToInt('{#AMusicButtonFontColorClicked}');
end;

function AMusicButtonFontColorDisabled:integer ;
begin
#define AMusicButtonFontColorDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "MusicButtonFontColorDisabled", "#FFFFFF")
Result:=StrToInt('{#AMusicButtonFontColorDisabled}');
end;

function AMusicButtonTextHorzAlign:TAlignment;
begin
#define AMusicButtonTextHorzAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "MusicButtonTextHorzAlign", "Center")
if '{#AMusicButtonTextHorzAlign}' = 'Right' then
Result:=taRightJustify;
if '{#AMusicButtonTextHorzAlign}' = 'Left' then
Result:=taLeftJustify;
if '{#AMusicButtonTextHorzAlign}' = 'Center' then
Result:=taCenter;
end;

function AMusicButtonTextVertAlign:TTextLayout;
begin
#define AMusicButtonTextVertAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "MusicButtonTextVertAlign", "Center")
if '{#AMusicButtonTextVertAlign}' = 'Center' then
Result:=tlCenter;
if '{#AMusicButtonTextVertAlign}' = 'Top' then
Result:=tlTop;
if '{#AMusicButtonTextVertAlign}' = 'Bottom' then
Result:=tlBottom;
end;

function OpenDiskButtonLeft:integer ;
begin
#define OpenDiskButtonLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "OpenDiskButtonLeft", "0")
Result:={#OpenDiskButtonLeft};
end;

function OpenDiskButtonTop:integer ;
begin
#define OpenDiskButtonTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "OpenDiskButtonTop", "0")
Result:={#OpenDiskButtonTop};
end;

function OpenDiskButtonWidth:integer ;
begin
#define OpenDiskButtonWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "OpenDiskButtonWidth", "200")
Result:={#OpenDiskButtonWidth};
end;

function OpenDiskButtonHeight:integer ;
begin
#define OpenDiskButtonHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "OpenDiskButtonHeight", "30")
Result:={#OpenDiskButtonHeight};
end;

function OpenDiskButtonTextOffsetX:integer ;
begin
#define OpenDiskButtonTextOffsetX ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "OpenDiskButtonTextOffsetX", "0")
Result:={#OpenDiskButtonTextOffsetX};
end;

function OpenDiskButtonTextOffsetY:integer ;
begin
#define OpenDiskButtonTextOffsetY ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "OpenDiskButtonTextOffsetY", "0")
Result:={#OpenDiskButtonTextOffsetY};
end;

function OpenDiskButtonFontName:String;
begin
#define OpenDiskButtonFontName ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "OpenDiskButtonFontName", "Segoe UI")
Result:='{#OpenDiskButtonFontName}';
end;

function OpenDiskButtonFontSize:integer ;
begin
#define OpenDiskButtonFontSize ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "OpenDiskButtonFontSize", "13")
Result:={#OpenDiskButtonFontSize};
end;

function OpenDiskButtonFontSizeSelected:integer ;
begin
#define OpenDiskButtonFontSizeSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "OpenDiskButtonFontSizeSelected", "13")
Result:={#OpenDiskButtonFontSizeSelected};
end;

function OpenDiskButtonFontSizeClicked:integer ;
begin
#define OpenDiskButtonFontSizeClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "OpenDiskButtonFontSizeClicked", "13")
Result:={#OpenDiskButtonFontSizeClicked};
end;

function OpenDiskButtonFontSizeDisabled:integer ;
begin
#define OpenDiskButtonFontSizeDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "OpenDiskButtonFontSize", "13")
Result:={#OpenDiskButtonFontSizeDisabled};
end;

function OpenDiskButtonFontBold:Boolean;
begin
#define OpenDiskButtonFontBold ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "OpenDiskButtonFontBold", "0")
Result:={#OpenDiskButtonFontBold} = 1;
end;

function OpenDiskButtonFontItalic:Boolean;
begin
#define OpenDiskButtonFontItalic ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "OpenDiskButtonFontItalic", "0")
Result:={#OpenDiskButtonFontItalic} = 1;
end;

function OpenDiskButtonFontUnderline:Boolean;
begin
#define OpenDiskButtonFontUnderline ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "OpenDiskButtonFontUnderline", "0")
Result:={#OpenDiskButtonFontUnderline} = 1;
end;

function OpenDiskButtonFontStrikeOut:Boolean;
begin
#define OpenDiskButtonFontStrikeOut ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "OpenDiskButtonFontStrikeOut", "0")
Result:={#OpenDiskButtonFontStrikeOut} = 1;
end;

function OpenDiskButtonFontUppercase:Boolean;
begin
#define OpenDiskButtonFontUppercase ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "OpenDiskButtonFontUppercase", "0")
Result:={#OpenDiskButtonFontUppercase} = 1;
end;

function OpenDiskButtonFontColor:integer ;
begin
#define OpenDiskButtonFontColor ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "OpenDiskButtonFontColor", "#FFFFFF")
Result:=StrToInt('{#OpenDiskButtonFontColor}');
end;

function OpenDiskButtonFontColorSelected:integer ;
begin
#define OpenDiskButtonFontColorSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "OpenDiskButtonFontColorSelected", "#FFFFFF")
Result:=StrToInt('{#OpenDiskButtonFontColorSelected}');
end;

function OpenDiskButtonFontColorClicked:integer ;
begin
#define OpenDiskButtonFontColorClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "OpenDiskButtonFontColorClicked", "#FFFFFF")
Result:=StrToInt('{#OpenDiskButtonFontColorClicked}');
end;

function OpenDiskButtonFontColorDisabled:integer ;
begin
#define OpenDiskButtonFontColorDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "OpenDiskButtonFontColorDisabled", "#FFFFFF")
Result:=StrToInt('{#OpenDiskButtonFontColorDisabled}');
end;

function OpenDiskButtonTextHorzAlign:TAlignment;
begin
#define OpenDiskButtonTextHorzAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "OpenDiskButtonTextHorzAlign", "Center")
if '{#OpenDiskButtonTextHorzAlign}' = 'Right' then
Result:=taRightJustify;
if '{#OpenDiskButtonTextHorzAlign}' = 'Left' then
Result:=taLeftJustify;
if '{#OpenDiskButtonTextHorzAlign}' = 'Center' then
Result:=taCenter;
end;

function OpenDiskButtonTextVertAlign:TTextLayout;
begin
#define OpenDiskButtonTextVertAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "OpenDiskButtonTextVertAlign", "Center")
if '{#OpenDiskButtonTextVertAlign}' = 'Center' then
Result:=tlCenter;
if '{#OpenDiskButtonTextVertAlign}' = 'Top' then
Result:=tlTop;
if '{#OpenDiskButtonTextVertAlign}' = 'Bottom' then
Result:=tlBottom;
end;

function ReadmeButtonLeft:integer ;
begin
#define ReadmeButtonLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ReadmeButtonLeft", "0")
Result:={#ReadmeButtonLeft};
end;

function ReadmeButtonTop:integer ;
begin
#define ReadmeButtonTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ReadmeButtonTop", "0")
Result:={#ReadmeButtonTop};
end;

function ReadmeButtonWidth:integer ;
begin
#define ReadmeButtonWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ReadmeButtonWidth", "200")
Result:={#ReadmeButtonWidth};
end;

function ReadmeButtonHeight:integer ;
begin
#define ReadmeButtonHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ReadmeButtonHeight", "30")
Result:={#ReadmeButtonHeight};
end;

function ReadmeButtonTextOffsetX:integer ;
begin
#define ReadmeButtonTextOffsetX ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ReadmeButtonTextOffsetX", "0")
Result:={#ReadmeButtonTextOffsetX};
end;

function ReadmeButtonTextOffsetY:integer ;
begin
#define ReadmeButtonTextOffsetY ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ReadmeButtonTextOffsetY", "0")
Result:={#ReadmeButtonTextOffsetY};
end;

function ReadmeButtonFontName:String;
begin
#define ReadmeButtonFontName ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ReadmeButtonFontName", "Segoe UI")
Result:='{#ReadmeButtonFontName}';
end;

function ReadmeButtonFontSize:integer ;
begin
#define ReadmeButtonFontSize ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ReadmeButtonFontSize", "13")
Result:={#ReadmeButtonFontSize};
end;

function ReadmeButtonFontSizeSelected:integer ;
begin
#define ReadmeButtonFontSizeSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ReadmeButtonFontSizeSelected", "13")
Result:={#ReadmeButtonFontSizeSelected};
end;

function ReadmeButtonFontSizeClicked:integer ;
begin
#define ReadmeButtonFontSizeClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ReadmeButtonFontSizeClicked", "13")
Result:={#ReadmeButtonFontSizeClicked};
end;

function ReadmeButtonFontSizeDisabled:integer ;
begin
#define ReadmeButtonFontSizeDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ReadmeButtonFontSize", "13")
Result:={#ReadmeButtonFontSizeDisabled};
end;

function ReadmeButtonFontBold:Boolean;
begin
#define ReadmeButtonFontBold ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ReadmeButtonFontBold", "0")
Result:={#ReadmeButtonFontBold} = 1;
end;

function ReadmeButtonFontItalic:Boolean;
begin
#define ReadmeButtonFontItalic ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ReadmeButtonFontItalic", "0")
Result:={#ReadmeButtonFontItalic} = 1;
end;

function ReadmeButtonFontUnderline:Boolean;
begin
#define ReadmeButtonFontUnderline ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ReadmeButtonFontUnderline", "0")
Result:={#ReadmeButtonFontUnderline} = 1;
end;

function ReadmeButtonFontStrikeOut:Boolean;
begin
#define ReadmeButtonFontStrikeOut ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ReadmeButtonFontStrikeOut", "0")
Result:={#ReadmeButtonFontStrikeOut} = 1;
end;

function ReadmeButtonFontUppercase:Boolean;
begin
#define ReadmeButtonFontUppercase ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ReadmeButtonFontUppercase", "0")
Result:={#ReadmeButtonFontUppercase} = 1;
end;

function ReadmeButtonFontColor:integer ;
begin
#define ReadmeButtonFontColor ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ReadmeButtonFontColor", "#FFFFFF")
Result:=StrToInt('{#ReadmeButtonFontColor}');
end;

function ReadmeButtonFontColorSelected:integer ;
begin
#define ReadmeButtonFontColorSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ReadmeButtonFontColorSelected", "#FFFFFF")
Result:=StrToInt('{#ReadmeButtonFontColorSelected}');
end;

function ReadmeButtonFontColorClicked:integer ;
begin
#define ReadmeButtonFontColorClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ReadmeButtonFontColorClicked", "#FFFFFF")
Result:=StrToInt('{#ReadmeButtonFontColorClicked}');
end;

function ReadmeButtonFontColorDisabled:integer ;
begin
#define ReadmeButtonFontColorDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ReadmeButtonFontColorDisabled", "#FFFFFF")
Result:=StrToInt('{#ReadmeButtonFontColorDisabled}');
end;

function ReadmeButtonTextHorzAlign:TAlignment;
begin
#define ReadmeButtonTextHorzAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ReadmeButtonTextHorzAlign", "Center")
if '{#ReadmeButtonTextHorzAlign}' = 'Right' then
Result:=taRightJustify;
if '{#ReadmeButtonTextHorzAlign}' = 'Left' then
Result:=taLeftJustify;
if '{#ReadmeButtonTextHorzAlign}' = 'Center' then
Result:=taCenter;
end;

function ReadmeButtonTextVertAlign:TTextLayout;
begin
#define ReadmeButtonTextVertAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ReadmeButtonTextVertAlign", "Center")
if '{#ReadmeButtonTextVertAlign}' = 'Center' then
Result:=tlCenter;
if '{#ReadmeButtonTextVertAlign}' = 'Top' then
Result:=tlTop;
if '{#ReadmeButtonTextVertAlign}' = 'Bottom' then
Result:=tlBottom;
end;

function ReadmeFile:String ;
begin
Result:=ExpandConstant('{tmp}\Readme.rtf');
end;

function ReadmeFileML:String ;
begin
if FileExists(ExpandConstant('{tmp}\' + LanguageTranslator2(ActiveLanguage) + 'Readme.rtf')) then
Result:=ExpandConstant('{tmp}\' + LanguageTranslator2(ActiveLanguage) + 'Readme.rtf')
else
Result:=ExpandConstant('{tmp}\Readme.rtf');
end;

function ReadmeFileAvai:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\Readme.rtf')) or
FileExists(ExpandConstant('{tmp}\EnglishReadme.rtf')) or
FileExists(ExpandConstant('{tmp}\AlbanianReadme.rtf')) or
FileExists(ExpandConstant('{tmp}\BosnianReadme.rtf')) or
FileExists(ExpandConstant('{tmp}\CzechReadme.rtf')) or
FileExists(ExpandConstant('{tmp}\FrenchReadme.rtf')) or
FileExists(ExpandConstant('{tmp}\GermanReadme.rtf')) or
FileExists(ExpandConstant('{tmp}\HungarianReadme.rtf')) or
FileExists(ExpandConstant('{tmp}\ItalianReadme.rtf')) or
FileExists(ExpandConstant('{tmp}\MalaysianReadme.rtf')) or
FileExists(ExpandConstant('{tmp}\PolishReadme.rtf')) or
FileExists(ExpandConstant('{tmp}\PortugueseReadme.rtf')) or
FileExists(ExpandConstant('{tmp}\RussianReadme.rtf')) or
FileExists(ExpandConstant('{tmp}\SpanishReadme.rtf')) or
FileExists(ExpandConstant('{tmp}\TurkishReadme.rtf')) or
FileExists(ExpandConstant('{tmp}\UkrainianReadme.rtf')) or
FileExists(ExpandConstant('{tmp}\VietnameseReadme.rtf')) then
Result:=True
else
Result:=False;
end;

function ManualButtonLeft:integer ;
begin
#define ManualButtonLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ManualButtonLeft", "0")
Result:={#ManualButtonLeft};
end;

function ManualButtonTop:integer ;
begin
#define ManualButtonTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ManualButtonTop", "0")
Result:={#ManualButtonTop};
end;

function ManualButtonWidth:integer ;
begin
#define ManualButtonWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ManualButtonWidth", "200")
Result:={#ManualButtonWidth};
end;

function ManualButtonHeight:integer ;
begin
#define ManualButtonHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ManualButtonHeight", "30")
Result:={#ManualButtonHeight};
end;

function ManualButtonTextOffsetX:integer ;
begin
#define ManualButtonTextOffsetX ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ManualButtonTextOffsetX", "0")
Result:={#ManualButtonTextOffsetX};
end;

function ManualButtonTextOffsetY:integer ;
begin
#define ManualButtonTextOffsetY ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ManualButtonTextOffsetY", "0")
Result:={#ManualButtonTextOffsetY};
end;

function ManualButtonFontName:String;
begin
#define ManualButtonFontName ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ManualButtonFontName", "Segoe UI")
Result:='{#ManualButtonFontName}';
end;

function ManualButtonFontSize:integer ;
begin
#define ManualButtonFontSize ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ManualButtonFontSize", "13")
Result:={#ManualButtonFontSize};
end;

function ManualButtonFontSizeSelected:integer ;
begin
#define ManualButtonFontSizeSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ManualButtonFontSizeSelected", "13")
Result:={#ManualButtonFontSizeSelected};
end;

function ManualButtonFontSizeClicked:integer ;
begin
#define ManualButtonFontSizeClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ManualButtonFontSizeClicked", "13")
Result:={#ManualButtonFontSizeClicked};
end;

function ManualButtonFontSizeDisabled:integer ;
begin
#define ManualButtonFontSizeDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ManualButtonFontSize", "13")
Result:={#ManualButtonFontSizeDisabled};
end;

function ManualButtonFontBold:Boolean;
begin
#define ManualButtonFontBold ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ManualButtonFontBold", "0")
Result:={#ManualButtonFontBold} = 1;
end;

function ManualButtonFontItalic:Boolean;
begin
#define ManualButtonFontItalic ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ManualButtonFontItalic", "0")
Result:={#ManualButtonFontItalic} = 1;
end;

function ManualButtonFontUnderline:Boolean;
begin
#define ManualButtonFontUnderline ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ManualButtonFontUnderline", "0")
Result:={#ManualButtonFontUnderline} = 1;
end;

function ManualButtonFontStrikeOut:Boolean;
begin
#define ManualButtonFontStrikeOut ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ManualButtonFontStrikeOut", "0")
Result:={#ManualButtonFontStrikeOut} = 1;
end;

function ManualButtonFontUppercase:Boolean;
begin
#define ManualButtonFontUppercase ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ManualButtonFontUppercase", "0")
Result:={#ManualButtonFontUppercase} = 1;
end;

function ManualButtonFontColor:integer ;
begin
#define ManualButtonFontColor ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ManualButtonFontColor", "#FFFFFF")
Result:=StrToInt('{#ManualButtonFontColor}');
end;

function ManualButtonFontColorSelected:integer ;
begin
#define ManualButtonFontColorSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ManualButtonFontColorSelected", "#FFFFFF")
Result:=StrToInt('{#ManualButtonFontColorSelected}');
end;

function ManualButtonFontColorClicked:integer ;
begin
#define ManualButtonFontColorClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ManualButtonFontColorClicked", "#FFFFFF")
Result:=StrToInt('{#ManualButtonFontColorClicked}');
end;

function ManualButtonFontColorDisabled:integer ;
begin
#define ManualButtonFontColorDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ManualButtonFontColorDisabled", "#FFFFFF")
Result:=StrToInt('{#ManualButtonFontColorDisabled}');
end;

function ManualButtonTextHorzAlign:TAlignment;
begin
#define ManualButtonTextHorzAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ManualButtonTextHorzAlign", "Center")
if '{#ManualButtonTextHorzAlign}' = 'Right' then
Result:=taRightJustify;
if '{#ManualButtonTextHorzAlign}' = 'Left' then
Result:=taLeftJustify;
if '{#ManualButtonTextHorzAlign}' = 'Center' then
Result:=taCenter;
end;

function ManualButtonTextVertAlign:TTextLayout;
begin
#define ManualButtonTextVertAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "ManualButtonTextVertAlign", "Center")
if '{#ManualButtonTextVertAlign}' = 'Center' then
Result:=tlCenter;
if '{#ManualButtonTextVertAlign}' = 'Top' then
Result:=tlTop;
if '{#ManualButtonTextVertAlign}' = 'Bottom' then
Result:=tlBottom;
end;

function ManualFile:String ;
begin
Result:=ExpandConstant('{tmp}\Manual.pdf');
end;

function ManualFileML:String ;
begin
if FileExists(ExpandConstant('{tmp}\' + LanguageTranslator2(ActiveLanguage) + 'Manual.pdf')) then
Result:=ExpandConstant('{tmp}\' + LanguageTranslator2(ActiveLanguage) + 'Manual.pdf')
else
Result:=ExpandConstant('{tmp}\Manual.pdf');
end;

function ManualFileAvai:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\Manual.pdf')) or
FileExists(ExpandConstant('{tmp}\EnglishManual.pdf')) or
FileExists(ExpandConstant('{tmp}\AlbanianManual.pdf')) or
FileExists(ExpandConstant('{tmp}\BosnianManual.pdf')) or
FileExists(ExpandConstant('{tmp}\CzechManual.pdf')) or
FileExists(ExpandConstant('{tmp}\FrenchManual.pdf')) or
FileExists(ExpandConstant('{tmp}\GermanManual.pdf')) or
FileExists(ExpandConstant('{tmp}\HungarianManual.pdf')) or
FileExists(ExpandConstant('{tmp}\ItalianManual.pdf')) or
FileExists(ExpandConstant('{tmp}\MalaysianManual.pdf')) or
FileExists(ExpandConstant('{tmp}\PolishManual.pdf')) or
FileExists(ExpandConstant('{tmp}\PortugueseManual.pdf')) or
FileExists(ExpandConstant('{tmp}\RussianManual.pdf')) or
FileExists(ExpandConstant('{tmp}\SpanishManual.pdf')) or
FileExists(ExpandConstant('{tmp}\TurkishManual.pdf')) or
FileExists(ExpandConstant('{tmp}\UkrainianManual.pdf')) or
FileExists(ExpandConstant('{tmp}\VietnameseManual.pdf')) then
Result:=True
else
Result:=False;
end;

function WebButtonLeft:integer ;
begin
#define WebButtonLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "WebButtonLeft", "0")
Result:={#WebButtonLeft};
end;

function WebButtonTop:integer ;
begin
#define WebButtonTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "WebButtonTop", "0")
Result:={#WebButtonTop};
end;

function WebButtonWidth:integer ;
begin
#define WebButtonWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "WebButtonWidth", "200")
Result:={#WebButtonWidth};
end;

function WebButtonHeight:integer ;
begin
#define WebButtonHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "WebButtonHeight", "30")
Result:={#WebButtonHeight};
end;

function WebButtonTextOffsetX:integer ;
begin
#define WebButtonTextOffsetX ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "WebButtonTextOffsetX", "0")
Result:={#WebButtonTextOffsetX};
end;

function WebButtonTextOffsetY:integer ;
begin
#define WebButtonTextOffsetY ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "WebButtonTextOffsetY", "0")
Result:={#WebButtonTextOffsetY};
end;

function WebButtonFontName:String;
begin
#define WebButtonFontName ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "WebButtonFontName", "Segoe UI")
Result:='{#WebButtonFontName}';
end;

function WebButtonFontSize:integer ;
begin
#define WebButtonFontSize ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "WebButtonFontSize", "13")
Result:={#WebButtonFontSize};
end;

function WebButtonFontSizeSelected:integer ;
begin
#define WebButtonFontSizeSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "WebButtonFontSizeSelected", "13")
Result:={#WebButtonFontSizeSelected};
end;

function WebButtonFontSizeClicked:integer ;
begin
#define WebButtonFontSizeClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "WebButtonFontSizeClicked", "13")
Result:={#WebButtonFontSizeClicked};
end;

function WebButtonFontSizeDisabled:integer ;
begin
#define WebButtonFontSizeDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "WebButtonFontSize", "13")
Result:={#WebButtonFontSizeDisabled};
end;

function WebButtonFontBold:Boolean;
begin
#define WebButtonFontBold ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "WebButtonFontBold", "0")
Result:={#WebButtonFontBold} = 1;
end;

function WebButtonFontItalic:Boolean;
begin
#define WebButtonFontItalic ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "WebButtonFontItalic", "0")
Result:={#WebButtonFontItalic} = 1;
end;

function WebButtonFontUnderline:Boolean;
begin
#define WebButtonFontUnderline ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "WebButtonFontUnderline", "0")
Result:={#WebButtonFontUnderline} = 1;
end;

function WebButtonFontStrikeOut:Boolean;
begin
#define WebButtonFontStrikeOut ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "WebButtonFontStrikeOut", "0")
Result:={#WebButtonFontStrikeOut} = 1;
end;

function WebButtonFontUppercase:Boolean;
begin
#define WebButtonFontUppercase ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "WebButtonFontUppercase", "0")
Result:={#WebButtonFontUppercase} = 1;
end;

function WebButtonFontColor:integer ;
begin
#define WebButtonFontColor ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "WebButtonFontColor", "#FFFFFF")
Result:=StrToInt('{#WebButtonFontColor}');
end;

function WebButtonFontColorSelected:integer ;
begin
#define WebButtonFontColorSelected ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "WebButtonFontColorSelected", "#FFFFFF")
Result:=StrToInt('{#WebButtonFontColorSelected}');
end;

function WebButtonFontColorClicked:integer ;
begin
#define WebButtonFontColorClicked ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "WebButtonFontColorClicked", "#FFFFFF")
Result:=StrToInt('{#WebButtonFontColorClicked}');
end;

function WebButtonFontColorDisabled:integer ;
begin
#define WebButtonFontColorDisabled ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "WebButtonFontColorDisabled", "#FFFFFF")
Result:=StrToInt('{#WebButtonFontColorDisabled}');
end;

function WebButtonTextHorzAlign:TAlignment;
begin
#define WebButtonTextHorzAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "WebButtonTextHorzAlign", "Center")
if '{#WebButtonTextHorzAlign}' = 'Right' then
Result:=taRightJustify;
if '{#WebButtonTextHorzAlign}' = 'Left' then
Result:=taLeftJustify;
if '{#WebButtonTextHorzAlign}' = 'Center' then
Result:=taCenter;
end;

function WebButtonTextVertAlign:TTextLayout;
begin
#define WebButtonTextVertAlign ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "WebButtonTextVertAlign", "Center")
if '{#WebButtonTextVertAlign}' = 'Center' then
Result:=tlCenter;
if '{#WebButtonTextVertAlign}' = 'Top' then
Result:=tlTop;
if '{#WebButtonTextVertAlign}' = 'Bottom' then
Result:=tlBottom;
end;

function Website:String ;
begin
#define Website ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "Website", "")
Result:='{#Website}';
end;

function WebsiteML:String ;
begin
#define WebsiteMLEnglish ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "EnglishWebsite", ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "Website", ""))
#define WebsiteMLAlbanian ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "AlbanianWebsite", ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "Website", ""))
#define WebsiteMLBosnian ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "BosnianWebsite", ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "Website", ""))
#define WebsiteMLCzech ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "CzechWebsite", ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "Website", ""))
#define WebsiteMLFrench ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "FrenchWebsite", ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "Website", ""))
#define WebsiteMLGerman ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "GermanWebsite", ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "Website", ""))
#define WebsiteMLHungarian ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "HungarianWebsite", ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "Website", ""))
#define WebsiteMLItalian ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "ItalianWebsite", ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "Website", ""))
#define WebsiteMLMalaysian ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "MalaysianWebsite", ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "Website", ""))
#define WebsiteMLPolish ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "PolishWebsite", ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "Website", ""))
#define WebsiteMLPortuguese ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "PortugueseWebsite", ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "Website", ""))
#define WebsiteMLRussian ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "RussianWebsite", ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "Website", ""))
#define WebsiteMLSpanish ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "SpanishWebsite", ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "Website", ""))
#define WebsiteMLTurkish ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "TurkishWebsite", ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "Website", ""))
#define WebsiteMLUkrainian ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "UkrainianWebsite", ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "Website", ""))
#define WebsiteMLVietnamese ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "VietnameseWebsite", ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "Website", ""))
if LanguageTranslator2(ActiveLanguage) = 'English' then
Result:='{#WebsiteMLEnglish}';
if LanguageTranslator2(ActiveLanguage) = 'Albanian' then
Result:='{#WebsiteMLAlbanian}';
if LanguageTranslator2(ActiveLanguage) = 'Bosnian' then
Result:='{#WebsiteMLBosnian}';
if LanguageTranslator2(ActiveLanguage) = 'Czech' then
Result:='{#WebsiteMLCzech}';
if LanguageTranslator2(ActiveLanguage) = 'French' then
Result:='{#WebsiteMLFrench}';
if LanguageTranslator2(ActiveLanguage) = 'German' then
Result:='{#WebsiteMLGerman}';
if LanguageTranslator2(ActiveLanguage) = 'Hungarian' then
Result:='{#WebsiteMLHungarian}';
if LanguageTranslator2(ActiveLanguage) = 'Italian' then
Result:='{#WebsiteMLItalian}';
if LanguageTranslator2(ActiveLanguage) = 'Malaysian' then
Result:='{#WebsiteMLMalaysian}';
if LanguageTranslator2(ActiveLanguage) = 'Polish' then
Result:='{#WebsiteMLPolish}';
if LanguageTranslator2(ActiveLanguage) = 'Portuguese' then
Result:='{#WebsiteMLPortuguese}';
if LanguageTranslator2(ActiveLanguage) = 'Russian' then
Result:='{#WebsiteMLRussian}';
if LanguageTranslator2(ActiveLanguage) = 'Spanish' then
Result:='{#WebsiteMLSpanish}';
if LanguageTranslator2(ActiveLanguage) = 'Turkish' then
Result:='{#WebsiteMLTurkish}';
if LanguageTranslator2(ActiveLanguage) = 'Ukrainian' then
Result:='{#WebsiteMLUkrainian}';
if LanguageTranslator2(ActiveLanguage) = 'Vietnamese' then
Result:='{#WebsiteMLVietnamese}';
end;

function WebsiteAvai:Boolean;
begin
#define WebsiteAvai ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "Website", "")
#define WebsiteAvaiEnglish ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "EnglishWebsite", "")
#define WebsiteAvaiAlbanian ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "AlbanianWebsite", "")
#define WebsiteAvaiBosnian ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "BosnianWebsite", "")
#define WebsiteAvaiCzech ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "CzechWebsite", "")
#define WebsiteAvaiFrench ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "FrenchWebsite", "")
#define WebsiteAvaiGerman ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "GermanWebsite", "")
#define WebsiteAvaiHungarian ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "HungarianWebsite", "")
#define WebsiteAvaiItalian ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "ItalianWebsite", "")
#define WebsiteAvaiMalaysian ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "MalaysianWebsite", "")
#define WebsiteAvaiPolish ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "PolishWebsite", "")
#define WebsiteAvaiPortuguese ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "PortugueseWebsite", "")
#define WebsiteAvaiRussian ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "RussianWebsite", "")
#define WebsiteAvaiSpanish ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "SpanishWebsite", "")
#define WebsiteAvaiTurkish ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "TurkishWebsite", "")
#define WebsiteAvaiUkrainian ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "UkrainianWebsite", "")
#define WebsiteAvaiVietnamese ReadIni(SourcePath	+ "\Temp\Setup.ini", "SupportSettings", "VietnameseWebsite", "")
if (('{#WebsiteAvai}' <> '') or
('{#WebsiteAvaiEnglish}' <> '') or
('{#WebsiteAvaiAlbanian}' <> '') or
('{#WebsiteAvaiBosnian}' <> '') or
('{#WebsiteAvaiCzech}' <> '') or
('{#WebsiteAvaiFrench}' <> '') or
('{#WebsiteAvaiGerman}' <> '') or
('{#WebsiteAvaiHungarian}' <> '') or
('{#WebsiteAvaiItalian}' <> '') or
('{#WebsiteAvaiMalaysian}' <> '') or
('{#WebsiteAvaiPolish}' <> '') or
('{#WebsiteAvaiPortuguese}' <> '') or
('{#WebsiteAvaiRussian}' <> '') or
('{#WebsiteAvaiSpanish}' <> '') or
('{#WebsiteAvaiTurkish}' <> '') or
('{#WebsiteAvaiUkrainian}' <> '') or
('{#WebsiteAvaiVietnamese}' <> '')) then
Result:=True
else
Result:=False;
end;

function AMusicButton2Left:integer ;
begin
#define AMusicButtonLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "MusicButton2Left", "0")
Result:={#MusicButtonLeft};
end;

function AMusicButton2Top:integer ;
begin
#define AMusicButtonTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "MusicButton2Top", "0")
Result:={#MusicButtonTop};
end;

function AMusicButton2Width:integer ;
begin
#define AMusicButtonWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "MusicButton2Width", "0")
Result:={#MusicButtonWidth};
end;

function AMusicButton2Height:integer ;
begin
#define AMusicButtonHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "MusicButton2Height", "0")
Result:={#MusicButtonHeight};
end;

function ACloseButtonLeft:integer ;
begin
#define ACloseButtonLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "CloseButtonLeft", "0")
Result:={#CloseButtonLeft};
end;

function ACloseButtonTop:integer ;
begin
#define ACloseButtonTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "CloseButtonTop", "0")
Result:={#CloseButtonTop};
end;

function ACloseButtonWidth:integer ;
begin
#define ACloseButtonWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "CloseButtonWidth", "0")
Result:={#CloseButtonWidth};
end;

function ACloseButtonHeight:integer ;
begin
#define ACloseButtonHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "CloseButtonHeight", "0")
Result:={#CloseButtonHeight};
end;

function AMinimizeButtonLeft:integer ;
begin
#define AMinimizeButtonLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "MinimizeButtonLeft", "0")
Result:={#MinimizeButtonLeft};
end;

function AMinimizeButtonTop:integer ;
begin
#define AMinimizeButtonTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "MinimizeButtonTop", "0")
Result:={#MinimizeButtonTop};
end;

function AMinimizeButtonWidth:integer ;
begin
#define AMinimizeButtonWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "MinimizeButtonWidth", "0")
Result:={#MinimizeButtonWidth};
end;

function AMinimizeButtonHeight:integer ;
begin
#define AMinimizeButtonHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "MinimizeButtonHeight", "0")
Result:={#MinimizeButtonHeight};
end;

function ALogoLeft:integer ;
begin
#define ALogoLeft ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "LogoLeft", "0")
Result:={#ALogoLeft};
end;

function ALogoTop:integer ;
begin
#define ALogoTop ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "LogoTop", "0")
Result:={#ALogoTop};
end;

function ALogoWidth:integer ;
begin
#define ALogoWidth ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "LogoWidth", "0")
Result:={#ALogoWidth};
end;

function ALogoHeight:integer ;
begin
#define ALogoHeight ReadIni(SourcePath	+ "\Temp\Setup.ini", "AutorunSettings", "LogoHeight", "0")
Result:={#ALogoHeight};
end;

function AWizardImage_JPG:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\Autorun1.jpg'))
then
Result := True
else
Result := False;
end;

function AWizardImage_PNG:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\Autorun1.png'))
then
Result := True
else
Result := False;
end;

function ADialogWizardImage:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\ADialog.jpg'))
then
Result := True
else
Result := False;
end;

function ADialogWizardBackground:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\ADialogTextBackground.png'))
then
Result := True
else
Result := False;
end;

function ALogoImage:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\ALogo.png'))
then
Result:=True
else
Result:=False
end;

function ASplashAvai:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\ASplash1.png'))
then
Result := True
else
Result := False;
end;

function ACustomFontAvai:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\AFont1.ttf'))
then
Result := True
else
Result := False;
end;

function ACustomButton1:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\ASmallMusicButton.png'))
then
Result := True
else
Result := False;
end;

function ACustomButton2:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\ACloseButton.png'))
then
Result := True
else
Result := False;
end;

function ACustomButton3:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\AMinimizeButton.png'))
then
Result := True
else
Result := False;
end;

procedure AInitiateSplash;
var
i: integer;
begin
i:=0;
if ASplashAvai then
begin
repeat
i:= i + 1;
ShowSplashScreen(AutorunForm.Handle,ExpandConstant('{tmp}\ASplash'+IntToStr(i)+'.png'),SplashTimer1,SplashTimer2,SplashTimer3,0,255,False,$FFFFFF,10);
until FileExists(ExpandConstant('{tmp}\ASplash'+IntToStr(i)+'.png')) = False;
end;
end;

procedure AAddNewFont;
var
i: integer;
begin
i:=0;
if CustomFontAvai then
begin
repeat
i:= i + 1;
AddFontResource(ExpandConstant('{tmp}\AFont'+IntToStr(i)+'.ttf'),FR_PRIVATE,0);
until FileExists(ExpandConstant('{tmp}\AFont'+IntToStr(i)+'.ttf')) = False;
end;
end;

function LLC(Num: Integer):String;
begin
if Num <= GetArrayLength(LaunchTypes) then
begin
if LaunchTypes[Num - 1] = 'Launcher' then
Result :=ExpandConstant('{cm:AutorunMessage2_1}');
if LaunchTypes[Num - 1] = 'Launcher2' then
Result := FmtMessage(ExpandConstant('%1 {cm:AutorunMessage2_1}'), [LaunchNames[Num - 1]]);
if LaunchTypes[Num - 1] = 'Config' then
Result := ExpandConstant('{cm:AutorunMessage2_4}');
if LaunchTypes[Num - 1] = 'Config2' then
Result := FmtMessage(ExpandConstant('{cm:AutorunMessage2_4} %1'), [LaunchNames[Num - 1]]);
if LaunchTypes[Num - 1] = 'Play' then
Result := ExpandConstant('{cm:AutorunMessage2_12}');
if LaunchTypes[Num - 1] = 'Play2' then
Result := FmtMessage(ExpandConstant('{cm:AutorunMessage2_12} %1'), [LaunchNames[Num - 1]]);
if LaunchTypes[Num - 1] = 'Custom' then
Result := LaunchNames[Num - 1];
end;
end;

procedure SetLanguage;
begin
ButtonSetText(LaunchBtn,LLC(1));
ButtonSetText(Launch2Btn,LLC(2));
ButtonSetText(Launch3Btn,LLC(3));
ButtonSetText(Launch4Btn,LLC(4));
ButtonSetText(Launch5Btn,LLC(5));
ButtonSetText(Launch6Btn,LLC(6));
ButtonSetText(Launch7Btn,LLC(7));
ButtonSetText(Launch8Btn,LLC(8));
ButtonSetText(Launch9Btn,LLC(9));
ButtonSetText(Launch10Btn,LLC(10));
if (Installed = True) then
ButtonSetText(InstallBtn,ExpandConstant('{cm:AutorunMessage2_3}'));
if (Update = True) then
ButtonSetText(InstallBtn,ExpandConstant('{cm:AutorunMessage2_11}'));
if (Installed = False) and (Update = False) then
ButtonSetText(InstallBtn,ExpandConstant('{cm:AutorunMessage2_2}'));
ButtonSetText(ExitBtn,ExpandConstant('{cm:AutorunMessage2_5}'));
if MusicPlaying = False then
ButtonSetText(AMusicBtn,ExpandConstant('{cm:AutorunMessage2_6_1}'))
else
ButtonSetText(AMusicBtn,ExpandConstant('{cm:AutorunMessage2_6_2}'));
Music1:=ExpandConstant('{cm:AutorunMessage2_6_1}');
Music2:=ExpandConstant('{cm:AutorunMessage2_6_2}');
ButtonSetText(OpenDiskBtn,ExpandConstant('{cm:AutorunMessage2_7}'));
ButtonSetText(ReadmeBtn,ExpandConstant('{cm:AutorunMessage2_8}'));
ButtonSetText(ManualBtn,ExpandConstant('{cm:AutorunMessage2_9}'));
ButtonSetText(WebBtn,ExpandConstant('{cm:AutorunMessage2_10}'));
AutorunForm.Caption := FmtMessage(ExpandConstant('{cm:AutorunMessage1_1}'), [ApplicationName('')]);
ButtonSetVisibility(ReadmeBtn,ReadmeFileAvai);
ButtonSetVisibility(ManualBtn,ManualFileAvai);
ButtonSetVisibility(WebBtn,WebsiteAvai);
ButtonSetEnabled(ReadmeBtn,FileExists(ReadmeFileML));
ButtonSetEnabled(ManualBtn,FileExists(ManualFileML));
ButtonSetEnabled(WebBtn,WebsiteML <> '');
end;

procedure LaunchBtnClick(Sender: TObject);
begin
#define LaunchBtnClick ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher1Exe", "")
Exec(ConstConv4('{#LaunchBtnClick}'),'', '', SW_SHOW, ewNoWait, ResultCode);
ButtonModal(LaunchBtn);
end;

procedure LaunchBtn2Click(Sender: TObject);
begin
#define LaunchBtn2Click ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher2Exe", "")
Exec(ConstConv4('{#LaunchBtn2Click}'),'', '', SW_SHOW, ewNoWait, ResultCode);
ButtonModal(Launch2Btn);
end;

procedure LaunchBtn3Click(Sender: TObject);
begin
#define LaunchBtn3Click ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher3Exe", "")
Exec(ConstConv4('{#LaunchBtn3Click}'),'', '', SW_SHOW, ewNoWait, ResultCode);
ButtonModal(Launch3Btn);
end;

procedure LaunchBtn4Click(Sender: TObject);
begin
#define LaunchBtn4Click ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher4Exe", "")
Exec(ConstConv4('{#LaunchBtn4Click}'),'', '', SW_SHOW, ewNoWait, ResultCode);
ButtonModal(Launch4Btn);
end;

procedure LaunchBtn5Click(Sender: TObject);
begin
#define LaunchBtn5Click ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher5Exe", "")
Exec(ConstConv4('{#LaunchBtn5Click}'),'', '', SW_SHOW, ewNoWait, ResultCode);
ButtonModal(Launch5Btn);
end;

procedure LaunchBtn6Click(Sender: TObject);
begin
#define LaunchBtn6Click ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher6Exe", "")
Exec(ConstConv4('{#LaunchBtn6Click}'),'', '', SW_SHOW, ewNoWait, ResultCode);
ButtonModal(Launch6Btn);
end;

procedure LaunchBtn7Click(Sender: TObject);
begin
#define LaunchBtn7Click ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher7Exe", "")
Exec(ConstConv4('{#LaunchBtn7Click}'),'', '', SW_SHOW, ewNoWait, ResultCode);
ButtonModal(Launch7Btn);
end;

procedure LaunchBtn8Click(Sender: TObject);
begin
#define LaunchBtn8Click ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher8Exe", "")
Exec(ConstConv4('{#LaunchBtn8Click}'),'', '', SW_SHOW, ewNoWait, ResultCode);
ButtonModal(Launch8Btn);
end;

procedure LaunchBtn9Click(Sender: TObject);
begin
#define LaunchBtn9Click ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher9Exe", "")
Exec(ConstConv4('{#LaunchBtn9Click}'),'', '', SW_SHOW, ewNoWait, ResultCode);
ButtonModal(Launch9Btn);
end;

procedure LaunchBtn10Click(Sender: TObject);
begin
#define LaunchBtn10Click ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher10Exe", "")
Exec(ConstConv4('{#LaunchBtn10Click}'),'', '', SW_SHOW, ewNoWait, ResultCode);
ButtonModal(Launch10Btn);
end;

procedure InstallBtnClick(Sender: TObject);
begin
if Installed and not Update then
begin
Exec(UninstExe,'', '', SW_SHOW, ewNoWait, ResultCode);
InstallBtn.ModalBtn.ModalResult:=mrCancel;
end;
if Installed and Update then
begin
InstallBtn.ModalBtn.ModalResult:=mrOk;
end;
ButtonModal(InstallBtn);
end;

procedure ExitBtnClick(Sender: TObject);
begin
ButtonModal(ExitBtn);
end;

procedure AMusicBtnClick(Sender: TObject);
begin
if MusicPlaying = False then begin
DisplayMode:=MusicMode;
PlayMusic;
MusicPlaying := True;
ButtonSetText(AMusicBtn,Music2);
end else begin
DisplayMode:=0;
StopMusic;
MusicPlaying := False;
ButtonSetText(AMusicBtn,Music1);
end;
end;

procedure OpenDiskBtnClick(Sender: TObject);
begin
ShellExec('', ExpandConstant('{src}'), '', '', SW_SHOW, ewNoWait, ResultCode);
end;

procedure ReadmeBtnClick(Sender: TObject);
begin
ShellExec('open', ReadMeFileML,'', '', SW_SHOW, ewNoWait, ResultCode);
end;

procedure ManualBtnClick(Sender: TObject);
begin
ShellExec('open', ManualFileML,'', '', SW_SHOW, ewNoWait, ResultCode);
end;

procedure WebBtnClick(Sender: TObject);
begin
ShellExec('open',WebsiteML,'','', SW_SHOW, ewNoWait, ResultCode);
end;

procedure ACloseBtnClick(Sender: TObject);
begin
ButtonModal(ACloseBtn);
end;

procedure AMinimizeBtnClick(Sender: TObject);
begin
GetMinimizeAnimation;
SetMinimizeAnimation(true);
SendMessage(AutorunForm.Handle,$112,61472,0);
Application.Minimize;
end;

function Launch1ExecAvai: Boolean;
begin
#define Launch1ExecAvai ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher1Exe", "")
if not FileExists(ConstConv4('{#Launch1ExecAvai}')) then
Result := False
else
Result := True;
end;

function Launch2ExecAvai: Boolean;
begin
#define Launch2ExecAvai ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher2Exe", "")
if not FileExists(ConstConv4('{#Launch2ExecAvai}')) then
Result := False
else
Result := True;
end;

function Launch3ExecAvai: Boolean;
begin
#define Launch3ExecAvai ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher3Exe", "")
if not FileExists(ConstConv4('{#Launch3ExecAvai}')) then
Result := False
else
Result := True;
end;

function Launch4ExecAvai: Boolean;
begin
#define Launch4ExecAvai ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher4Exe", "")
if not FileExists(ConstConv4('{#Launch4ExecAvai}')) then
Result := False
else
Result := True;
end;

function Launch5ExecAvai: Boolean;
begin
#define Launch5ExecAvai ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher5Exe", "")
if not FileExists(ConstConv4('{#Launch5ExecAvai}')) then
Result := False
else
Result := True;
end;

function Launch6ExecAvai: Boolean;
begin
#define Launch6ExecAvai ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher6Exe", "")
if not FileExists(ConstConv4('{#Launch6ExecAvai}')) then
Result := False
else
Result := True;
end;

function Launch7ExecAvai: Boolean;
begin
#define Launch7ExecAvai ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher7Exe", "")
if not FileExists(ConstConv4('{#Launch7ExecAvai}')) then
Result := False
else
Result := True;
end;

function Launch8ExecAvai: Boolean;
begin
#define Launch8ExecAvai ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher8Exe", "")
if not FileExists(ConstConv4('{#Launch8ExecAvai}')) then
Result := False
else
Result := True;
end;

function Launch9ExecAvai: Boolean;
begin
#define Launch9ExecAvai ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher9Exe", "")
if not FileExists(ConstConv4('{#Launch9ExecAvai}')) then
Result := False
else
Result := True;
end;

function Launch10ExecAvai: Boolean;
begin
#define Launch10ExecAvai ReadIni(SourcePath	+ "\Temp\Setup.ini", "LauncherSettings", "Launcher10Exe", "")
if not FileExists(ConstConv4('{#Launch10ExecAvai}')) then
Result := False
else
Result := True;
end;

procedure AUpdateFrame(Sender: TObject);
begin
if AutorunFrame.Showing and (AutorunForm.Showing = False) then
AutorunForm.Show;
end;

function AWFProc(h:hWnd;Msg,wParam,lParam:Longint):Longint;
begin
if Msg=$3 then begin
SetWindowPos(AutorunFrame.Handle,0,AutorunForm.Left,AutorunForm.Top,0,0,$515)
end;
Result:=CallWindowProc(WFOldProc,h,Msg,wParam,lParam);
end;

procedure AFixFrame(Sender: TObject);
begin
AutorunForm.BringToFront;
end;

procedure AChangeBG(Sender: TObject);
var
i, n, x: Integer;
begin
n:=0;
x:=1;
repeat
n:= n + 1;
if ImgGetVisibility(AutorunImage[n - 1]) then
begin
ImgSetVisibility(AutorunImage[n - 1],False);
x:=n;
end;
until n = AWizardImageQuantity;
if x = AWizardImageQuantity then
i:=1
else
i:= x + 1;
ImgSetVisibility(AutorunImage[i - 1],True);
if AWizardImage_PNG then
begin
SetRgn(AutorunForm.Handle,ExpandConstant('{tmp}\Autorun' + IntToStr(i) + '.bmp'), 0, 0,AutorunWidth,AutorunHeight);
with AutorunFrame do
begin
Hide;
CreateFormFromImage(Handle,ExpandConstant('{tmp}\Autorun' + IntToStr(i) + '.png'));
Left:=AutorunForm.Left;
Top:=AutorunForm.Top;
Width:=AutorunForm.ClientWidth;
Height:=AutorunForm.ClientHeight;
SendToBack;
Show;
AutorunForm.BringToFront;
end;
end;
ImgApplyChanges(AutorunForm.Handle);
end;

procedure ACreateBG;
var
i: Integer;
begin
if AWizardImage_PNG then
AutorunForm.BorderStyle:=bsNone
else
AutorunForm.BorderStyle:=bsSingle;
AutorunForm.ClientWidth:=AutorunWidth;
AutorunForm.ClientHeight:=AutorunHeight;
AutorunForm.Center;
SetArrayLength(AutorunImage,AWizardImageQuantity);
for i:= 0 to AWizardImageQuantity - 1 do
begin
if AWizardImage_PNG then
AutorunImage[i]:=ImgLoad(AutorunForm.Handle,ExpandConstant('{tmp}\Autorun' + IntToStr(i + 1) + '.png'),ScaleX(0),ScaleY(0),AutorunForm.ClientWidth,AutorunForm.ClientHeight,True,True)
else
AutorunImage[i]:=ImgLoad(AutorunForm.Handle,ExpandConstant('{tmp}\Autorun' + IntToStr(i + 1) + '.jpg'),ScaleX(0),ScaleY(0),AutorunForm.ClientWidth,AutorunForm.ClientHeight,True,True);
ImgSetVisibility(AutorunImage[i],False);
end;
if AWizardImage_PNG then
begin
AutorunFrame:= TForm.Create(nil);
with AutorunFrame do
begin
BorderStyle:=bsNone;
Left:=AutorunForm.Left;
Top:=AutorunForm.Top;
Width:=AutorunForm.ClientWidth;
Height:=AutorunForm.ClientHeight;
Show();
AutorunForm.BringToFront;
OnActivate:=@AFixFrame;
end;
WFOldProc:=SetWindowLong(AutorunForm.Handle,-4,WndProcCallBack(@AWFProc,4));
end;
ABGChange:= TTimer.Create(AutorunForm);
with ABGChange do
begin
OnTimer:=@AChangeBG;
Interval:=7500;
Enabled:=True;
end;
if WizardImage_PNG then
begin
ASetRgnTimer:= TTimer.Create(AutorunForm);
with ASetRgnTimer do
begin
OnTimer:=@AUpdateFrame;
Interval:=10;
Enabled:=True;
end;
end;
if AWizardImageQuantity = 1 then
ABGChange.Enabled:=False;
i:=Random(AWizardImageQuantity);
ImgSetVisibility(AutorunImage[i],True);
if AWizardImage_PNG then
begin
SetRgn(AutorunForm.Handle,ExpandConstant('{tmp}\Autorun' + IntToStr(i + 1) + '.bmp'), 0, 0,AutorunWidth,AutorunHeight);
with AutorunFrame do
begin
Hide;
CreateFormFromImage(Handle,ExpandConstant('{tmp}\Autorun' + IntToStr(i + 1) + '.png'));
Left:=AutorunForm.Left;
Top:=AutorunForm.Top;
Width:=AutorunForm.ClientWidth;
Height:=AutorunForm.ClientHeight;
SendToBack;
Show;
AutorunForm.BringToFront;
end;
end;
ImgApplyChanges(AutorunForm.Handle);
end;

procedure AFreeBG;
begin
for i:= 0 to AWizardImageQuantity - 1 do
ImgRelease(AutorunImage[i]);
ABGChange.Free;
if WizardImage_PNG then
begin
ASetRgnTimer.Free;
AutorunFrame.Free;
end;
ImgApplyChanges(AutorunForm.Handle);
end;

function ACustomCursor1_1:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\ACursor.cur')) then
Result :=True
else
Result :=False
end;

function ACustomCursor1_2:Boolean;
begin
if FileExists(ExpandConstant('{tmp}\ACursor.ani')) then
Result :=True
else
Result :=False
end;

procedure ACustomCursor;
begin
if ACustomCursor1_1 then begin
ANewCursor:= LoadCursorFromFile(ExpandConstant('{tmp}\ACursor.cur'));
AOldCursor:= SetClassLong(AutorunForm.Handle, GCL_HCURSOR, ANewCursor);
end;
if ACustomCursor1_2 then begin
ANewCursor:= LoadCursorFromFile(ExpandConstant('{tmp}\ACursor.ani'));
AOldCursor:= SetClassLong(AutorunForm.Handle, GCL_HCURSOR, ANewCursor);
end;
end;

var
AMenu: TMenuItem;

procedure AAppOnMessage(var Msg: TMsg; var Handled: Boolean);
var
C1, C2, About: String;
begin
C1:=ExpandConstant('{cm:CreditsMessage2_1}');
C2:=ExpandConstant('{cm:CreditsMessage2_2}');
StringChangeEx(C1,'%1','Installer Creator',True);
StringChangeEx(C2,'%1','Installer Creator',True);
StringChangeEx(C2,'%2','EXOZEN-inc.',True);
About:=C1 + #13 + C2;
if Msg.message = WM_SYSCOMMAND then
if Msg.wParam = AMenu.Handle then
MessageBox(AutorunForm.Handle,About,ApplicationName(''), MB_ICONINFORMATION);
end;

procedure CreateAutorunForm;
var
i: Integer;
MainArea: TLabel;
begin
AutorunForm:= CreateCustomForm();
with AutorunForm do begin
Color:=$252525;
BorderIcons:=[biSystemMenu, biMinimize];
FormStyle:= fsStayOnTop;
BringToFront;
end;
AInitiateSplash;
if AWizardImage_JPG then
begin
counter:=0;
repeat
counter:=counter + 1
until FileExists(ExpandConstant('{tmp}\Autorun'+ IntToStr(counter)+'.jpg')) = False;
AWizardImageQuantity := counter - 1;
end;
if AWizardImage_PNG then
begin
counter:=0;
repeat
counter:=counter + 1
until FileExists(ExpandConstant('{tmp}\Autorun'+ IntToStr(counter)+'.png')) = False;
AWizardImageQuantity := counter - 1;
end;
if AWizardImage_JPG or AWizardImage_PNG then
ACreateBG
else begin
AutorunForm.ClientWidth:=AutorunWidth;
AutorunForm.ClientHeight:=AutorunHeight;
AutorunForm.Center;
end;
AppendMenu(GetSystemMenu(Autorunform.Handle, False), MF_SEPARATOR, 0, '');
AMenu:= TMenuItem.Create(AutorunForm);
AppendMenu(GetSystemMenu(Autorunform.Handle, False), MF_BYPOSITION, AMenu.Handle, SetupMessage(msgAboutSetupMenuItem));
Application.OnMessage:= @AAppOnMessage;
MainArea:= TLabel.Create(AutorunForm);
with MainArea do
begin
Left:= 0;
Top:= 0;
Width:= AutorunWidth;
Height:= AutorunHeight;
AutoSize:= false;
Transparent:= true;
WordWrap:= False;
Parent:= Autorunform;
OnMouseDown:=@AMainAreaMouseDown;
end;
ACustomCursor;
AAddNewFont;
if ALogoImage then
Logo:=ImgLoad(AutorunForm.Handle,ExpandConstant('{tmp}\ALogo.png'),ALogoLeft, ALogoTop, ALogoWidth, ALogoHeight,True,True);
OldMinimizeAnimation:=GetMinimizeAnimation;
SetMinimizeAnimation(False);
LaunchBtn:=AButtonCreate(AutorunForm,LaunchButton1Left,LaunchButton1Top,LaunchButton1Width,LaunchButton1Height,ExpandConstant('{tmp}\ALaunch1Button.png'),ExpandConstant('{tmp}\ALaunch1ButtonSelected.png'),ExpandConstant('{tmp}\ALaunch1ButtonClicked.png'),ExpandConstant('{tmp}\ALaunch1ButtonDisabled.png'),mrCancel);
ButtonSetEvent(LaunchBtn,@LaunchBtnClick);
ButtonSetFont(LaunchBtn,LaunchButton1FontName,LaunchButton1FontSize,LaunchButton1FontSizeSelected,LaunchButton1FontSizeClicked,LaunchButton1FontSizeDisabled);
ButtonSetFontStyle(LaunchBtn,LaunchButton1FontBold,LaunchButton1FontItalic,LaunchButton1FontUnderline,LaunchButton1FontStrikeOut,LaunchButton1FontUppercase);
ButtonSetTextAlignment(LaunchBtn,LaunchButton1TextHorzAlign,LaunchButton1TextVertAlign,LaunchButton1TextOffsetX,LaunchButton1TextOffsetY);
ButtonSetFontColor(LaunchBtn,LaunchButton1FontColor,LaunchButton1FontColorSelected,LaunchButton1FontColorClicked,LaunchButton1FontColorDisabled);
ButtonSetVisibility(LaunchBtn,ApplicationExecutableName('') <> '');
ButtonSetEnabled(LaunchBtn,Installed and Launch1ExecAvai);


Launch2Btn:=AButtonCreate(AutorunForm,LaunchButton2Left,LaunchButton2Top,LaunchButton2Width,LaunchButton2Height,ExpandConstant('{tmp}\ALaunch2Button.png'),ExpandConstant('{tmp}\ALaunch2ButtonSelected.png'),ExpandConstant('{tmp}\ALaunch2ButtonClicked.png'),ExpandConstant('{tmp}\ALaunch2ButtonDisabled.png'),mrCancel);
ButtonSetEvent(Launch2Btn,@LaunchBtn2Click);
ButtonSetFont(Launch2Btn,LaunchButton2FontName,LaunchButton2FontSize,LaunchButton2FontSizeSelected,LaunchButton2FontSizeClicked,LaunchButton2FontSizeDisabled);
ButtonSetFontStyle(Launch2Btn,LaunchButton2FontBold,LaunchButton2FontItalic,LaunchButton2FontUnderline,LaunchButton2FontStrikeOut,LaunchButton2FontUppercase);
ButtonSetTextAlignment(Launch2Btn,LaunchButton2TextHorzAlign,LaunchButton2TextVertAlign,LaunchButton2TextOffsetX,LaunchButton2TextOffsetY);
ButtonSetFontColor(Launch2Btn,LaunchButton2FontColor,LaunchButton2FontColorSelected,LaunchButton2FontColorClicked,LaunchButton2FontColorDisabled);
ButtonSetVisibility(Launch2Btn,ApplicationExecutableName2('') <> '');
ButtonSetEnabled(Launch2Btn,Installed and Launch2ExecAvai);

Launch3Btn:=AButtonCreate(AutorunForm,LaunchButton3Left,LaunchButton3Top,LaunchButton3Width,LaunchButton3Height,ExpandConstant('{tmp}\ALaunch3Button.png'),ExpandConstant('{tmp}\ALaunch3ButtonSelected.png'),ExpandConstant('{tmp}\ALaunch3ButtonClicked.png'),ExpandConstant('{tmp}\ALaunch3ButtonDisabled.png'),mrCancel);
ButtonSetEvent(Launch3Btn,@LaunchBtn3Click);
ButtonSetFont(Launch3Btn,LaunchButton3FontName,LaunchButton3FontSize,LaunchButton3FontSizeSelected,LaunchButton3FontSizeClicked,LaunchButton3FontSizeDisabled);
ButtonSetFontStyle(Launch3Btn,LaunchButton3FontBold,LaunchButton3FontItalic,LaunchButton3FontUnderline,LaunchButton3FontStrikeOut,LaunchButton3FontUppercase);
ButtonSetTextAlignment(Launch3Btn,LaunchButton3TextHorzAlign,LaunchButton3TextVertAlign,LaunchButton3TextOffsetX,LaunchButton3TextOffsetY);
ButtonSetFontColor(Launch3Btn,LaunchButton3FontColor,LaunchButton3FontColorSelected,LaunchButton3FontColorClicked,LaunchButton3FontColorDisabled);
ButtonSetVisibility(Launch3Btn,ApplicationExecutableName3('') <> '');
ButtonSetEnabled(Launch3Btn,Installed and Launch3ExecAvai);

Launch4Btn:=AButtonCreate(AutorunForm,LaunchButton4Left,LaunchButton4Top,LaunchButton4Width,LaunchButton4Height,ExpandConstant('{tmp}\ALaunch4Button.png'),ExpandConstant('{tmp}\ALaunch4ButtonSelected.png'),ExpandConstant('{tmp}\ALaunch4ButtonClicked.png'),ExpandConstant('{tmp}\ALaunch4ButtonDisabled.png'),mrCancel)
ButtonSetEvent(Launch4Btn,@LaunchBtn4Click);
ButtonSetFont(Launch4Btn,LaunchButton4FontName,LaunchButton4FontSize,LaunchButton4FontSizeSelected,LaunchButton4FontSizeClicked,LaunchButton4FontSizeDisabled);
ButtonSetFontStyle(Launch4Btn,LaunchButton4FontBold,LaunchButton4FontItalic,LaunchButton4FontUnderline,LaunchButton4FontStrikeOut,LaunchButton4FontUppercase);
ButtonSetTextAlignment(Launch4Btn,LaunchButton4TextHorzAlign,LaunchButton4TextVertAlign,LaunchButton4TextOffsetX,LaunchButton4TextOffsetY);
ButtonSetFontColor(Launch4Btn,LaunchButton4FontColor,LaunchButton4FontColorSelected,LaunchButton4FontColorClicked,LaunchButton4FontColorDisabled);
ButtonSetVisibility(Launch4Btn,ApplicationExecutableName4('') <> '');
ButtonSetEnabled(Launch4Btn,Installed and Launch4ExecAvai);

Launch5Btn:=AButtonCreate(AutorunForm,LaunchButton5Left,LaunchButton5Top,LaunchButton5Width,LaunchButton5Height,ExpandConstant('{tmp}\ALaunch5Button.png'),ExpandConstant('{tmp}\ALaunch5ButtonSelected.png'),ExpandConstant('{tmp}\ALaunch5ButtonClicked.png'),ExpandConstant('{tmp}\ALaunch5ButtonDisabled.png'),mrCancel)
ButtonSetEvent(Launch5Btn,@LaunchBtn5Click);
ButtonSetFont(Launch5Btn,LaunchButton5FontName,LaunchButton5FontSize,LaunchButton5FontSizeSelected,LaunchButton5FontSizeClicked,LaunchButton5FontSizeDisabled);
ButtonSetFontStyle(Launch5Btn,LaunchButton5FontBold,LaunchButton5FontItalic,LaunchButton5FontUnderline,LaunchButton5FontStrikeOut,LaunchButton5FontUppercase);
ButtonSetTextAlignment(Launch5Btn,LaunchButton5TextHorzAlign,LaunchButton5TextVertAlign,LaunchButton5TextOffsetX,LaunchButton5TextOffsetY);
ButtonSetFontColor(Launch5Btn,LaunchButton5FontColor,LaunchButton5FontColorSelected,LaunchButton5FontColorClicked,LaunchButton5FontColorDisabled);
ButtonSetVisibility(Launch5Btn,ApplicationExecutableName5('') <> '');
ButtonSetEnabled(Launch5Btn,Installed and Launch5ExecAvai);

Launch6Btn:=AButtonCreate(AutorunForm,LaunchButton6Left,LaunchButton6Top,LaunchButton6Width,LaunchButton6Height,ExpandConstant('{tmp}\ALaunch6Button.png'),ExpandConstant('{tmp}\ALaunch6ButtonSelected.png'),ExpandConstant('{tmp}\ALaunch6ButtonClicked.png'),ExpandConstant('{tmp}\ALaunch6ButtonDisabled.png'),mrCancel)
ButtonSetEvent(Launch6Btn,@LaunchBtn6Click);
ButtonSetFont(Launch6Btn,LaunchButton6FontName,LaunchButton6FontSize,LaunchButton6FontSizeSelected,LaunchButton6FontSizeClicked,LaunchButton6FontSizeDisabled);
ButtonSetFontStyle(Launch6Btn,LaunchButton6FontBold,LaunchButton6FontItalic,LaunchButton6FontUnderline,LaunchButton6FontStrikeOut,LaunchButton6FontUppercase);
ButtonSetTextAlignment(Launch6Btn,LaunchButton6TextHorzAlign,LaunchButton6TextVertAlign,LaunchButton6TextOffsetX,LaunchButton6TextOffsetY);
ButtonSetFontColor(Launch6Btn,LaunchButton6FontColor,LaunchButton6FontColorSelected,LaunchButton6FontColorClicked,LaunchButton6FontColorDisabled);
ButtonSetVisibility(Launch6Btn,ApplicationExecutableName6('') <> '');
ButtonSetEnabled(Launch6Btn,Installed and Launch6ExecAvai);

Launch7Btn:=AButtonCreate(AutorunForm,LaunchButton7Left,LaunchButton7Top,LaunchButton7Width,LaunchButton7Height,ExpandConstant('{tmp}\ALaunch7Button.png'),ExpandConstant('{tmp}\ALaunch7ButtonSelected.png'),ExpandConstant('{tmp}\ALaunch7ButtonClicked.png'),ExpandConstant('{tmp}\ALaunch7ButtonDisabled.png'),mrCancel)
ButtonSetEvent(Launch7Btn,@LaunchBtn7Click);
ButtonSetFont(Launch7Btn,LaunchButton7FontName,LaunchButton7FontSize,LaunchButton7FontSizeSelected,LaunchButton7FontSizeClicked,LaunchButton7FontSizeDisabled);
ButtonSetFontStyle(Launch7Btn,LaunchButton7FontBold,LaunchButton7FontItalic,LaunchButton7FontUnderline,LaunchButton7FontStrikeOut,LaunchButton7FontUppercase);
ButtonSetTextAlignment(Launch7Btn,LaunchButton7TextHorzAlign,LaunchButton7TextVertAlign,LaunchButton7TextOffsetX,LaunchButton7TextOffsetY);
ButtonSetFontColor(Launch7Btn,LaunchButton7FontColor,LaunchButton7FontColorSelected,LaunchButton7FontColorClicked,LaunchButton7FontColorDisabled);
ButtonSetVisibility(Launch7Btn,ApplicationExecutableName7('') <> '');
ButtonSetEnabled(Launch7Btn,Installed and Launch7ExecAvai);

Launch8Btn:=AButtonCreate(AutorunForm,LaunchButton8Left,LaunchButton8Top,LaunchButton8Width,LaunchButton8Height,ExpandConstant('{tmp}\ALaunch8Button.png'),ExpandConstant('{tmp}\ALaunch8ButtonSelected.png'),ExpandConstant('{tmp}\ALaunch8ButtonClicked.png'),ExpandConstant('{tmp}\ALaunch8ButtonDisabled.png'),mrCancel)
ButtonSetEvent(Launch8Btn,@LaunchBtn8Click);
ButtonSetFont(Launch8Btn,LaunchButton8FontName,LaunchButton8FontSize,LaunchButton8FontSizeSelected,LaunchButton8FontSizeClicked,LaunchButton8FontSizeDisabled);
ButtonSetFontStyle(Launch8Btn,LaunchButton8FontBold,LaunchButton8FontItalic,LaunchButton8FontUnderline,LaunchButton8FontStrikeOut,LaunchButton8FontUppercase);
ButtonSetTextAlignment(Launch8Btn,LaunchButton8TextHorzAlign,LaunchButton8TextVertAlign,LaunchButton8TextOffsetX,LaunchButton8TextOffsetY);
ButtonSetFontColor(Launch8Btn,LaunchButton8FontColor,LaunchButton8FontColorSelected,LaunchButton8FontColorClicked,LaunchButton8FontColorDisabled);
ButtonSetVisibility(Launch8Btn,ApplicationExecutableName8('') <> '');
ButtonSetEnabled(Launch8Btn,Installed and Launch8ExecAvai);

Launch9Btn:=AButtonCreate(AutorunForm,LaunchButton9Left,LaunchButton9Top,LaunchButton9Width,LaunchButton9Height,ExpandConstant('{tmp}\ALaunch9Button.png'),ExpandConstant('{tmp}\ALaunch9ButtonSelected.png'),ExpandConstant('{tmp}\ALaunch9ButtonClicked.png'),ExpandConstant('{tmp}\ALaunch9ButtonDisabled.png'),mrCancel)
ButtonSetEvent(Launch9Btn,@LaunchBtn9Click);
ButtonSetFont(Launch9Btn,LaunchButton9FontName,LaunchButton9FontSize,LaunchButton9FontSizeSelected,LaunchButton9FontSizeClicked,LaunchButton9FontSizeDisabled);
ButtonSetFontStyle(Launch9Btn,LaunchButton9FontBold,LaunchButton9FontItalic,LaunchButton9FontUnderline,LaunchButton9FontStrikeOut,LaunchButton9FontUppercase);
ButtonSetTextAlignment(Launch9Btn,LaunchButton9TextHorzAlign,LaunchButton9TextVertAlign,LaunchButton9TextOffsetX,LaunchButton9TextOffsetY);
ButtonSetFontColor(Launch9Btn,LaunchButton9FontColor,LaunchButton9FontColorSelected,LaunchButton9FontColorClicked,LaunchButton9FontColorDisabled);
ButtonSetVisibility(Launch9Btn,ApplicationExecutableName9('') <> '');
ButtonSetEnabled(Launch9Btn,Installed and Launch9ExecAvai);

Launch10Btn:=AButtonCreate(AutorunForm,LaunchButton10Left,LaunchButton10Top,LaunchButton10Width,LaunchButton10Height,ExpandConstant('{tmp}\ALaunch10Button.png'),ExpandConstant('{tmp}\ALaunch10ButtonSelected.png'),ExpandConstant('{tmp}\ALaunch10ButtonClicked.png'),ExpandConstant('{tmp}\ALaunch10ButtonDisabled.png'),mrCancel)
ButtonSetEvent(Launch10Btn,@LaunchBtn10Click);
ButtonSetFont(Launch10Btn,LaunchButton10FontName,LaunchButton10FontSize,LaunchButton10FontSizeSelected,LaunchButton10FontSizeClicked,LaunchButton10FontSizeDisabled);
ButtonSetFontStyle(Launch10Btn,LaunchButton10FontBold,LaunchButton10FontItalic,LaunchButton10FontUnderline,LaunchButton10FontStrikeOut,LaunchButton10FontUppercase);
ButtonSetTextAlignment(Launch10Btn,LaunchButton10TextHorzAlign,LaunchButton10TextVertAlign,LaunchButton10TextOffsetX,LaunchButton10TextOffsetY);
ButtonSetFontColor(Launch10Btn,LaunchButton10FontColor,LaunchButton10FontColorSelected,LaunchButton10FontColorClicked,LaunchButton10FontColorDisabled);
ButtonSetVisibility(Launch10Btn,ApplicationExecutableName10('') <> '');
ButtonSetEnabled(Launch10Btn,Installed and Launch10ExecAvai);

InstallBtn:=AButtonCreate(AutorunForm,InstallButtonLeft,InstallButtonTop,InstallButtonWidth,InstallButtonHeight,ExpandConstant('{tmp}\AInstallButton.png'),ExpandConstant('{tmp}\AInstallButtonSelected.png'),ExpandConstant('{tmp}\AInstallButtonClicked.png'),ExpandConstant('{tmp}\AInstallButtonDisabled.png'),mrOk)
ButtonSetEvent(InstallBtn,@InstallBtnClick);
ButtonSetFont(InstallBtn,InstallButtonFontName,InstallButtonFontSize,InstallButtonFontSizeSelected,InstallButtonFontSizeClicked,InstallButtonFontSizeDisabled);
ButtonSetTextAlignment(InstallBtn,InstallButtonTextHorzAlign,InstallButtonTextVertAlign,InstallButtonTextOffsetX,InstallButtonTextOffsetY);
ButtonSetFontStyle(InstallBtn,InstallButtonFontBold,InstallButtonFontItalic,InstallButtonFontUnderline,InstallButtonFontStrikeOut,InstallButtonFontUppercase);
ButtonSetFontColor(InstallBtn,InstallButtonFontColor,InstallButtonFontColorSelected,InstallButtonFontColorClicked,InstallButtonFontColorDisabled);

ExitBtn:=AButtonCreate(AutorunForm,ExitButtonLeft,ExitButtonTop,ExitButtonWidth,ExitButtonHeight,ExpandConstant('{tmp}\AExitButton.png'),ExpandConstant('{tmp}\AExitButtonSelected.png'),ExpandConstant('{tmp}\AExitButtonClicked.png'),ExpandConstant('{tmp}\AExitButtonDisabled.png'),mrCancel)
ButtonSetEvent(ExitBtn,@ExitBtnClick);
ButtonSetFont(ExitBtn,ExitButtonFontName,ExitButtonFontSize,ExitButtonFontSizeSelected,ExitButtonFontSizeClicked,ExitButtonFontSizeDisabled);
ButtonSetFontStyle(ExitBtn,ExitButtonFontBold,ExitButtonFontItalic,ExitButtonFontUnderline,ExitButtonFontStrikeOut,ExitButtonFontUppercase);
ButtonSetTextAlignment(ExitBtn,ExitButtonTextHorzAlign,ExitButtonTextVertAlign,ExitButtonTextOffsetX,ExitButtonTextOffsetY);
ButtonSetFontColor(ExitBtn,ExitButtonFontColor,ExitButtonFontColorSelected,ExitButtonFontColorClicked,ExitButtonFontColorDisabled);

OpenDiskBtn:=AButtonCreate(AutorunForm,OpenDiskButtonLeft,OpenDiskButtonTop,OpenDiskButtonWidth,OpenDiskButtonHeight,ExpandConstant('{tmp}\AOpenDiskButton.png'),ExpandConstant('{tmp}\AOpenDiskButtonSelected.png'),ExpandConstant('{tmp}\AOpenDiskButtonClicked.png'),ExpandConstant('{tmp}\AOpenDiskButtonDisabled.png'),mrCancel)
ButtonSetEvent(OpenDiskBtn,@OpenDiskBtnClick);
ButtonSetFont(OpenDiskBtn,OpenDiskButtonFontName,OpenDiskButtonFontSize,OpenDiskButtonFontSizeSelected,OpenDiskButtonFontSizeClicked,OpenDiskButtonFontSizeDisabled);
ButtonSetFontStyle(OpenDiskBtn,OpenDiskButtonFontBold,OpenDiskButtonFontItalic,OpenDiskButtonFontUnderline,OpenDiskButtonFontStrikeOut,OpenDiskButtonFontUppercase);
ButtonSetTextAlignment(OpenDiskBtn,OpenDiskButtonTextHorzAlign,OpenDiskButtonTextVertAlign,OpenDiskButtonTextOffsetX,OpenDiskButtonTextOffsetY);
ButtonSetFontColor(OpenDiskBtn,OpenDiskButtonFontColor,OpenDiskButtonFontColorSelected,OpenDiskButtonFontColorClicked,OpenDiskButtonFontColorDisabled);

AMusicBtn:=AButtonCreate(AutorunForm,AMusicButtonLeft,AMusicButtonTop,AMusicButtonWidth,AMusicButtonHeight,ExpandConstant('{tmp}\AMusicButton.png'),ExpandConstant('{tmp}\AMusicButtonSelected.png'),ExpandConstant('{tmp}\AMusicButtonClicked.png'),ExpandConstant('{tmp}\AMusicButtonDisabled.png'),mrNone)
ButtonSetEvent(AMusicBtn,@AMusicBtnClick);
ButtonSetFont(AMusicBtn,AMusicButtonFontName,AMusicButtonFontSize,AMusicButtonFontSizeSelected,AMusicButtonFontSizeClicked,AMusicButtonFontSizeDisabled);
ButtonSetFontStyle(AMusicBtn,AMusicButtonFontBold,AMusicButtonFontItalic,AMusicButtonFontUnderline,AMusicButtonFontStrikeOut,AMusicButtonFontUppercase);
ButtonSetTextAlignment(AMusicBtn,AMusicButtonTextHorzAlign,AMusicButtonTextVertAlign,AMusicButtonTextOffsetX,AMusicButtonTextOffsetY);
ButtonSetFontColor(AMusicBtn,AMusicButtonFontColor,AMusicButtonFontColorSelected,AMusicButtonFontColorClicked,AMusicButtonFontColorDisabled);
ButtonSetVisibility(AMusicBtn,MusicEnabled);

ReadmeBtn:=AButtonCreate(AutorunForm,ReadmeButtonLeft,ReadmeButtonTop,ReadmeButtonWidth,ReadmeButtonHeight,ExpandConstant('{tmp}\AReadmeButton.png'),ExpandConstant('{tmp}\AReadmeButtonSelected.png'),ExpandConstant('{tmp}\AReadmeButtonClicked.png'),ExpandConstant('{tmp}\AReadmeButtonDisabled.png'),mrNone)
ButtonSetEvent(ReadmeBtn,@ReadmeBtnClick);
ButtonSetFont(ReadmeBtn,ReadmeButtonFontName,ReadmeButtonFontSize,ReadmeButtonFontSizeSelected,ReadmeButtonFontSizeClicked,ReadmeButtonFontSizeDisabled);
ButtonSetFontStyle(ReadmeBtn,ReadmeButtonFontBold,ReadmeButtonFontItalic,ReadmeButtonFontUnderline,ReadmeButtonFontStrikeOut,ReadmeButtonFontUppercase);
ButtonSetTextAlignment(ReadMeBtn,ReadMeButtonTextHorzAlign,ReadMeButtonTextVertAlign,ReadMeButtonTextOffsetX,ReadMeButtonTextOffsetY);
ButtonSetFontColor(ReadmeBtn,ReadmeButtonFontColor,ReadmeButtonFontColorSelected,ReadmeButtonFontColorClicked,ReadmeButtonFontColorDisabled);

ManualBtn:=AButtonCreate(AutorunForm,ManualButtonLeft,ManualButtonTop,ManualButtonWidth,ManualButtonHeight,ExpandConstant('{tmp}\AManualButton.png'),ExpandConstant('{tmp}\AManualButtonSelected.png'),ExpandConstant('{tmp}\AManualButtonClicked.png'),ExpandConstant('{tmp}\AManualButtonDisabled.png'),mrNone)
ButtonSetEvent(ManualBtn,@ManualBtnClick);
ButtonSetFont(ManualBtn,ManualButtonFontName,ManualButtonFontSize,ManualButtonFontSizeSelected,ManualButtonFontSizeClicked,ManualButtonFontSizeDisabled);
ButtonSetFontStyle(ManualBtn,ManualButtonFontBold,ManualButtonFontItalic,ManualButtonFontUnderline,ManualButtonFontStrikeOut,ManualButtonFontUppercase);
ButtonSetTextAlignment(ManualBtn,ManualButtonTextHorzAlign,ManualButtonTextVertAlign,ManualButtonTextOffsetX,ManualButtonTextOffsetY);
ButtonSetFontColor(ManualBtn,ManualButtonFontColor,ManualButtonFontColorSelected,ManualButtonFontColorClicked,ManualButtonFontColorDisabled);

WebBtn:=AButtonCreate(AutorunForm,WebButtonLeft,WebButtonTop,WebButtonWidth,WebButtonHeight,ExpandConstant('{tmp}\AWebButton.png'),ExpandConstant('{tmp}\AWebButtonSelected.png'),ExpandConstant('{tmp}\AWebButtonClicked.png'),ExpandConstant('{tmp}\AWebButtonDisabled.png'),mrNone)
ButtonSetEvent(WebBtn,@WebBtnClick);
ButtonSetFont(WebBtn,WebButtonFontName,WebButtonFontSize,WebButtonFontSizeSelected,WebButtonFontSizeClicked,WebButtonFontSizeDisabled);
ButtonSetFontStyle(WebBtn,WebButtonFontBold,WebButtonFontItalic,WebButtonFontUnderline,WebButtonFontStrikeOut,WebButtonFontUppercase);
ButtonSetTextAlignment(WebBtn,WebButtonTextHorzAlign,WebButtonTextVertAlign,WebButtonTextOffsetX,WebButtonTextOffsetY);
ButtonSetFontColor(WebBtn,WebButtonFontColor,WebButtonFontColorSelected,WebButtonFontColorClicked,WebButtonFontColorDisabled);

AMusicBtn2:=AButtonCreate(AutorunForm,AMusicButton2Left,AMusicButton2Top,AMusicButton2Width,AMusicButton2Height,ExpandConstant('{tmp}\ASmallMusicButton.png'),ExpandConstant('{tmp}\ASmallMusicButtonSelected.png'),ExpandConstant('{tmp}\ASmallMusicButtonClicked.png'),ExpandConstant('{tmp}\ASmallMusicButtonDisabled.png'),mrNone)
ButtonSetVisibility(AMusicBtn2,FileExists(ExpandConstant('{tmp}\ASmallMusicButton.png')) and AWizardImage_PNG)
ButtonSetText(AMusicBtn2,'');
ButtonSetEvent(AMusicBtn2,@AMusicBtnClick);

AMinimizeBtn:=AButtonCreate(AutorunForm,AMinimizeButtonLeft,AMinimizeButtonTop,AMinimizeButtonWidth,AMinimizeButtonHeight,ExpandConstant('{tmp}\AMinimizeButton.png'),ExpandConstant('{tmp}\AMinimizeButtonSelected.png'),ExpandConstant('{tmp}\AMinimizeButtonClicked.png'),ExpandConstant('{tmp}\AMinimizeButtonDisabled.png'),mrNone)
ButtonSetVisibility(AMinimizeBtn,FileExists(ExpandConstant('{tmp}\AMinimizeButton.png')) and AWizardImage_PNG)
ButtonSetEnabled(AMinimizeBtn,False);
AMinimizeBtn.StandardBtn.Caption:='';
ButtonSetEvent(AMinimizeBtn,@AMinimizeBtnClick);

ACloseBtn:=AButtonCreate(AutorunForm,ACloseButtonLeft,ACloseButtonTop,ACloseButtonWidth,ACloseButtonHeight,ExpandConstant('{tmp}\ACloseButton.png'),ExpandConstant('{tmp}\ACloseButtonSelected.png'),ExpandConstant('{tmp}\ACloseButtonClicked.png'),ExpandConstant('{tmp}\ACloseButtonDisabled.png'),mrCancel)
ButtonSetVisibility(ACloseBtn,FileExists(ExpandConstant('{tmp}\ACloseButton.png')) and AWizardImage_PNG)
ACloseBtn.StandardBtn.Caption:='';
ButtonSetEvent(ACloseBtn,@ACloseBtnClick);
ImgApplyChanges(AutorunForm.Handle);
end;

procedure DeinitializeAutorunForm;forward;

function InitializeAutorunForm:Integer;
begin
CreateAutorunForm;
SetLanguage;
AButtonAnimateTimer:=TTimer.Create(AutorunForm);
with AButtonAnimateTimer do begin
OnTimer:=@AButtonTimer;
Interval:=10;
Enabled:=True;
end;
Result:=AutorunForm.ShowModal;
DeinitializeAutorunForm;
end;

procedure DeinitializeAutorunForm;
begin
AButtonAnimateTimer.Enabled:=False;
if AWizardImage_JPG or AWizardImage_PNG then
AFreeBG;
AutorunForm.Free;
i:= 0;
repeat
i:= i + 1;
RemoveFontResource(ExpandConstant('{tmp}\AFont'+IntToStr(i)+'.ttf'),FR_PRIVATE,0);
until FileExists(ExpandConstant('{tmp}\AFont'+IntToStr(i)+'.ttf')) = False;
end;

procedure LoadTotalCompSize;
begin
TotalComponentSizes := 0;
#ifdef Component
for x:=0 to GetArrayLength(SelectComponentCheck1) - 1 do
begin
TotalComponentSizes := TotalComponentSizes + Component[x].Size;
end;
#endif
end;

function DecodeSerialStr(Str: String): TSerialCodes;
var
tmp, s, dec: string;
begin
dec:='-';
tmp:= str + dec;
s:= Copy(tmp, 1, Pos(dec, tmp)-1)
Delete(tmp, 1, Pos(dec, tmp));
if (s <> '') then
Result.S1:= s;
s:= Copy(tmp, 1, Pos(dec, tmp)-1)
Delete(tmp, 1, Pos(dec, tmp));
if (s <> '') then
Result.S2:= s;
s:= Copy(tmp, 1, Pos(dec, tmp)-1)
Delete(tmp, 1, Pos(dec, tmp));
if (s <> '') then
Result.S3:= s;
s:= Copy(tmp, 1, Pos(dec, tmp)-1)
Delete(tmp, 1, Pos(dec, tmp));
if (s <> '') then
Result.S4:= s;
s:= Copy(tmp, 1, Pos(dec, tmp)-1)
Delete(tmp, 1, Pos(dec, tmp));
if (s <> '') then
Result.S5:= s;
end;

function DecVersStr(Str: String): TVers;
var
tmp, s, dec: string;
begin
dec:='.';
tmp:= str + dec;
s:= Copy(tmp, 1, Pos(dec, tmp)-1)
Delete(tmp, 1, Pos(dec, tmp));
if (s <> '') then
Result.V1:= IntToStr(s);
s:= Copy(tmp, 1, Pos(dec, tmp)-1)
Delete(tmp, 1, Pos(dec, tmp));
if (s <> '') then
Result.V2:= IntToStr(s);
s:= Copy(tmp, 1, Pos(dec, tmp)-1)
Delete(tmp, 1, Pos(dec, tmp));
if (s <> '') then
Result.V3:= IntToStr(s);
s:= Copy(tmp, 1, Pos(dec, tmp)-1)
Delete(tmp, 1, Pos(dec, tmp));
if (s <> '') then
Result.V4:= IntToStr(s);
end;

function InitializeSetup: Boolean;
var
VideoDiff: Extended;
begin
#ifdef UnArc_Protect
ExtractTemporaryFile('unarc.dll');
#endif
#ifdef UnArc_None
ExtractTemporaryFile('unarc.dll');
#endif
InfoAfter:=False;
SplitPct:=0;
#ifdef SerialCode
#sub SerialCodes1
SetArrayLength(SerialCodes,{#i});
#endsub
#if ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "Protection", "Serial1", "") != ""
#for {i = 1; ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "Protection", StringChange("SerialInt","Int", Str(i)), "") !=""; i++} SerialCodes1
#endif
#sub SerialCodes2
#define SerialCodeValue ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "Protection", "Serial" + Str(i), "")
SerialCodes[{#i} - 1]:=DecodeSerialStr('{#SerialCodeValue}');
#endsub
#if ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "Protection", "Serial1", "") != ""
#for {i = 1; ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "Protection", StringChange("SerialInt","Int", Str(i)), "") !=""; i++} SerialCodes2
#endif
#endif

#ifdef Task
#sub Tasks1
SetArrayLength(Task,{#i});
SetArrayLength(SelectTaskLabel,{#i});
SetArrayLength(SelectTaskCheck1,{#i});
#endsub
#if ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "TaskSettings", "Task1Name", "") != ""
#for {i = 1; ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "TaskSettings", StringChange("TaskIntName","Int", Str(i)), "") !=""; i++} Tasks1
#endif
#sub Tasks2
#define TaskName ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "TaskSettings", "Task" + Str(i) + "Name", "")
#define TaskExec ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "TaskSettings", "Task" + Str(i) + "Command", "")
#define TaskComd ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "TaskSettings", "Task" + Str(i) + "Parameter", "")
#define TaskExec64 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "TaskSettings", "Task" + Str(i) + "Command64", "")
#define TaskComd64 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "TaskSettings", "Task" + Str(i) + "Parameter64", "")
#define TaskDpce ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "TaskSettings", "Task" + Str(i) + "Dependence", "")
Task[{#i} - 1].Name:='{#TaskName}';
Task[{#i} - 1].Execute:='{#TaskExec}';
Task[{#i} - 1].Command:='{#TaskComd}';
Task[{#i} - 1].Execute64:='{#TaskExec64}';
Task[{#i} - 1].Command64:='{#TaskComd64}';
#if ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "TaskSettings", "Task" + Str(i) + "Dependence", "") != ""
Task[{#i} - 1].Dependence:={#TaskDpce};
#endif
#endsub
#if ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "TaskSettings", "Task1Name", "") != ""
#for {i = 1; ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "TaskSettings", StringChange("TaskIntName","Int", Str(i)), "") !=""; i++} Tasks2
#endif
#endif

#ifdef Component
#sub Components1
SetArrayLength(Component,{#i});
SetArrayLength(SelectComponentLabel,{#i});
SetArrayLength(SelectComponentCheck1,{#i});
#endsub
#if ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "ComponentSettings", "Component1Name", "") != ""
#for {i = 1; ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "ComponentSettings", StringChange("ComponentIntName","Int", Str(i)), "") !=""; i++} Components1
#endif
#sub Components2
#define ComponentName ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "ComponentSettings", "Component" + Str(i) + "Name", "")
#define ComponentSize ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "ComponentSettings", "Component" + Str(i) + "Size", "0")
#define ComponentDpce ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "ComponentSettings", "Component" + Str(i) + "Dependence", "")
Component[{#i} - 1].Name:='{#ComponentName}';
Component[{#i} - 1].Size:={#ComponentSize};
#if ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "ComponentSettings", "Component" + Str(i) + "Dependence", "") != ""
Component[{#i} - 1].Dependence:={#ComponentDpce};
#endif
#endsub
#if ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "ComponentSettings", "Component1Name", "") != ""
#for {i = 1; ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "ComponentSettings", StringChange("ComponentIntName","Int", Str(i)), "") !=""; i++} Components2
#endif
#endif


#sub LaunchNames1
SetArrayLength(LaunchNames,{#i});
SetArrayLength(LaunchTypes,{#i});
SetArrayLength(LaunchBinaries,{#i});
SetArrayLength(GUID,{#i});
#endsub
#if ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher1Name", "") != ""
#for {i = 1; ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", StringChange("LauncherIntName","Int", Str(i)), "") !=""; i++} LaunchNames1
#endif
#sub LaunchNames2
#define LaunchNames ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher" + Str(i) + "Name", "")
#define LaunchTypes ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher" + Str(i) + "Type", "CUSTOM")
#define LaunchBinaries ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher" + Str(i) + "Binary", "")
LaunchNames[{#i} - 1]:='{#LaunchNames}';
LaunchTypes[{#i} - 1]:='{#LaunchTypes}';
LaunchBinaries[{#i} - 1]:='{#LaunchBinaries}';
#endsub
#if ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher1Name", "") != ""
#for {i = 1; ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", StringChange("LauncherIntName","Int", Str(i)), "") !=""; i++} LaunchNames2
#endif

ExtractTemporaryFile('Blank.png');
#ifexist "Temp\Licenses\License.rtf"
ExtractTemporaryFile('License.rtf');
#endif
#ifexist "Temp\Licenses\InfoBefore.rtf"
ExtractTemporaryFile('InfoBefore.rtf');
#endif
#ifexist "Temp\Licenses\InfoAfter.rtf"
ExtractTemporaryFile('InfoAfter.rtf');
#endif
#ifexist "Temp\Licenses\Readme.rtf"
ExtractTemporaryFile('Readme.rtf');
#endif
#ifexist "Temp\Licenses\Manual.pdf"
ExtractTemporaryFile('Manual.pdf');
#endif
#ifexist "Temp\Licenses\EnglishLicense.rtf"
ExtractTemporaryFile('EnglishLicense.rtf');
#endif
#ifexist "Temp\Licenses\EnglishInfoBefore.rtf"
ExtractTemporaryFile('EnglishInfoBefore.rtf');
#endif
#ifexist "Temp\Licenses\EnglishInfoAfter.rtf"
ExtractTemporaryFile('EnglishInfoAfter.rtf');
#endif
#ifexist "Temp\Licenses\EnglishReadme.rtf"
ExtractTemporaryFile('EnglishReadme.rtf');
#endif
#ifexist "Temp\Licenses\EnglishManual.pdf"
ExtractTemporaryFile('EnglishManual.pdf');
#endif
#ifexist "Temp\Licenses\AlbanianLicense.rtf"
ExtractTemporaryFile('AlbanianLicense.rtf');
#endif
#ifexist "Temp\Licenses\AlbanianInfoBefore.rtf"
ExtractTemporaryFile('AlbanianInfoBefore.rtf');
#endif
#ifexist "Temp\Licenses\AlbanianInfoAfter.rtf"
ExtractTemporaryFile('AlbanianInfoAfter.rtf');
#endif
#ifexist "Temp\Licenses\AlbanianReadme.rtf"
ExtractTemporaryFile('AlbanianReadme.rtf');
#endif
#ifexist "Temp\Licenses\AlbanianManual.pdf"
ExtractTemporaryFile('AlbanianManual.pdf');
#endif
#ifexist "Temp\Licenses\BosnianLicense.rtf"
ExtractTemporaryFile('BosnianLicense.rtf');
#endif
#ifexist "Temp\Licenses\BosnianInfoBefore.rtf"
ExtractTemporaryFile('BosnianInfoBefore.rtf');
#endif
#ifexist "Temp\Licenses\BosnianInfoAfter.rtf"
ExtractTemporaryFile('BosnianInfoAfter.rtf');
#endif
#ifexist "Temp\Licenses\BosnianReadme.rtf"
ExtractTemporaryFile('BosnianReadme.rtf');
#endif
#ifexist "Temp\Licenses\BosnianManual.pdf"
ExtractTemporaryFile('BosnianManual.pdf');
#endif
#ifexist "Temp\Licenses\CzechLicense.rtf"
ExtractTemporaryFile('CzechLicense.rtf');
#endif
#ifexist "Temp\Licenses\CzechInfoBefore.rtf"
ExtractTemporaryFile('CzechInfoBefore.rtf');
#endif
#ifexist "Temp\Licenses\CzechInfoAfter.rtf"
ExtractTemporaryFile('CzechInfoAfter.rtf');
#endif
#ifexist "Temp\Licenses\CzechReadme.rtf"
ExtractTemporaryFile('CzechReadme.rtf');
#endif
#ifexist "Temp\Licenses\CzechManual.pdf"
ExtractTemporaryFile('CzechManual.pdf');
#endif
#ifexist "Temp\Licenses\FrenchLicense.rtf"
ExtractTemporaryFile('FrenchLicense.rtf');
#endif
#ifexist "Temp\Licenses\FrenchInfoBefore.rtf"
ExtractTemporaryFile('FrenchInfoBefore.rtf');
#endif
#ifexist "Temp\Licenses\FrenchInfoAfter.rtf"
ExtractTemporaryFile('FrenchInfoAfter.rtf');
#endif
#ifexist "Temp\Licenses\FrenchReadme.rtf"
ExtractTemporaryFile('FrenchReadme.rtf');
#endif
#ifexist "Temp\Licenses\FrenchManual.pdf"
ExtractTemporaryFile('FrenchManual.pdf');
#endif
#ifexist "Temp\Licenses\GermanLicense.rtf"
ExtractTemporaryFile('GermanLicense.rtf');
#endif
#ifexist "Temp\Licenses\GermanInfoBefore.rtf"
ExtractTemporaryFile('GermanInfoBefore.rtf');
#endif
#ifexist "Temp\Licenses\GermanInfoAfter.rtf"
ExtractTemporaryFile('GermanInfoAfter.rtf');
#endif
#ifexist "Temp\Licenses\GermanReadme.rtf"
ExtractTemporaryFile('GermanReadme.rtf');
#endif
#ifexist "Temp\Licenses\GermanManual.pdf"
ExtractTemporaryFile('GermanManual.pdf');
#endif
#ifexist "Temp\Licenses\HungarianLicense.rtf"
ExtractTemporaryFile('HungarianLicense.rtf');
#endif
#ifexist "Temp\Licenses\HungarianInfoBefore.rtf"
ExtractTemporaryFile('HungarianInfoBefore.rtf');
#endif
#ifexist "Temp\Licenses\HungarianInfoAfter.rtf"
ExtractTemporaryFile('HungarianInfoAfter.rtf');
#endif
#ifexist "Temp\Licenses\HungarianReadme.rtf"
ExtractTemporaryFile('HungarianReadme.rtf');
#endif
#ifexist "Temp\Licenses\HungarianManual.pdf"
ExtractTemporaryFile('HungarianManual.pdf');
#endif
#ifexist "Temp\Licenses\ItalianLicense.rtf"
ExtractTemporaryFile('ItalianLicense.rtf');
#endif
#ifexist "Temp\Licenses\ItalianInfoBefore.rtf"
ExtractTemporaryFile('ItalianInfoBefore.rtf');
#endif
#ifexist "Temp\Licenses\ItalianInfoAfter.rtf"
ExtractTemporaryFile('ItalianInfoAfter.rtf');
#endif
#ifexist "Temp\Licenses\ItalianReadme.rtf"
ExtractTemporaryFile('ItalianReadme.rtf');
#endif
#ifexist "Temp\Licenses\ItalianManual.pdf"
ExtractTemporaryFile('ItalianManual.pdf');
#endif
#ifexist "Temp\Licenses\MalaysianLicense.rtf"
ExtractTemporaryFile('MalaysianLicense.rtf');
#endif
#ifexist "Temp\Licenses\MalaysianInfoBefore.rtf"
ExtractTemporaryFile('MalaysianInfoBefore.rtf');
#endif
#ifexist "Temp\Licenses\MalaysianInfoAfter.rtf"
ExtractTemporaryFile('MalaysianInfoAfter.rtf');
#endif
#ifexist "Temp\Licenses\MalaysianReadme.rtf"
ExtractTemporaryFile('MalaysianReadme.rtf');
#endif
#ifexist "Temp\Licenses\MalaysianManual.pdf"
ExtractTemporaryFile('MalaysianManual.pdf');
#endif
#ifexist "Temp\Licenses\PolishLicense.rtf"
ExtractTemporaryFile('PolishLicense.rtf');
#endif
#ifexist "Temp\Licenses\PolishInfoBefore.rtf"
ExtractTemporaryFile('PolishInfoBefore.rtf');
#endif
#ifexist "Temp\Licenses\PolishInfoAfter.rtf"
ExtractTemporaryFile('PolishInfoAfter.rtf');
#endif
#ifexist "Temp\Licenses\PolishReadme.rtf"
ExtractTemporaryFile('PolishReadme.rtf');
#endif
#ifexist "Temp\Licenses\PolishManual.pdf"
ExtractTemporaryFile('PolishManual.pdf');
#endif
#ifexist "Temp\Licenses\PortugueseLicense.rtf"
ExtractTemporaryFile('PortugueseLicense.rtf');
#endif
#ifexist "Temp\Licenses\PortugueseInfoBefore.rtf"
ExtractTemporaryFile('PortugueseInfoBefore.rtf');
#endif
#ifexist "Temp\Licenses\PortugueseInfoAfter.rtf"
ExtractTemporaryFile('PortugueseInfoAfter.rtf');
#endif
#ifexist "Temp\Licenses\PortugueseReadme.rtf"
ExtractTemporaryFile('PortugueseReadme.rtf');
#endif
#ifexist "Temp\Licenses\PortugueseManual.pdf"
ExtractTemporaryFile('PortugueseManual.pdf');
#endif
#ifexist "Temp\Licenses\RussianLicense.rtf"
ExtractTemporaryFile('RussianLicense.rtf');
#endif
#ifexist "Temp\Licenses\RussianInfoBefore.rtf"
ExtractTemporaryFile('RussianInfoBefore.rtf');
#endif
#ifexist "Temp\Licenses\RussianInfoAfter.rtf"
ExtractTemporaryFile('RussianInfoAfter.rtf');
#endif
#ifexist "Temp\Licenses\RussianReadme.rtf"
ExtractTemporaryFile('RussianReadme.rtf');
#endif
#ifexist "Temp\Licenses\RussianManual.pdf"
ExtractTemporaryFile('RussianManual.pdf');
#endif
#ifexist "Temp\Licenses\SpanishLicense.rtf"
ExtractTemporaryFile('SpanishLicense.rtf');
#endif
#ifexist "Temp\Licenses\SpanishInfoBefore.rtf"
ExtractTemporaryFile('SpanishInfoBefore.rtf');
#endif
#ifexist "Temp\Licenses\SpanishInfoAfter.rtf"
ExtractTemporaryFile('SpanishInfoAfter.rtf');
#endif
#ifexist "Temp\Licenses\SpanishReadme.rtf"
ExtractTemporaryFile('SpanishReadme.rtf');
#endif
#ifexist "Temp\Licenses\SpanishManual.pdf"
ExtractTemporaryFile('SpanishManual.pdf');
#endif
#ifexist "Temp\Licenses\TurkishLicense.rtf"
ExtractTemporaryFile('TurkishLicense.rtf');
#endif
#ifexist "Temp\Licenses\TurkishInfoBefore.rtf"
ExtractTemporaryFile('TurkishInfoBefore.rtf');
#endif
#ifexist "Temp\Licenses\TurkishInfoAfter.rtf"
ExtractTemporaryFile('TurkishInfoAfter.rtf');
#endif
#ifexist "Temp\Licenses\TurkishReadme.rtf"
ExtractTemporaryFile('TurkishReadme.rtf');
#endif
#ifexist "Temp\Licenses\TurkishManual.pdf"
ExtractTemporaryFile('TurkishManual.pdf');
#endif
#ifexist "Temp\Licenses\UkrainianLicense.rtf"
ExtractTemporaryFile('UkrainianLicense.rtf');
#endif
#ifexist "Temp\Licenses\UkrainianInfoBefore.rtf"
ExtractTemporaryFile('UkrainianInfoBefore.rtf');
#endif
#ifexist "Temp\Licenses\UkrainianInfoAfter.rtf"
ExtractTemporaryFile('UkrainianInfoAfter.rtf');
#endif
#ifexist "Temp\Licenses\UkrainianReadme.rtf"
ExtractTemporaryFile('UkrainianReadme.rtf');
#endif
#ifexist "Temp\Licenses\UkrainianManual.pdf"
ExtractTemporaryFile('UkrainianManual.pdf');
#endif
#ifexist "Temp\Licenses\VietnameseLicense.rtf"
ExtractTemporaryFile('VietnameseLicense.rtf');
#endif
#ifexist "Temp\Licenses\VietnameseInfoBefore.rtf"
ExtractTemporaryFile('VietnameseInfoBefore.rtf');
#endif
#ifexist "Temp\Licenses\VietnameseInfoAfter.rtf"
ExtractTemporaryFile('VietnameseInfoAfter.rtf');
#endif
#ifexist "Temp\Licenses\VietnameseReadme.rtf"
ExtractTemporaryFile('VietnameseReadme.rtf');
#endif
#ifexist "Temp\Licenses\VietnameseManual.pdf"
ExtractTemporaryFile('VietnameseManual.pdf');
#endif

#ifexist "Temp\Setup.ini"
if Pos('/masterunlock',GetCmdTail) <> 0 then
ExtractTemporaryFileEx('Setup.ini',ExpandConstant('{src}'));
#endif
#ifexist "Temp\Resources\Dialog.jpg"
ExtractTemporaryFile('Dialog.jpg');
#endif
#ifexist "Temp\Resources\DialogTextBackground.png"
ExtractTemporaryFile('DialogTextBackground.png');
#endif
#ifexist "Temp\Resources\EditBackground.png"
ExtractTemporaryFile('EditBackground.png');
#endif
#ifexist "Temp\Resources\Logo.png"
ExtractTemporaryFile('Logo.png');
#endif
#ifexist "Temp\Resources\ProgressBackground.png"
ExtractTemporaryFile('ProgressBackground.png');
#endif
#ifexist "Temp\Resources\ProgressImage.png"
ExtractTemporaryFile('ProgressImage.png');
#endif
#ifexist "Temp\Resources\TextBackground.png"
ExtractTemporaryFile('TextBackground.png');
#endif
#ifexist "Temp\Resources\SmallTextBackground.png"
ExtractTemporaryFile('SmallTextBackground.png');
#endif
#ifexist "Temp\Resources\Preview1.jpg"
ExtractTemporaryFile('Preview1.jpg');
#endif
#ifexist "Temp\Resources\Preview2.jpg"
ExtractTemporaryFile('Preview2.jpg');
#endif
#ifexist "Temp\Resources\Preview3.jpg"
ExtractTemporaryFile('Preview3.jpg');
#endif
#ifexist "Temp\Resources\Button.png"
ExtractTemporaryFile('Button.png');
#endif
#ifexist "Temp\Resources\ButtonSelected.png"
ExtractTemporaryFile('ButtonSelected.png');
#endif
#ifexist "Temp\Resources\ButtonClicked.png"
ExtractTemporaryFile('ButtonClicked.png');
#endif
#ifexist "Temp\Resources\ButtonDisabled.png"
ExtractTemporaryFile('ButtonDisabled.png');
#endif
#ifexist "Temp\Resources\BackButton.png"
ExtractTemporaryFile('BackButton.png');
#endif
#ifexist "Temp\Resources\BackButtonSelected.png"
ExtractTemporaryFile('BackButtonSelected.png');
#endif
#ifexist "Temp\Resources\BackButtonClicked.png"
ExtractTemporaryFile('BackButtonClicked.png');
#endif
#ifexist "Temp\Resources\BackButtonDisabled.png"
ExtractTemporaryFile('BackButtonDisabled.png');
#endif
#ifexist "Temp\Resources\NextButton.png"
ExtractTemporaryFile('NextButton.png');
#endif
#ifexist "Temp\Resources\NextButtonSelected.png"
ExtractTemporaryFile('NextButtonSelected.png');
#endif
#ifexist "Temp\Resources\NextButtonClicked.png"
ExtractTemporaryFile('NextButtonClicked.png');
#endif
#ifexist "Temp\Resources\NextButtonDisabled.png"
ExtractTemporaryFile('NextButtonDisabled.png');
#endif
#ifexist "Temp\Resources\CancelButton.png"
ExtractTemporaryFile('CancelButton.png');
#endif
#ifexist "Temp\Resources\CancelButtonSelected.png"
ExtractTemporaryFile('CancelButtonSelected.png');
#endif
#ifexist "Temp\Resources\CancelButtonClicked.png"
ExtractTemporaryFile('CancelButtonClicked.png');
#endif
#ifexist "Temp\Resources\CancelButtonDisabled.png"
ExtractTemporaryFile('CancelButtonDisabled.png');
#endif
#ifexist "Temp\Resources\MusicButton.png"
ExtractTemporaryFile('MusicButton.png');
#endif
#ifexist "Temp\Resources\MusicButtonSelected.png"
ExtractTemporaryFile('MusicButtonSelected.png');
#endif
#ifexist "Temp\Resources\MusicButtonClicked.png"
ExtractTemporaryFile('MusicButtonClicked.png');
#endif
#ifexist "Temp\Resources\MusicButtonDisabled.png"
ExtractTemporaryFile('MusicButtonDisabled.png');
#endif
#ifexist "Temp\Resources\SmallButton.png"
ExtractTemporaryFile('SmallButton.png');
#endif
#ifexist "Temp\Resources\SmallButtonSelected.png"
ExtractTemporaryFile('SmallButtonSelected.png');
#endif
#ifexist "Temp\Resources\SmallButtonClicked.png"
ExtractTemporaryFile('SmallButtonClicked.png');
#endif
#ifexist "Temp\Resources\SmallButtonDisabled.png"
ExtractTemporaryFile('SmallButtonDisabled.png');
#endif
#ifexist "Temp\Resources\CloseButton.png"
ExtractTemporaryFile('CloseButton.png');
#endif
#ifexist "Temp\Resources\CloseButtonSelected.png"
ExtractTemporaryFile('CloseButtonSelected.png');
#endif
#ifexist "Temp\Resources\CloseButtonClicked.png"
ExtractTemporaryFile('CloseButtonClicked.png');
#endif
#ifexist "Temp\Resources\CloseButtonDisabled.png"
ExtractTemporaryFile('CloseButtonDisabled.png');
#endif
#ifexist "Temp\Resources\MinimizeButton.png"
ExtractTemporaryFile('MinimizeButton.png');
#endif
#ifexist "Temp\Resources\MinimizeButtonSelected.png"
ExtractTemporaryFile('MinimizeButtonSelected.png');
#endif
#ifexist "Temp\Resources\MinimizeButtonClicked.png"
ExtractTemporaryFile('MinimizeButtonClicked.png');
#endif
#ifexist "Temp\Resources\MinimizeButtonDisabled.png"
ExtractTemporaryFile('MinimizeButtonDisabled.png');
#endif
#ifexist "Temp\Resources\SmallMusicButton.png"
ExtractTemporaryFile('SmallMusicButton.png');
#endif
#ifexist "Temp\Resources\SmallMusicButtonClicked.png"
ExtractTemporaryFile('SmallMusicButtonClicked.png');
#endif
#ifexist "Temp\Resources\SmallMusicButtonDisabled.png"
ExtractTemporaryFile('SmallMusicButtonDisabled.png');
#endif
#ifexist "Temp\Resources\SmallMusicButtonSelected.png"
ExtractTemporaryFile('SmallMusicButtonSelected.png');
#endif
ExtractTemporaryFile('CheckBox.png');
#ifexist "Temp\Resources\Cursor.cur"
ExtractTemporaryFile('Cursor.cur');
#endif
#ifexist "Temp\Resources\Cursor.ani"
ExtractTemporaryFile('Cursor.ani');
#endif
#ifexist "Temp\Resources\Music.mp3"
ExtractTemporaryFile('Music.mp3');
#endif
#ifexist "Temp\Resources\Video.wmv"
ExtractTemporaryFile('Video.wmv');
#endif
#ifexist "Temp\Resources\ButtonClicked.wav"
ExtractTemporaryFile('ButtonClicked.wav');
#endif
#ifexist "Temp\Resources\ButtonSelected.wav"
ExtractTemporaryFile('ButtonSelected.wav');
#endif
#ifexist "Temp\Resources\Font1.ttf"
#sub ExtractFile1
ExtractTemporaryFile('Font{#i}.ttf');
#endsub
#for {i = 1; FileExists(StringChange("Temp\Resources\FontFileName.ttf", "FileName", Str(i))) != 0; i++} ExtractFile1
#endif
#ifexist "Temp\Resources\1.jpg"
#sub ExtractFile2
ExtractTemporaryFile('{#i}.jpg');
#endsub
#for {i = 1; FileExists(StringChange("Temp\Resources\FileName.jpg", "FileName", Str(i))) != 0; i++} ExtractFile2
#endif
#ifexist "Temp\Resources\Splash1.png"
#sub ExtractFile3
ExtractTemporaryFile('Splash{#i}.png');
#endsub
#for {i = 1; FileExists(StringChange("Temp\Resources\SplashFileName.png", "FileName", Str(i))) != 0; i++} ExtractFile3
#endif
#ifexist "Temp\Resources\Installer1.jpg"
#sub ExtractFile4
ExtractTemporaryFile('Installer{#i}.jpg');
#endsub
#for {i = 1; FileExists(StringChange("Temp\Resources\InstallerFileName.jpg", "FileName", Str(i))) != 0; i++} ExtractFile4
#endif

#ifexist "Temp\Resources\ADialog.jpg"
ExtractTemporaryFile('ADialog.jpg');
#endif
#ifexist "Temp\Resources\ADialogTextBackground.png"
ExtractTemporaryFile('ADialogTextBackground.png');
#endif
#ifexist "Temp\Resources\ALogo.png"
ExtractTemporaryFile('ALogo.png');
#endif
#ifexist "Temp\Resources\AButton.png"
ExtractTemporaryFile('AButton.png');
#endif
#ifexist "Temp\Resources\AButtonSelected.png"
ExtractTemporaryFile('AButtonSelected.png');
#endif
#ifexist "Temp\Resources\AButtonClicked.png"
ExtractTemporaryFile('AButtonClicked.png');
#endif
#ifexist "Temp\Resources\AButtonDisabled.png"
ExtractTemporaryFile('AButtonDisabled.png');
#endif
#ifexist "Temp\Resources\AInstallButton.png"
ExtractTemporaryFile('AInstallButton.png');
#endif
#ifexist "Temp\Resources\AInstallButtonSelected.png"
ExtractTemporaryFile('AInstallButtonSelected.png');
#endif
#ifexist "Temp\Resources\AInstallButtonClicked.png"
ExtractTemporaryFile('AInstallButtonClicked.png');
#endif
#ifexist "Temp\Resources\AInstallButtonDisabled.png"
ExtractTemporaryFile('AInstallButtonDisabled.png');
#endif
#ifexist "Temp\Resources\AExitButton.png"
ExtractTemporaryFile('AExitButton.png');
#endif
#ifexist "Temp\Resources\AExitButtonSelected.png"
ExtractTemporaryFile('AExitButtonSelected.png');
#endif
#ifexist "Temp\Resources\AExitButtonClicked.png"
ExtractTemporaryFile('AExitButtonClicked.png');
#endif
#ifexist "Temp\Resources\AExitButtonDisabled.png"
ExtractTemporaryFile('AExitButtonDisabled.png');
#endif
#ifexist "Temp\Resources\ACloseButton.png"
ExtractTemporaryFile('ACloseButton.png');
#endif
#ifexist "Temp\Resources\ACloseButtonSelected.png"
ExtractTemporaryFile('ACloseButtonSelected.png');
#endif
#ifexist "Temp\Resources\ACloseButtonClicked.png"
ExtractTemporaryFile('ACloseButtonClicked.png');
#endif
#ifexist "Temp\Resources\ACloseButtonDisabled.png"
ExtractTemporaryFile('ACloseButtonDisabled.png');
#endif
#ifexist "Temp\Resources\AMinimizeButton.png"
ExtractTemporaryFile('AMinimizeButton.png');
#endif
#ifexist "Temp\Resources\AMinimizeButtonSelected.png"
ExtractTemporaryFile('AMinimizeButtonSelected.png');
#endif
#ifexist "Temp\Resources\AMinimizeButtonClicked.png"
ExtractTemporaryFile('AMinimizeButtonClicked.png');
#endif
#ifexist "Temp\Resources\AMinimizeButtonDisabled.png"
ExtractTemporaryFile('AMinimizeButtonDisabled.png');
#endif
#ifexist "Temp\Resources\AMusicButton.png"
ExtractTemporaryFile('AMusicButton.png');
#endif
#ifexist "Temp\Resources\AMusicButtonSelected.png"
ExtractTemporaryFile('AMusicButtonSelected.png');
#endif
#ifexist "Temp\Resources\AMusicButtonClicked.png"
ExtractTemporaryFile('AMusicButtonClicked.png');
#endif
#ifexist "Temp\Resources\AMusicButtonDisabled.png"
ExtractTemporaryFile('AMusicButtonDisabled.png');
#endif
#ifexist "Temp\Resources\AReadmeButton.png"
ExtractTemporaryFile('AReadmeButton.png');
#endif
#ifexist "Temp\Resources\AReadmeButtonSelected.png"
ExtractTemporaryFile('AReadmeButtonSelected.png');
#endif
#ifexist "Temp\Resources\AReadmeButtonClicked.png"
ExtractTemporaryFile('AReadmeButtonClicked.png');
#endif
#ifexist "Temp\Resources\AReadmeButtonDisabled.png"
ExtractTemporaryFile('AReadmeButtonDisabled.png');
#endif
#ifexist "Temp\Resources\AManualButton.png"
ExtractTemporaryFile('AManualButton.png');
#endif
#ifexist "Temp\Resources\AManualButtonSelected.png"
ExtractTemporaryFile('AManualButtonSelected.png');
#endif
#ifexist "Temp\Resources\AManualButtonClicked.png"
ExtractTemporaryFile('AManualButtonClicked.png');
#endif
#ifexist "Temp\Resources\AManualButtonDisabled.png"
ExtractTemporaryFile('AManualButtonDisabled.png');
#endif
#ifexist "Temp\Resources\AOpenDiskButton.png"
ExtractTemporaryFile('AOpenDiskButton.png');
#endif
#ifexist "Temp\Resources\AOpenDiskButtonSelected.png"
ExtractTemporaryFile('AOpenDiskButtonSelected.png');
#endif
#ifexist "Temp\Resources\AOpenDiskButtonClicked.png"
ExtractTemporaryFile('AOpenDiskButtonClicked.png');
#endif
#ifexist "Temp\Resources\AOpenDiskButtonDisabled.png"
ExtractTemporaryFile('AOpenDiskButtonDisabled.png');
#endif
#ifexist "Temp\Resources\AWebButton.png"
ExtractTemporaryFile('AWebButton.png');
#endif
#ifexist "Temp\Resources\AWebButtonSelected.png"
ExtractTemporaryFile('AWebButtonSelected.png');
#endif
#ifexist "Temp\Resources\AWebButtonClicked.png"
ExtractTemporaryFile('AWebButtonClicked.png');
#endif
#ifexist "Temp\Resources\AWebButtonDisabled.png"
ExtractTemporaryFile('AWebButtonDisabled.png');
#endif
#ifexist "Temp\Resources\ASmallMusicButton.png"
ExtractTemporaryFile('ASmallMusicButton.png');
#endif
#ifexist "Temp\Resources\ASmallMusicButtonSelected.png"
ExtractTemporaryFile('ASmallMusicButtonSelected.png');
#endif
#ifexist "Temp\Resources\ASmallMusicButtonClicked.png"
ExtractTemporaryFile('ASmallMusicButtonClicked.png');
#endif
#ifexist "Temp\Resources\ASmallMusicButtonDisabled.png"
ExtractTemporaryFile('ASmallMusicButtonDisabled.png');
#endif
#ifexist "Temp\Resources\ALaunch1Button.png"
ExtractTemporaryFile('ALaunch1Button.png');
#endif
#ifexist "Temp\Resources\ALaunch1ButtonSelected.png"
ExtractTemporaryFile('ALaunch1ButtonSelected.png');
#endif
#ifexist "Temp\Resources\ALaunch1ButtonClicked.png"
ExtractTemporaryFile('ALaunch1ButtonClicked.png');
#endif
#ifexist "Temp\Resources\ALaunch1ButtonDisabled.png"
ExtractTemporaryFile('ALaunch1ButtonDisabled.png');
#endif
#ifexist "Temp\Resources\ALaunch2Button.png"
ExtractTemporaryFile('ALaunch2Button.png');
#endif
#ifexist "Temp\Resources\ALaunch2ButtonSelected.png"
ExtractTemporaryFile('ALaunch2ButtonSelected.png');
#endif
#ifexist "Temp\Resources\ALaunch2ButtonClicked.png"
ExtractTemporaryFile('ALaunch2ButtonClicked.png');
#endif
#ifexist "Temp\Resources\ALaunch2ButtonDisabled.png"
ExtractTemporaryFile('ALaunch2ButtonDisabled.png');
#endif
#ifexist "Temp\Resources\ALaunch3Button.png"
ExtractTemporaryFile('ALaunch3Button.png');
#endif
#ifexist "Temp\Resources\ALaunch3ButtonSelected.png"
ExtractTemporaryFile('ALaunch3ButtonSelected.png');
#endif
#ifexist "Temp\Resources\ALaunch3ButtonClicked.png"
ExtractTemporaryFile('ALaunch3ButtonClicked.png');
#endif
#ifexist "Temp\Resources\ALaunch3ButtonDisabled.png"
ExtractTemporaryFile('ALaunch3ButtonDisabled.png');
#endif
#ifexist "Temp\Resources\ALaunch4Button.png"
ExtractTemporaryFile('ALaunch4Button.png');
#endif
#ifexist "Temp\Resources\ALaunch4ButtonSelected.png"
ExtractTemporaryFile('ALaunch4ButtonSelected.png');
#endif
#ifexist "Temp\Resources\ALaunch4ButtonClicked.png"
ExtractTemporaryFile('ALaunch4ButtonClicked.png');
#endif
#ifexist "Temp\Resources\ALaunch4ButtonDisabled.png"
ExtractTemporaryFile('ALaunch4ButtonDisabled.png');
#endif
#ifexist "Temp\Resources\ALaunch5Button.png"
ExtractTemporaryFile('ALaunch5Button.png');
#endif
#ifexist "Temp\Resources\ALaunch5ButtonSelected.png"
ExtractTemporaryFile('ALaunch5ButtonSelected.png');
#endif
#ifexist "Temp\Resources\ALaunch5ButtonClicked.png"
ExtractTemporaryFile('ALaunch5ButtonClicked.png');
#endif
#ifexist "Temp\Resources\ALaunch5ButtonDisabled.png"
ExtractTemporaryFile('ALaunch5ButtonDisabled.png');
#endif
#ifexist "Temp\Resources\ALaunch6Button.png"
ExtractTemporaryFile('ALaunch6Button.png');
#endif
#ifexist "Temp\Resources\ALaunch6ButtonSelected.png"
ExtractTemporaryFile('ALaunch6ButtonSelected.png');
#endif
#ifexist "Temp\Resources\ALaunch6ButtonClicked.png"
ExtractTemporaryFile('ALaunch6ButtonClicked.png');
#endif
#ifexist "Temp\Resources\ALaunch6ButtonDisabled.png"
ExtractTemporaryFile('ALaunch6ButtonDisabled.png');
#endif
#ifexist "Temp\Resources\ALaunch7Button.png"
ExtractTemporaryFile('ALaunch7Button.png');
#endif
#ifexist "Temp\Resources\ALaunch7ButtonSelected.png"
ExtractTemporaryFile('ALaunch7ButtonSelected.png');
#endif
#ifexist "Temp\Resources\ALaunch7ButtonClicked.png"
ExtractTemporaryFile('ALaunch7ButtonClicked.png');
#endif
#ifexist "Temp\Resources\ALaunch7ButtonDisabled.png"
ExtractTemporaryFile('ALaunch7ButtonDisabled.png');
#endif
#ifexist "Temp\Resources\ALaunch8Button.png"
ExtractTemporaryFile('ALaunch8Button.png');
#endif
#ifexist "Temp\Resources\ALaunch8ButtonSelected.png"
ExtractTemporaryFile('ALaunch8ButtonSelected.png');
#endif
#ifexist "Temp\Resources\ALaunch8ButtonClicked.png"
ExtractTemporaryFile('ALaunch8ButtonClicked.png');
#endif
#ifexist "Temp\Resources\ALaunch8ButtonDisabled.png"
ExtractTemporaryFile('ALaunch8ButtonDisabled.png');
#endif
#ifexist "Temp\Resources\ALaunch9Button.png"
ExtractTemporaryFile('ALaunch9Button.png');
#endif
#ifexist "Temp\Resources\ALaunch9ButtonSelected.png"
ExtractTemporaryFile('ALaunch9ButtonSelected.png');
#endif
#ifexist "Temp\Resources\ALaunch9ButtonClicked.png"
ExtractTemporaryFile('ALaunch9ButtonClicked.png');
#endif
#ifexist "Temp\Resources\ALaunch9ButtonDisabled.png"
ExtractTemporaryFile('ALaunch9ButtonDisabled.png');
#endif
#ifexist "Temp\Resources\ALaunch10Button.png"
ExtractTemporaryFile('ALaunch10Button.png');
#endif
#ifexist "Temp\Resources\ALaunch10ButtonSelected.png"
ExtractTemporaryFile('ALaunch10ButtonSelected.png');
#endif
#ifexist "Temp\Resources\ALaunch10ButtonClicked.png"
ExtractTemporaryFile('ALaunch10ButtonClicked.png');
#endif
#ifexist "Temp\Resources\ALaunch10ButtonDisabled.png"
ExtractTemporaryFile('ALaunch10ButtonDisabled.png');
#endif
#ifexist "Temp\Resources\AButtonClicked.wav"
ExtractTemporaryFile('AButtonClicked.wav');
#endif
#ifexist "Temp\Resources\AButtonSelected.wav"
ExtractTemporaryFile('AButtonSelected.wav');
#endif
#ifexist "Temp\Resources\ACursor.cur"
ExtractTemporaryFile('ACursor.cur');
#endif
#ifexist "Temp\Resources\ACursor.ani"
ExtractTemporaryFile('ACursor.ani');
#endif
#ifexist "Temp\Resources\ASplash1.png"
#sub ExtractFile5
ExtractTemporaryFile('ASplash{#i}.png');
#endsub
#for {i = 1; FileExists(StringChange("Temp\Resources\ASplashFileName.png", "FileName", Str(i))) != 0; i++} ExtractFile5
#endif
#ifexist "Temp\Resources\AFont1.ttf"
#sub ExtractFile6
ExtractTemporaryFile('AFont{#i}.ttf');
#endsub
#for {i = 1; FileExists(StringChange("Temp\Resources\AFontFileName.ttf", "FileName", Str(i))) != 0; i++} ExtractFile6
#endif
#ifexist "Temp\Resources\Autorun1.jpg"
#sub ExtractFile7
ExtractTemporaryFile('Autorun{#i}.jpg');
#endsub
#for {i = 1; FileExists(StringChange("Temp\Resources\AutorunFileName.jpg", "FileName", Str(i))) != 0; i++} ExtractFile7
#endif
#ifexist "Temp\Resources\Autorun1.png"
#sub ExtractFile8
ExtractTemporaryFile('Autorun{#i}.png');
#endsub
#for {i = 1; FileExists(StringChange("Temp\Resources\AutorunFileName.png", "FileName", Str(i))) != 0; i++} ExtractFile8
#endif
#ifexist "Temp\Resources\Autorun1.bmp"
#sub ExtractFile9
ExtractTemporaryFile('Autorun{#i}.bmp');
#endsub
#for {i = 1; FileExists(StringChange("Temp\Resources\AutorunFileName.bmp", "FileName", Str(i))) != 0; i++} ExtractFile9
#endif
#ifexist "Temp\Resources\Installer1.jpg"
#sub ExtractFile10
ExtractTemporaryFile('Installer{#i}.jpg');
#endsub
#for {i = 1; FileExists(StringChange("Temp\Resources\InstallerFileName.jpg", "FileName", Str(i))) != 0; i++} ExtractFile10
#endif
#ifexist "Temp\Resources\Installer1.png"
#sub ExtractFile11
ExtractTemporaryFile('Installer{#i}.png');
#endsub
#for {i = 1; FileExists(StringChange("Temp\Resources\InstallerFileName.png", "FileName", Str(i))) != 0; i++} ExtractFile11
#endif
#ifexist "Temp\Resources\Installer1.bmp"
#sub ExtractFile12
ExtractTemporaryFile('Installer{#i}.bmp');
#endsub
#for {i = 1; FileExists(StringChange("Temp\Resources\InstallerFileName.bmp", "FileName", Str(i))) != 0; i++} ExtractFile12
#endif
#ifexist "Temp\Resources\SmallInstaller1.jpg"
#sub ExtractFile13
ExtractTemporaryFile('SmallInstaller{#i}.jpg');
#endsub
#for {i = 1; FileExists(StringChange("Temp\Resources\SmallInstallerFileName.jpg", "FileName", Str(i))) != 0; i++} ExtractFile13
#endif
#ifexist "Temp\Resources\SmallInstaller1.png"
#sub ExtractFile14
ExtractTemporaryFile('SmallInstaller{#i}.png');
#endsub
#for {i = 1; FileExists(StringChange("Temp\Resources\SmallInstallerFileName.png", "FileName", Str(i))) != 0; i++} ExtractFile14
#endif
#ifexist "Temp\Resources\SmallInstaller1.bmp"
#sub ExtractFile15
ExtractTemporaryFile('SmallInstaller{#i}.bmp');
#endsub
#for {i = 1; FileExists(StringChange("Temp\Resources\SmallInstallerFileName.bmp", "FileName", Str(i))) != 0; i++} ExtractFile15
#endif
MusicPlaying:=False;
VideoPlaying:=False;
RegQueryStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\' + ApplicationPublisher('') + '\' + ApplicationName(''), 'InstallString', AppDir);
RegQueryStringValue(HKEY_LOCAL_MACHINE, 'SOFTWARE\' + ApplicationPublisher('') + '\' + ApplicationName(''), 'UninstallString', UninstExe);
if RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\' + ApplicationPublisher('') + '\' + ApplicationName('')) and FileExists(UninstExe) then begin
Installed := True
end else
Installed := False;
SetupRunning2 := True;
Protection;

if FileExists(ExpandConstant('{src}\Setup.db')) then
Result := True
else
begin
MsgBox('Missing file "Setup.db"', mbCriticalError, MB_OK);
end;

SetupRunning :=True;
if Result = True then
begin
ExtractTemporaryFile('botva2.dll');
ExtractTemporaryFile('isskin.dll');
ExtractTemporaryFile('CallbackCtrl.dll');
ExtractTemporaryFile('trayiconctrl.dll');
ExtractTemporaryFile('SysInfo.dll');
ExtractTemporaryFile('video.exe');
if VideoEnabled then
begin
Exec(ExpandConstant('{tmp}\video.exe'),ExpandConstant('"{tmp}\Video.wmv"'),'',SW_HIDE,ewWaitUntilTerminated,ResultCode);
VideoWidth:=GetIniInt('AVIVideo','Width',0,0,0,ExpandConstant('{tmp}\video.ini'));
VideoHeight:=GetIniInt('AVIVideo','Height',0,0,0,ExpandConstant('{tmp}\video.ini'));
if VideoWidth > VideoHeight then
begin
VideoDiff:=GetSystemMetrics(0) / VideoWidth;
VideoWidth:=GetSystemMetrics(0);
VideoHeight:=Round(VideoHeight * VideoDiff);
end;
if VideoWidth < VideoHeight then
begin
VideoDiff:=GetSystemMetrics(1) / VideoHeight;
VideoHeight:=GetSystemMetrics(1);
VideoWidth:=Round(VideoWidth * VideoDiff);
end;
if VideoWidth = VideoHeight then
begin
if GetSystemMetrics(0) > GetSystemMetrics(1) then
begin
VideoWidth:=GetSystemMetrics(1);
VideoHeight:=GetSystemMetrics(1);
end;
if GetSystemMetrics(0) < GetSystemMetrics(1) then
begin
VideoWidth:=GetSystemMetrics(0);
VideoHeight:=GetSystemMetrics(0);
end;
end;
VideoLeft:=Round((GetSystemMetrics(0) / 2) - (VideoWidth / 2));
VideoTop:=Round((GetSystemMetrics(1) / 2) - (VideoHeight / 2));
end;
ExtractTemporaryFile('ResultBG1.png');
ExtractTemporaryFile('ResultBG2.png');
ExtractTemporaryFile('ResultBG3.png');
ExtractTemporaryFile('ResultBG4.png');
ExtractTemporaryFile('ResultBG5.png');
ExpiryCheater:=True
#ifdef ExpiryDate
if ((RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Installed Apps\'+ ApplicationPublisher('') + '\' + ApplicationName (''))) or (not TimeLimit)) then
begin
RegWriteStringValue(HKLM, 'SOFTWARE\Microsoft\Installed Apps\'+ ApplicationPublisher('') + '\' + ApplicationName (''), 'Expiry', 'Expired');
Taskbar1_4;
MsgBox(FmtMessage(SetupMessage(msgErrorInternal2),[ApplicationName('')]),mbError,MB_OK);
Result := False;
end;
#else
if (RegKeyExists(HKEY_LOCAL_MACHINE, 'SOFTWARE\Microsoft\Installed Apps\'+ ApplicationPublisher('') + '\' + ApplicationName (''))) then
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\Microsoft\Installed Apps\'+ ApplicationPublisher('') + '\' + ApplicationName (''));
#endif

if WizardSilent and (Result = False) then
begin
MsgBox(SetupMessage(msgSourceIsCorrupted),mbError,MB_OK);
Result:=False;
end;

if MusicEnabled then begin
MusicPlaying:=True;
VideoPlaying:=False;
mp3Name := ExpandConstant('{tmp}\Music.mp3');
BASS_Init(-1, 44100, 0, 0, 0);
mp3Handle := BASS_StreamCreateFile(FALSE, PAnsiChar(mp3Name), 0, 0, 0, 0, BASS_SAMPLE_LOOP);
BASS_Start();
BASS_ChannelPlay(mp3Handle, False);
DisplayMode:=MusicMode;
end;

if SmallWizardImage_JPG then
begin
counter:=0;
repeat
counter:=counter +1
until FileExists(ExpandConstant('{tmp}\SmallInstaller'+ IntToStr(counter)+'.jpg')) = False;
WizardSmallImageQuantity := counter - 1;
end;

if SmallWizardImage_PNG then
begin
counter:=0;
repeat
counter:=counter +1
until FileExists(ExpandConstant('{tmp}\SmallInstaller'+ IntToStr(counter)+'.png')) = False;
WizardSmallImageQuantity := counter - 1;
end;

if SlidesEnabled then
begin
counter:=0
repeat
counter:=counter +1
until FileExists(ExpandConstant('{tmp}\'+ IntToStr(counter)+'.jpg')) = False;
SlideImageQuantity := counter -1;
end;
end;
LoadTotalCompSize;
if Result = True then
begin
#if ReadIni(SourcePath	+ "\Temp\Setup.ini", "Setup", "Autorun", "1") == "1"
Result:=InitializeAutorunForm = mrOk;
#endif
end;
SetupRunning2:=Result;
end;

procedure UninstallFiles;
var
i: integer;
begin
FileCopy(ExpandConstant('{tmp}\Setup.ini'),ExpandConstant('{app}\Uninstall\uninst001.dat'),False);
FileCopy(ExpandConstant('{tmp}\botva2.dll'),ExpandConstant('{app}\Uninstall\uninst002.dat'),False);
FileCopy(ExpandConstant('{tmp}\CallbackCtrl.dll'),ExpandConstant('{app}\Uninstall\uninst003.dat'),False);
FileCopy(ExpandConstant('{tmp}\InnoCallback.dll'),ExpandConstant('{app}\Uninstall\uninst004.dat'),False);

if LogoImage then
FileCopy(ExpandConstant('{tmp}\Logo.png'),ExpandConstant('{app}\Uninstall\uninst011.dat'),False);

if CustomTextBackground then
FileCopy(ExpandConstant('{tmp}\TextBackground.png'),ExpandConstant('{app}\Uninstall\uninst012.dat'),False);
if CustomProgressGauge then
begin
FileCopy(ExpandConstant('{tmp}\ProgressImage.png'),ExpandConstant('{app}\Uninstall\uninst013.dat'),False);
FileCopy(ExpandConstant('{tmp}\ProgressBackground.png'),ExpandConstant('{app}\Uninstall\uninst014.dat'),False);
end;

if WizardImage_JPG then
FileCopy(ExpandConstant('{tmp}\Installer1.jpg'),ExpandConstant('{app}\Uninstall\uninst021.dat'),False);

if WizardImage_PNG then
begin
FileCopy(ExpandConstant('{tmp}\Installer1.png'),ExpandConstant('{app}\Uninstall\uninst022.dat'),False);
FileCopy(ExpandConstant('{tmp}\Installer1.bmp'),ExpandConstant('{app}\Uninstall\uninst023.dat'),False);
end;


i:=0;
repeat
i:= i + 1;
FileCopy(ExpandConstant('{tmp}\font'+IntToStr(i)+'.ttf'),ExpandConstant('{app}\Uninstall\uninstf'+IntToStr(i)+'.dat'),False);
until FileExists(ExpandConstant('{tmp}\font'+IntToStr(i)+'.ttf')) = False;
end;

procedure GroupChange(Sender: TObject);
begin
SelectGroupLabel3_1.Labl.Caption := MinimizePathName(WizardForm.GroupEdit.Text, SelectGroupLabel3_1.Labl.Font, SelectGroupLabel3_1.Labl.Width);
CreateShadow(SelectGroupLabel3_1,False);
end;

Function NumToStr(Float: Extended): String;
Begin
Result:= Format('%.2n', [Float]); StringChange(Result, ',', ',');
while ((Result[Length(Result)] = '0') or (Result[Length(Result)] = ',')) and (Pos(',', Result) > 0) do
SetLength(Result, Length(Result)-1);
End;

function MbOrTb(Float: Extended): String;
begin
if Float < 1024 then Result:= NumToStr(Float)+' '+FmtMessage(cm('ConversionUnit4_1'), [ExpandConstant(' ')]) else
if Float/1024 < 1024 then Result:= NumToStr(Float/1024)+' '+FmtMessage(cm('ConversionUnit4_2'), [ExpandConstant(' ')]) else
Result:= NumToStr(Float/(1024*1024))+' '+FmtMessage(cm('ConversionUnit4_3'), [ExpandConstant(' ')]);
end;

procedure DirEditChange(Sender: TObject);
begin
SelectDirLabel3_1.Labl.Caption:=MinimizePathName(WizardForm.DirEdit.Text, SelectDirLabel2_1.Labl.Font, SelectDirLabel2_1.Labl.Width);
CreateShadow(SelectDirLabel3_1,False);
end;

procedure GroupEditChange(Sender: TObject);
begin
SelectGroupLabel3_1.Labl.Caption:=MinimizePathName(WizardForm.GroupEdit.Text, SelectGroupLabel2_1.Labl.Font, SelectGroupLabel2_1.Labl.Width);
CreateShadow(SelectGroupLabel3_1,False);
end;

procedure DirEditOnChange(Sender: TObject);
var
x: Integer;
begin
ComponentSizes := 0;
#ifdef Component
for x:=0 to GetArrayLength(SelectComponentCheck1) - 1 do
begin
if BtnGetChecked(SelectComponentCheck1[x]) then
ComponentSizes := ComponentSizes + Component[x].Size;
end;
#endif
SelectDirLabel3_1.Labl.Caption:=MinimizePathName(WizardForm.DirEdit.Text, SelectDirLabel3_1.Labl.Font, SelectDirLabel3_1.Labl.Width);
Drive:= ExtractFileDrive(WizardForm.DirEdit.Text);
GetSpaceOnDisk(Drive, True, FreeMB, TotalMB);
SelectDirLabel4_1.Labl.Caption:=FmtMessage(cm('SelectDirMessage4_1'), [ApplicationName('')]);
SelectDirLabel4_2.Labl.Caption:= FmtMessage(cm('SelectDirMessage4_2'), [ApplicationName('')]);
SelectDirLabel4_3.Labl.Caption :=FmtMessage(cm('SelectDirMessage4_3'), [ApplicationName('')]);
SelectDirLabel4_4.Labl.Caption := FmtMessage(cm('SelectDirMessage4_4'), [ApplicationName('')]);
SelectDirLabel4_5.Labl.Caption:= MbOrTb(TotalMB);
SelectDirLabel4_6.Labl.Caption:= MbOrTb(FreeMB);
if not ComponentPageAvai then
begin
SelectDirLabel4_7.Labl.Caption := MbOrTb(RequiredSize);
SelectDirLabel4_8.Labl.Caption := MbOrTb(RecommendedSize);
end else begin
SelectDirLabel4_7.Labl.Caption := MbOrTb((RequiredSize-TotalComponentSizes)+ComponentSizes);
SelectDirLabel4_8.Labl.Caption := MbOrTb((RecommendedSize-TotalComponentSizes)+ComponentSizes)
end;
if WizardForm.CurPageID = wpSelectDir then begin
if not ComponentPageAvai then
begin
WizardForm.NextButton.Enabled:= (FreeMB>RequiredSize);
ButtonSetEnabled(NextBtn,(FreeMB>RequiredSize));
end else begin
WizardForm.NextButton.Enabled:= (FreeMB>(RequiredSize-TotalComponentSizes)+ComponentSizes);
ButtonSetEnabled(NextBtn,(FreeMB>(RequiredSize-TotalComponentSizes)+ComponentSizes));
end;
end;
CreateShadow(SelectDirLabel3_1,False);
CreateShadow(SelectDirLabel4_1,False);
CreateShadow(SelectDirLabel4_2,False);
CreateShadow(SelectDirLabel4_3,False);
CreateShadow(SelectDirLabel4_4,False);
CreateShadow(SelectDirLabel4_5,False);
CreateShadow(SelectDirLabel4_6,False);
CreateShadow(SelectDirLabel4_7,False);
CreateShadow(SelectDirLabel4_8,False);
end;

procedure SerialEditKeyUp1(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if Length(SerialEdit1.Text) = 4 then
WizardForm.ActiveControl := SerialEdit2;
end;

procedure SerialEditKeyUp2(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if Length(SerialEdit2.Text) = 4 then
WizardForm.ActiveControl := SerialEdit3;
end;

procedure SerialEditKeyUp3(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if Length(SerialEdit3.Text) = 4 then
WizardForm.ActiveControl := SerialEdit4;
end;

procedure SerialEditKeyUp4(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
if Length(SerialEdit4.Text) = 4 then
WizardForm.ActiveControl := SerialEdit5;
end;

function SerialConfirm:Boolean;
var
x: Integer;
begin
x:=0;
Result:=False;
repeat
x:= x + 1;
Result:=(SerialEdit1.Text=ButtonFontUpperCaser(SerialCodes[x - 1].S1))
and (SerialEdit2.Text=ButtonFontUpperCaser(SerialCodes[x - 1].S2))
and (SerialEdit3.Text=ButtonFontUpperCaser(SerialCodes[x - 1].S3))
and (SerialEdit4.Text=ButtonFontUpperCaser(SerialCodes[x - 1].S4))
and (SerialEdit5.Text=ButtonFontUpperCaser(SerialCodes[x - 1].S5));
until (Result = True) or(x = GetArrayLength(SerialCodes));
end;

procedure AllCancel1;
begin
if AlreadyCanceled = False then begin
SetWindowLong(WizardForm.ProgressGauge.Handle,-4,PBOldProc);
ImgApplyChanges(WizardForm.Handle);
AlreadyCanceled := True;
end;
end;

procedure AllCancel2;
begin
if AlreadyCanceled = False then begin
InstallLabel3_3_1.Labl.Hide
InstallLabel3_3_2.Labl.Show
InstallLabel3_3_2.Labl.Caption:= FmtMessage(cm('InstallMessage3_3_3'), [ExpandConstant(' ')])
InstallLabel3_4.Labl.Hide;
InstallLabel3_1.Labl.Hide;
InstallLabel3_2.Labl.Hide;
CreateShadow(InstallLabel3_3_1,False);
CreateShadow(InstallLabel3_3_2,False);
CreateShadow(InstallLabel3_4,False);
CreateShadow(InstallLabel3_1,False);
CreateShadow(InstallLabel3_2,False);
SetWindowLong(WizardForm.ProgressGauge.Handle,-4,PBOldProc);
if CustomProgressGauge then
ImgPBDelete(Progress);
ImgApplyChanges(WizardForm.Handle);
AlreadyCanceled := True;
end;
end;

procedure AddReg;
var
BugFix: String;
begin
#sub AddReg
#define ARootKey ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "RegistrySettings", "Registry" + Str(i) + "Root", "")
#define ASubKey ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "RegistrySettings", "Registry" + Str(i) + "SubKey", "")
#define AValueType ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "RegistrySettings", "Registry" + Str(i) + "ValueType", "")
#define AValueName ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "RegistrySettings", "Registry" + Str(i) + "ValueName", "")
#define AValueData ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "RegistrySettings", "Registry" + Str(i) + "ValueData", "")
#define ALanguage ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "RegistrySettings", "Registry" + Str(i) + "Languages", "")
if (('{#ALanguage}' = '') or (LanguageTranslator('{#ALanguage}') = ActiveLanguage)) then
begin
BugFix:='{#AValueData}'
StringChangeEx(BugFix,'***','"',True);
if Pos('64','{#ARootKey}') = 0 then
begin
#if AValueType == "String"
RegWriteStringValue({#ARootKey}, '{#ASubKey}', '{#AValueName}', ConstConv(BugFix));
#endif
#if AValueType == "DWORD"
RegWriteDWordValue({#ARootKey}, '{#ASubKey}', '{#AValueName}',{#AValueData});
#endif
#if AValueType == "Binary"
RegWriteBinaryValue({#ARootKey}, '{#ASubKey}', '{#AValueName}',{#AValueData});
#endif
end;
if (Pos('64','{#ARootKey}') <> 0) and (IsWin64 = True) then
begin
#if AValueType == "String"
RegWriteStringValue({#ARootKey}, '{#ASubKey}', '{#AValueName}', ConstConv(BugFix));
#endif
#if AValueType == "DWORD"
RegWriteDWordValue({#ARootKey}, '{#ASubKey}', '{#AValueName}',{#AValueData});
#endif
#if AValueType == "Binary"
RegWriteBinaryValue({#ARootKey}, '{#ASubKey}', '{#AValueName}',{#AValueData});
#endif
end;
end;
#endsub

#if ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "RegistrySettings", "Registry1Root", "") != ""
#for {i = 1; ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "RegistrySettings", StringChange("RegistryIntRoot","Int", Str(i)), "") !=""; i++} AddReg
#endif
end;

procedure RemoveReg;
begin
#sub RemoveReg
#define RRootKey ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "RegistrySettings", "Registry" + Str(i) + "Root", "")
#define RSubKey ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "RegistrySettings", "Registry" + Str(i) + "SubKey", "")
#define RValueType ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "RegistrySettings", "Registry" + Str(i) + "ValueType", "")
#define RValueName ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "RegistrySettings", "Registry" + Str(i) + "ValueName", "")
#define RValueData ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "RegistrySettings", "Registry" + Str(i) + "ValueData", "")
#define RLanguage ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "RegistrySettings", "Registry" + Str(i) + "Languages", "")
if Pos('64','{#RRootKey}') = 0 then
begin
if (('{#RLanguage}' = '') or (LanguageTranslator('{#RLanguage}') = ActiveLanguage)) then
RegDeleteValue({#RRootKey}, '{#RSubKey}', '{#RValueName}');
RegDeleteKeyIfEmpty({#RRootKey}, '{#RSubKey}');
end;
if (Pos('64','{#RRootKey}') <> 0) and (IsWin64 = True) then
begin
if (('{#RLanguage}' = '') or (LanguageTranslator('{#RLanguage}') = ActiveLanguage)) then
RegDeleteValue({#RRootKey}, '{#RSubKey}', '{#RValueName}');
RegDeleteKeyIfEmpty({#RRootKey}, '{#RSubKey}');
end;
#endsub

#if ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "RegistrySettings", "Registry1Root", "") != ""
#for {i = 1; ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "RegistrySettings", StringChange("RegistryIntRoot","Int", Str(i)), "") !=""; i++} RemoveReg
#endif
end;

var
Label1, Label2, Label8: TLabl;
Edit2: TEdit;
FolderTreeView2: TFolderTreeView;

procedure DiskPromptOkBtnClick(Sender: TObject);
begin
sourcedir:=Edit2.Text;
ButtonModal(DiskPromptOkBtn);
end;

procedure DiskPromptCancelBtnClick(Sender: TObject);
begin
ButtonModal(DiskPromptCancelBtn)
end;

procedure DiskFolderChange(Sneder: TObject);
begin
Edit2.Text:=FolderTreeView2.Directory;
end;

procedure CreateDiskPrompt;
begin
DiskPromptForm:= CreateCustomForm();
with DiskPromptForm do begin
ClientWidth := ScaleX(550);
ClientHeight := ScaleY(300);
Center;
Color:=$252525;
FormStyle:= fsStayOnTop;
BringToFront;
Caption:=WizardForm.Caption;
end;

Label1.Labl:= TLabel.Create(DiskPromptForm);
with Label1.Labl do begin
AutoSize:=False
SetBounds(50, 30, 450, 40);
WordWrap:=True
Transparent:=True
Alignment:=TextOneCenter;
Font.Name:= TextOneFontName;
Font.Size:= TextOneFontSize;
Font.Color:=TextOneFontColor;
Caption:= SetupMessage(msgChangeDiskTitle);
Parent:=DiskPromptForm
end;

Label2.Labl:= TLabel.Create(DiskPromptForm);
with Label2.Labl do begin
AutoSize:=False
SetBounds(50, 55, 450, 200);
WordWrap:=True
Transparent:=True
Alignment:=TextTwoCenter;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Caption:= SetupMessage(msgSelectDirectoryLabel);
Parent:=DiskPromptForm
end;

Label8.Labl:= TLabel.Create(DiskPromptForm);
with Label8.Labl do begin
AutoSize:=False
SetBounds(50, 210, 450, 120);
WordWrap:=True
Transparent:=True
Alignment:=TextTwoCenter;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Parent:=DiskPromptForm
end;

CreateShadow(Label1,True);
CreateShadow(Label2,True);
CreateShadow(Label8,True);

Edit2:= TEdit.Create(DiskPromptForm);
with Edit2 do begin
SetBounds(50, 90, 450, 21);
Parent := DiskPromptForm;
Text:=ExpandConstant('{src}');
end;

FolderTreeView2 := TFolderTreeView.Create(DiskPromptForm);
with FolderTreeView2 do
begin
SetBounds(50, 115, 450, 90);
Parent := DiskPromptForm;
OnChange:= @DiskFolderChange;
end;

if DialogWizardImage then
begin
ImgLoad(DiskPromptForm.Handle,ExpandConstant('{tmp}\Dialog.jpg'),ScaleX(0), ScaleY(0),DiskPromptForm.ClientWidth,DiskPromptForm.ClientHeight,True,True)
if DialogWizardBackground then
ImgLoad(DiskPromptForm.Handle,ExpandConstant('{tmp}\DialogTextBackground.png'),ScaleX(25), ScaleY(25),500,215,True,True);
end;
DiskPromptOkBtn:=ButtonCreate(DiskPromptForm,305,250,ScaleX(100),ScaleY(30),ExpandConstant('{tmp}\SmallButton.png'),ExpandConstant('{tmp}\SmallButtonSelected.png'),ExpandConstant('{tmp}\SmallButtonClicked.png'),ExpandConstant('{tmp}\SmallButtonDisabled.png'),mrOk)
ButtonSetText(DiskPromptOkBtn,SetupMessage(msgButtonOk));
ButtonSetFont(DiskPromptOkBtn,SmallButtonFontName,SmallButtonFontSize,SmallButtonFontSizeSelected,SmallButtonFontSizeClicked,SmallButtonFontSizeDisabled);
ButtonSetFontStyle(DiskPromptOkBtn,SmallButtonFontBold,SmallButtonFontItalic,SmallButtonFontUnderline,SmallButtonFontStrikeOut,SmallButtonFontUppercase);
ButtonSetTextAlignment(DiskPromptOkBtn,SmallButtonTextHorzAlign,SmallButtonTextVertAlign,SmallButtonTextOffsetX,SmallButtonTextOffsetY);
ButtonSetFontColor(DiskPromptOkBtn,SmallButtonFontColor,SmallButtonFontColorSelected,SmallButtonFontColorClicked,SmallButtonFontColorDisabled);
ButtonSetEvent(DiskPromptOkBtn,@DiskPromptOkBtnClick);

DiskPromptCancelBtn:=ButtonCreate(DiskPromptForm,425,250,ScaleX(100),ScaleY(30),ExpandConstant('{tmp}\SmallButton.png'),ExpandConstant('{tmp}\SmallButtonSelected.png'),ExpandConstant('{tmp}\SmallButtonClicked.png'),ExpandConstant('{tmp}\SmallButtonDisabled.png'),mrCancel)
ButtonSetText(DiskPromptCancelBtn,SetupMessage(msgButtonCancel));
ButtonSetFont(DiskPromptCancelBtn,SmallButtonFontName,SmallButtonFontSize,SmallButtonFontSizeSelected,SmallButtonFontSizeClicked,SmallButtonFontSizeDisabled);
ButtonSetFontStyle(DiskPromptCancelBtn,SmallButtonFontBold,SmallButtonFontItalic,SmallButtonFontUnderline,SmallButtonFontStrikeOut,SmallButtonFontUppercase);
ButtonSetTextAlignment(DiskPromptCancelBtn,SmallButtonTextHorzAlign,SmallButtonTextVertAlign,SmallButtonTextOffsetX,SmallButtonTextOffsetY);
ButtonSetFontColor(DiskPromptCancelBtn,SmallButtonFontColor,SmallButtonFontColorSelected,SmallButtonFontColorClicked,SmallButtonFontColorDisabled);
ButtonSetEvent(DiskPromptCancelBtn,@DiskPromptCancelBtnClick);
ButtonApplyChanges(DiskPromptForm);
ImgApplyChanges(DiskPromptForm.Handle);
end;

function ShowDiskPromptBox(Disk, ArcName: String):Integer;
begin
Label8.Labl.Caption:=FmtMessage(cm('InstallMessage3_5'),[Disk]) + ' ' + FmtMessage(cm('CommonMessages3_1'),[ExtractFileName(ArcName)]);
CreateShadow(Label8,False);
#ifexist "Temp\Resources\Dialog.jpg"
Result:=DiskPromptForm.ShowModal;
#else
if BrowseForFolder(Label8.Labl.Caption,sourcedir,False) then
Result:=mrOk
else
Result:=mrCancel;
#endif
end;

procedure CreditsOkBtnClick(Sender: TObject);
begin
ButtonModal(CreditsOkBtn);
end;

var
Label6, Label7: TLabl;

procedure CreateCredits;
begin
CreditsForm:= CreateCustomForm();
with CreditsForm do begin
ClientWidth := ScaleX(550);
ClientHeight := ScaleY(300);
Center;
Color:=$252525;
FormStyle:= fsStayOnTop;
BringToFront;
Caption:=WizardForm.Caption;
end;

Label6.Labl:= TLabel.Create(CreditsForm);
with Label6.Labl do begin
AutoSize:=False
SetBounds(50, 30, 450, 40);
WordWrap:=True
Transparent:=True
Alignment:=TextOneCenter;
Font.Name:= TextOneFontName;
Font.Size:= TextOneFontSize;
Font.Color:=TextOneFontColor;
Caption:= ExpandConstant('{cm:CreditsMessage1_1}');
Parent:=CreditsForm
end;

Label7.Labl:= TLabel.Create(CreditsForm);
with Label7.Labl do begin
AutoSize:=False
SetBounds(50, 55, 450, 120);
WordWrap:=True
Transparent:=True
Alignment:=TextTwoCenter;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Parent:=CreditsForm
end;

CreateShadow(Label6,True);
CreateShadow(Label7,True);

if DialogWizardImage then
begin
ImgLoad(CreditsForm.Handle,ExpandConstant('{tmp}\Dialog.jpg'),ScaleX(0), ScaleY(0),CreditsForm.ClientWidth,CreditsForm.ClientHeight,True,True);
if DialogWizardBackground then
ImgLoad(CreditsForm.Handle,ExpandConstant('{tmp}\DialogTextBackground.png'),ScaleX(25), ScaleY(25),500,215,True,True)
end;
CreditsOkBtn:=ButtonCreate(CreditsForm,425,250,ScaleX(100),ScaleY(30),ExpandConstant('{tmp}\SmallButton.png'),ExpandConstant('{tmp}\SmallButtonSelected.png'),ExpandConstant('{tmp}\SmallButtonClicked.png'),ExpandConstant('{tmp}\SmallButtonDisabled.png'),mrOk)
ButtonSetText(CreditsOkBtn,SetupMessage(msgButtonOk));
ButtonSetFont(CreditsOkBtn,SmallButtonFontName,SmallButtonFontSize,SmallButtonFontSizeSelected,SmallButtonFontSizeClicked,SmallButtonFontSizeDisabled);
ButtonSetFontStyle(CreditsOkBtn,SmallButtonFontBold,SmallButtonFontItalic,SmallButtonFontUnderline,SmallButtonFontStrikeOut,SmallButtonFontUppercase);
ButtonSetTextAlignment(CreditsOkBtn,SmallButtonTextHorzAlign,SmallButtonTextVertAlign,SmallButtonTextOffsetX,SmallButtonTextOffsetY);
ButtonSetFontColor(CreditsOkBtn,SmallButtonFontColor,SmallButtonFontColorSelected,SmallButtonFontColorClicked,SmallButtonFontColorDisabled);
ButtonSetEvent(CreditsOkBtn,@CreditsOkBtnClick);
ButtonApplyChanges(CreditsForm);
ImgApplyChanges(CreditsForm.Handle);
end;

function ShowCreditsBox:Integer;
var
C1, C2: String;
begin
C1:=ExpandConstant('{cm:CreditsMessage2_1}');
C2:=ExpandConstant('{cm:CreditsMessage2_2}');
StringChangeEx(C1,'%1','Installer Creator',True);
StringChangeEx(C2,'%1','Installer Creator',True);
StringChangeEx(C2,'%2','Fileforums',True);
Label7.Labl.Caption:=C1 + #13#13 + C2;
CreateShadow(Label7,False);
Result:=CreditsForm.ShowModal;
end;

procedure ISDoneFiles;
var
  SetupDB: string;
  TempISDone: string;
  SevenZipCommand: string;
  ErrorCode: integer;
begin
  ExtractTemporaryFile('uha.exe');
  ExtractTemporaryFile('english.ini');
  SetupDB := ExpandConstant('{src}\Setup.db');
  TempISDone := ExpandConstant('{tmp}');
  SevenZipCommand := 'x -t"' + TempISDone + '" "' + SetupDB + '"';

  Exec(ExpandConstant('{tmp}\uha.exe'), SevenZipCommand, TempISDone, SW_HIDE, ewWaitUntilTerminated, ErrorCode);
end;

procedure MC_V2;
var
Data: array of TData;
i, x, MsgResult: Integer;
OggFile, MergeFile: String;
begin
SourceDir := ExpandConstant('{src}');
ISDoneError:=false;
SplitPct:=0;
if ISDoneInit(ExpandConstant('{tmp}\records.inf'), $F777, 0,0,0, MainForm.Handle, PerformanceChanger, @ProgressCallback) then
repeat
ChangeLanguage('English');
if not SrepInit(ExpandConstant('{app}'),PerformanceChangerSREP,0) then
ISDoneError := True;
if not PrecompInit(ExpandConstant('{app}'),PerformanceChangerPCF,0) then
ISDoneError := True;
if not FileSearchInit(true) then
ISDoneError := True;
i:=0;
repeat
i := i + 1;
if GetIniString('MC' + IntToStr(i),'Type','',ExpandConstant('{src}\MC.ini')) <> '' then
begin
SetArrayLength(Data,i);
SetArrayLength(Data[i - 1].Arc,7);
end;
until GetIniString('MC' + IntToStr(i),'Type','',ExpandConstant('{src}\MC.ini')) = '';
i:=0;
repeat
i := i + 1;
if GetIniString('MC' + IntToStr(i),'Type','',ExpandConstant('{src}\MC.ini')) <> '' then
begin
Data[i - 1].Arc[0]:=GetIniString('MC' + IntToStr(i),'Type','',ExpandConstant('{src}\MC.ini'));
Data[i - 1].Arc[1]:=GetIniString('MC' + IntToStr(i),'Source','',ExpandConstant('{src}\MC.ini'));
Data[i - 1].Arc[2]:=ExpandConstant(GetIniString('MC' + IntToStr(i),'Output','',ExpandConstant('{src}\MC.ini')));
Data[i - 1].Arc[3]:=GetIniString('MC' + IntToStr(i),'Disk','',ExpandConstant('{src}\MC.ini'));
Data[i - 1].Arc[4]:=GetIniString('MC' + IntToStr(i),'Component','0',ExpandConstant('{src}\MC.ini'));
Data[i - 1].Arc[5]:=GetIniString('MC' + IntToStr(i),'Task','0',ExpandConstant('{src}\MC.ini'));
Data[i - 1].Arc[6]:=GetIniString('MC' + IntToStr(i),'Language','',ExpandConstant('{src}\MC.ini'));
end;
until GetIniString('MC' + IntToStr(i),'Type','',ExpandConstant('{src}\MC.ini')) = '';
WizardForm.ProgressGauge.Position:=0;
Wizardform.ProgressGauge.Max:=0;
i:=0;
if Data[0].Arc[0] <> '' then
begin
repeat
i:= i + 1;
if ((Data[i - 1].Arc[6] = '') or (LanguageTranslator(Data[i - 1].Arc[6]) = ActiveLanguage)) and ( ComponentsCheckFA(StrToInt(Data[i - 1].Arc[4]))) and (TaskCheckFA(StrToInt(Data[i - 1].Arc[5]))) then
begin
Wizardform.ProgressGauge.Max:=Wizardform.ProgressGauge.Max + 1000;
end;
until i = GetArrayLength(Data);
end;
i := 0;
if Data[0].Arc[0] <> '' then
begin
repeat
i:= i + 1;
if ((Data[i - 1].Arc[6] = '') or (LanguageTranslator(Data[i - 1].Arc[6]) = ActiveLanguage)) and (ComponentsCheckFA(StrToInt(Data[i - 1].Arc[4]))) and (TaskCheckFA(StrToInt(Data[i - 1].Arc[5]))) then
begin
if Data[i - 1].Arc[0] = 'Freearc' then
begin
if not FileExists(UpdateSource(Data[i - 1].Arc[1],SourceDir)) then
begin
repeat
MsgResult:=ShowDiskPromptBox(ExtractFileName(Data[i - 1].Arc[3]),ExtractFileName(Data[i - 1].Arc[1]));
if MsgResult = mrCancel then
WizardForm.CancelButton.OnClick(nil);
until (FileExists(UpdateSource(Data[i - 1].Arc[1],SourceDir)) = True) or (ISDoneError = True);
end;
if ISDoneError = False then
if not ISArcExtract(0, 0, UpdateSource(Data[i - 1].Arc[1],SourceDir), Data[i - 1].Arc[2], '', false, '',
ExpandConstant('{tmp}\arc.ini'), Data[i - 1].Arc[2], false) then
ISDoneError := True;
end;
if Data[i - 1].Arc[0] = '7Zip' then
begin
if not FileExists(UpdateSource(Data[i - 1].Arc[1],SourceDir)) then
begin
repeat
MsgResult:=ShowDiskPromptBox(ExtractFileName(Data[i - 1].Arc[3]),ExtractFileName(Data[i - 1].Arc[1]));
if MsgResult = mrCancel then
WizardForm.CancelButton.OnClick(nil);
until (FileExists(UpdateSource(Data[i - 1].Arc[1],SourceDir)) = True) or (ISDoneError = True);
end;
if ISDoneError = False then
if not IS7ZipExtract(0, 0, UpdateSource(Data[i - 1].Arc[1],SourceDir), Data[i - 1].Arc[2], false, '') then
ISDoneError := True;
end;
if Data[i - 1].Arc[0] = 'Rar' then
begin
if not FileExists(UpdateSource(Data[i - 1].Arc[1],SourceDir)) then
begin
repeat
MsgResult:=ShowDiskPromptBox(ExtractFileName(Data[i - 1].Arc[3]),ExtractFileName(Data[i - 1].Arc[1]));
if MsgResult = mrCancel then
WizardForm.CancelButton.OnClick(nil);
until (FileExists(UpdateSource(Data[i - 1].Arc[1],SourceDir)) = True) or (ISDoneError = True);
end;
if ISDoneError = False then
if not ISRarExtract(0, 0, UpdateSource(Data[i - 1].Arc[1],SourceDir), Data[i - 1].Arc[2], false, '') then
ISDoneError := True;
end;
if ISDoneError = True then
break;
end;
until i = GetArrayLength(Data);
end;
until true;
ISDoneStop;
end;

procedure CurStepChanged(CurStep: TSetupStep);
var
PCF, arcstr, rediststr: String;
redist1str, redist2str, redist1str64, redist2str64: Array of String;
X: Integer;
begin
FileCopy(ExpandConstant('{tmp}\FirewallInstallHelper.dll'),ExpandConstant('{app}\FirewallInstallHelper.dll'),False);
FileCopy(ExpandConstant('{tmp}\GameuxInstallHelper.dll'),ExpandConstant('{app}\GameuxInstallHelper.dll'),False);
if CurStep = ssInstall then begin
ISDoneFiles;
#define PCF ReadIni(SourcePath	+ "\Temp\Setup.ini", "ExternalMedia", "PrecompVer", "0.42")
PCF:='{#PCF}';
OveralPct:=0;
InstallLabel3_3_1.Labl.Show;
InstallLabel3_4.Labl.Show;
InstallLabel3_1.Labl.Show;
InstallLabel3_2.Labl.Show;
CreateShadow(InstallLabel3_3_1,False);
CreateShadow(InstallLabel3_4,False);
CreateShadow(InstallLabel3_1,False);
CreateShadow(InstallLabel3_2,False);
OldPosition:=0;
CurrentImage:=0;
if CustomProgressGauge then
begin
Wizardform.ProgressGauge.Hide;
if ShowBGFullscreen2 then begin
Progress:=ImgPBCreate(WizardForm.Handle, ExpandConstant('{tmp}\ProgressBackground.png'), ExpandConstant('{tmp}\ProgressImage.png'),SmallTextPositionLeft+ScaleX(25), SmallTextPositionTop+SmallTextPositionHeight*13/32, SmallTextPositionWidth-ScaleX(50), ScaleY(12));
end;
if not ShowBGFullscreen2 then begin
Progress:=ImgPBCreate(WizardForm.Handle, ExpandConstant('{tmp}\ProgressBackground.png'), ExpandConstant('{tmp}\ProgressImage.png'),TextPositionLeft+30, TextPositionTop+TextPositionHeight*7/16, TextPositionWidth-60, ScaleY(12));
end;
end;

ImgApplyChanges(WizardForm.Handle);
PBOldProc:=SetWindowLong(WizardForm.ProgressGauge.Handle,-4,CallBackProc(@PBProc,4));
Taskbar1_2;
#ifdef Task
for X:=0 to GetArrayLength(SelectTaskCheck1) - 1 do
begin
if BtnGetChecked(SelectTaskCheck1[x]) then begin
InstallLabel3_3_1.Labl.Caption :=FmtMessage(cm('InstallMessage3_3_2'), [Task[x].Name]);
CreateShadow(InstallLabel3_3_1,False);
if (ISWin64 = True) and (ExpandConstant(Task[x].Execute64) <> '') then
begin
BtnSetChecked(SelectTaskCheck1[x],False);
Exec(ExpandConstant(Task[x].Execute64), ExpandConstant(Task[x].Command64), '', SW_SHOW, ewWaitUntilTerminated, ResultCode);
end else begin
BtnSetChecked(SelectTaskCheck1[x],False);
Exec(ExpandConstant(Task[x].Execute), ExpandConstant(Task[x].Command), '', SW_SHOW, ewWaitUntilTerminated, ResultCode);
end;
end;
end;
#endif

#if ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "ExternalMedia", "Archive1Type", "") != ""
ISDoneError:=false;
if ISDoneInit(ExpandConstant('{tmp}\records.inf'), $F777, 0,0,0, MainForm.Handle, PerformanceChanger, @ProgressCallback) then begin
repeat
ChangeLanguage('English');
if not SrepInit(ExpandConstant('{app}'),PerformanceChangerSREP,0) then ISDoneError := True;
if not PrecompInit(ExpandConstant('{app}'),PerformanceChangerPCF,0) then ISDoneError := True;
if not FileSearchInit(true) then ISDoneError := True;

#sub Data1
SetArrayLength(Data,{#i});
SetArrayLength(Data[{#i} - 1].Arc,8);
#endsub
#if ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "ExternalMedia", "Archive1Type", "") != ""
#for {i = 1; ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "ExternalMedia", StringChange("ArchiveIntType","Int", Str(i)), "") !=""; i++} Data1
#endif
#sub Data2
#define DataInf1 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "ExternalMedia", "Archive" + Str(i) + "Type", "")
#define DataInf2 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "ExternalMedia", "Archive" + Str(i) + "Source", "")
#define DataInf3 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "ExternalMedia", "Archive" + Str(i) + "Output", "")
#define DataInf4 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "ExternalMedia", "Archive" + Str(i) + "Disk", "1")
#define DataInf5 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "ExternalMedia", "Archive" + Str(i) + "Language", "0")
#define DataInf6 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "ExternalMedia", "Archive" + Str(i) + "Component", "0")
#define DataInf7 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "ExternalMedia", "Archive" + Str(i) + "Task", "0")
#define DataInf8 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "ExternalMedia", "Archive" + Str(i) + "Password", "")
Data[{#i} - 1].Arc[0]:='{#DataInf1}';
Data[{#i} - 1].Arc[1]:=ExpandConstant('{#DataInf2}');
Data[{#i} - 1].Arc[2]:=ExpandConstant('{#DataInf3}');
Data[{#i} - 1].Arc[3]:='{#DataInf4}';
Data[{#i} - 1].Arc[4]:='{#DataInf5}';
Data[{#i} - 1].Arc[5]:='{#DataInf6}';
Data[{#i} - 1].Arc[6]:='{#DataInf7}';
Data[{#i} - 1].Arc[7]:='{#DataInf8}';
#endsub
#if ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "ExternalMedia", "Archive1Type", "") != ""
#for {i = 1; ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "ExternalMedia", StringChange("ArchiveIntType","Int", Str(i)), "") !=""; i++} Data2
#endif

Wizardform.ProgressGauge.Max:=0;
x:=0;
if Data[0].Arc[0] <> '' then
begin
repeat
x:= x + 1;
if ((Data[x - 1].Arc[4] = '') or (LanguageTranslator(Data[x - 1].Arc[4]) = ActiveLanguage)) and ( ComponentsCheckFA(StrToInt(Data[x - 1].Arc[5]))) and (TaskCheckFA(StrToInt(Data[x - 1].Arc[6]))) then
Wizardform.ProgressGauge.Max:=Wizardform.ProgressGauge.Max + 1000;
until x = GetArrayLength(Data);
end;

sourcedir:=Edit2.Text;

i := 0;
if Data[0].Arc[0] <> '' then
begin
repeat
i:= i + 1;
if Pos('{src}',Data[i - 1].Arc[1]) <> 0 then
arcstr:=ConstConv2(Data[i - 1].Arc[1],sourcedir)
else
arcstr:=ExpandConstant(Data[i - 1].Arc[1]);
if ((Data[i - 1].Arc[4] = '') or (LanguageTranslator(Data[i - 1].Arc[4]) = ActiveLanguage)) and (ComponentsCheckFA(StrToInt(Data[i - 1].Arc[5]))) and (TaskCheckFA(StrToInt(Data[i - 1].Arc[6]))) then
begin

if Data[i - 1].Arc[0] = 'Freearc' then
begin
if not FileExists(arcstr) then begin
repeat
if ShowDiskPromptBox(Data[i - 1].Arc[3],Data[i - 1].Arc[1]) = mrCancel then
ISDoneError := True;
if Pos('{src}',Data[i - 1].Arc[1]) <> 0 then
arcstr:=ConstConv2(Data[i - 1].Arc[1],sourcedir)
else
arcstr:=ExpandConstant(Data[i - 1].Arc[1]);
until (FileExists(arcstr) = True) or (ISDoneError = True)
end;
if ISDoneError = False then
if not ISArcExtract ( 0, 0, arcstr, Data[i - 1].Arc[2], '', false, Data[i - 1].Arc[7], ExpandConstant('{tmp}\arc.ini'), Data[i - 1].Arc[2], false) then ISDoneError := True;
end;

if Data[i - 1].Arc[0] = 'WinRAR' then
begin
if not FileExists(arcstr) then begin
repeat
if ShowDiskPromptBox(Data[i - 1].Arc[3],Data[i - 1].Arc[1]) = mrCancel then
ISDoneError := True;
if Pos('{src}',Data[i - 1].Arc[1]) <> 0 then
arcstr:=ConstConv2(Data[i - 1].Arc[1],sourcedir)
else
arcstr:=ExpandConstant(Data[i - 1].Arc[1]);
until (FileExists(arcstr) = True) or (ISDoneError = True)
end;
if ISDoneError = False then
if not ISRarExtract( 0, 0, arcstr, Data[i - 1].Arc[2], false, Data[i - 1].Arc[7]) then ISDoneError := True;
end;

if Data[i - 1].Arc[0] = '7Zip' then
begin
if not FileExists(arcstr) then begin
repeat
if ShowDiskPromptBox(Data[i - 1].Arc[3],Data[i - 1].Arc[1]) = mrCancel then
ISDoneError := True;
if Pos('{src}',Data[i - 1].Arc[1]) <> 0 then
arcstr:=ConstConv2(Data[i - 1].Arc[1],sourcedir)
else
arcstr:=ExpandConstant(Data[i - 1].Arc[1]);
until (FileExists(arcstr) = True) or (ISDoneError = True)
end;
if ISDoneError = False then
if not IS7ZipExtract ( 0, 0, arcstr,Data[i - 1].Arc[2], false, Data[i - 1].Arc[7]) then ISDoneError := True;
end;
end;

if ISDoneError = True then break ;
until i = GetArrayLength(Data);
end;
until true;
ISDoneStop;
end;
#endif
end;

if (CurStep = ssInstall) and (ISDoneError = False) and FileExists(ExpandConstant('{src}\MC.ini')) then
MC_V2;

SetTaskBarTitle(FmtMessage(ExpandConstant('{cm:OtherMessage3_2}'), [ApplicationName('')]));
WizardForm.Caption:=FmtMessage(ExpandConstant('{cm:OtherMessage3_2}'), [ApplicationName('')]);

if CurStep = ssPostInstall then begin
AllCancel1;
if ISDoneError then
FinishLabel2_1.Labl.Caption:= TextTwoFontUpperCaser(FmtMessage(cm('FinishMessage2_2'), [ApplicationName('')]))
else
FinishLabel2_1.Labl.Caption:= TextTwoFontUpperCaser(FmtMessage(cm('FinishMessage2_1'), [ApplicationName('')]));
end;
CreateShadow(FinishLabel2_1,False);
if (CurStep = ssPostInstall) and (ISDoneError = True) then 
begin
AllCancel2;
end;
if (CurStep = ssPostInstall) and (ISDoneError = False) then
begin
Taskbar1_2;
#if ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher1Name", "") != ""
i:=0;
repeat
i:=i + 1;
if (Version.Major >= 6) and (LaunchBinaries[i - 1] <> '') then
begin
GenerateGUID(GUID[i - 1]);
AddToGameExplorer(ExpandConstant(LaunchBinaries[0]), ExtractFileName(ExpandConstant(LaunchBinaries[i - 1])), 3, GUID[i - 1]);
if i = 1 then
CreateTask(3, GUID[0], 0, 0,'Play', ConstConv(ApplicationExecutable('')), '');
if i = 2 then
CreateTask(3, GUID[1], 0, 0,'Play', ConstConv(ApplicationExecutable2('')), '');
if i = 3 then
CreateTask(3, GUID[2], 0, 0,'Play', ConstConv(ApplicationExecutable3('')), '');
if i = 4 then
CreateTask(3, GUID[3], 0, 0,'Play', ConstConv(ApplicationExecutable4('')), '');
if i = 5 then
CreateTask(3, GUID[4], 0, 0,'Play', ConstConv(ApplicationExecutable5('')), '');
if i = 6 then
CreateTask(3, GUID[5], 0, 0,'Play', ConstConv(ApplicationExecutable6('')), '');
if i = 7 then
CreateTask(3, GUID[6], 0, 0,'Play', ConstConv(ApplicationExecutable7('')), '');
if i = 8 then
CreateTask(3, GUID[7], 0, 0,'Play', ConstConv(ApplicationExecutable8('')), '');
if i = 9 then
CreateTask(3, GUID[8], 0, 0,'Play', ConstConv(ApplicationExecutable9('')), '');
if i = 10 then
CreateTask(3, GUID[9], 0, 0,'Play', ConstConv(ApplicationExecutable10('')), '');
end;
until i = GetArrayLength(GUID);
#endif

if ConstConv(ExpandConstant('{code:ApplicationExecutable}')) <> '' then
AddApplicationToExceptionList(ConstConv(ExpandConstant('{code:ApplicationExecutable}')), ExtractFileName(ConstConv(ExpandConstant('{code:ApplicationExecutable}'))));

i:=1;
repeat
i:= i + 1;
if ConstConv(ExpandConstant('{code:ApplicationExecutable'+IntToStr(i)+'}')) <> '' then
AddApplicationToExceptionList(ConstConv(ExpandConstant('{code:ApplicationExecutable'+IntToStr(i)+'}')), ExtractFileName(ConstConv(ExpandConstant('{code:ApplicationExecutable'+IntToStr(i)+'}'))));
until i = 10;

RegWriteStringValue(HKLM, 'SOFTWARE\' + ApplicationPublisher('') + '\' + ApplicationName(''), 'InstallString', ExpandConstant('{app}'));
RegWriteStringValue(HKLM, 'SOFTWARE\' + ApplicationPublisher('') + '\' + ApplicationName(''), 'UninstallString', ExpandConstant('{uninstallexe}'));

InstallLabel3_3_1.Labl.Caption:=SetupMessage(msgStatusCreateRegistryEntries);
CreateShadow(InstallLabel3_3_1,False);
AddReg;
#ifdef Task
SetArrayLength(redist1str,GetArrayLength(SelectTaskCheck1));
SetArrayLength(redist2str,GetArrayLength(SelectTaskCheck1));
i:=0;
repeat
i:= i + 1;
rediststr:=Task[i - 1].Execute;
if Pos('{src}',rediststr) <> 0 then
redist1str[i - 1]:=ConstConv2(rediststr,sourcedir)
else
redist1str[i - 1]:=ExpandConstant(rediststr);
rediststr:=Task[i - 1].Command;
if Pos('{src}',rediststr) <> 0 then
redist2str[i - 1]:=ConstConv2(rediststr,sourcedir)
else
redist2str[i - 1]:=ExpandConstant(rediststr);
until i = GetArrayLength(SelectTaskCheck1);

SetArrayLength(redist1str64,GetArrayLength(SelectTaskCheck1));
SetArrayLength(redist2str64,GetArrayLength(SelectTaskCheck1));
i:=0;
repeat
i:= i + 1;
rediststr:=Task[i - 1].Execute64;
if Pos('{src}',rediststr) <> 0 then
redist1str64[i - 1]:=ConstConv2(rediststr,sourcedir)
else
redist1str64[i - 1]:=ExpandConstant(rediststr);
rediststr:=Task[i - 1].Command64;
if Pos('{src}',rediststr) <> 0 then
redist2str64[i - 1]:=ConstConv2(rediststr,sourcedir)
else
redist2str64[i - 1]:=ExpandConstant(rediststr);
until i = GetArrayLength(SelectTaskCheck1);

for X:=0 to GetArrayLength(SelectTaskCheck1) - 1 do
begin
if BtnGetChecked(SelectTaskCheck1[x]) then begin
InstallLabel3_3_1.Labl.Caption :=FmtMessage(cm('InstallMessage3_3_2'), [Task[X - 1].Name]);
CreateShadow(InstallLabel3_3_1,False);
if (ISWin64 = True) and (redist1str64[X] <> '') then
Exec(redist1str64[X], redist2str64[X], '', SW_SHOW, ewWaitUntilTerminated, ResultCode)
else
Exec(redist1str[X], redist2str[X], '', SW_SHOW, ewWaitUntilTerminated, ResultCode)
end;
end;
#endif
end;
if (CurStep = ssDone) and (ISDoneError =False) then
begin
#if ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "CfgINI", "INI1Filename", "") != ""
#sub INI1
SetArrayLength(Cfg,{#i});
SetArrayLength(Cfg[{#i} - 1].Ini,7);
#endsub
#if ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "CfgINI", "INI1Filename", "") != ""
#for {i = 1; ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "CfgINI", StringChange("INIIntFilename","Int", Str(i)), "") !=""; i++} INI1
#endif
#sub INI2
#define INIInf1 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "CfgINI", "INI" + Str(i) + "Filename", "")
#define INIInf2 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "CfgINI", "INI" + Str(i) + "Section", "")
#define INIInf3 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "CfgINI", "INI" + Str(i) + "Name", "")
#define INIInf4 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "CfgINI", "INI" + Str(i) + "Value", "")
#define INIInf5 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "CfgINI", "INI" + Str(i) + "Language", "0")
#define INIInf6 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "CfgINI", "INI" + Str(i) + "Component", "0")
#define INIInf7 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "CfgINI", "INI" + Str(i) + "Task", "0")
Cfg[{#i} - 1].Ini[0]:=ExpandConstant('{#INIInf1}');
Cfg[{#i} - 1].Ini[1]:=ExpandConstant('{#INIInf2}');
Cfg[{#i} - 1].Ini[2]:=ExpandConstant('{#INIInf3}');
Cfg[{#i} - 1].Ini[3]:=ExpandConstant('{#INIInf4}');
Cfg[{#i} - 1].Ini[4]:='{#INIInf5}';
Cfg[{#i} - 1].Ini[5]:='{#INIInf6}';
Cfg[{#i} - 1].Ini[6]:='{#INIInf7}';
#endsub
#if ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "CfgINI", "INI1Filename", "") != ""
#for {i = 1; ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "CfgINI", StringChange("INIIntFilename","Int", Str(i)), "") !=""; i++} INI2
#endif

x:=0;
if Cfg[0].Ini[0] <> '' then
begin
repeat
x:= x + 1;
if ((Cfg[x - 1].Ini[4] = '') or (LanguageTranslator(Cfg[x - 1].Ini[4]) = ActiveLanguage)) and ((Cfg[x - 1].Ini[5] = '') or ComponentsCheckFA(StrToInt(Cfg[x - 1].Ini[5]))) and ((Cfg[x - 1].Ini[6] = '') or TaskCheckFA(StrToInt(Cfg[x - 1].Ini[6]))) then
SetIniString(Cfg[x - 1].Ini[1],Cfg[x - 1].Ini[2],Cfg[x - 1].Ini[3],Cfg[x - 1].Ini[0]);
until x = GetArrayLength(Cfg);
end;
#endif
end;
if (CurStep = ssPostInstall) and (ISDoneError = True) then
Exec(ExpandConstant('{uninstallexe}'), '/VerySilent','', SW_HIDE, ewNoWait, n);

if CurStep = ssDone then
begin
SetTaskBarTitle(FmtMessage(ExpandConstant('{cm:OtherMessage3_2}'), [ApplicationName('')]));
WizardForm.Caption:=FmtMessage(ExpandConstant('{cm:OtherMessage3_2}'), [ApplicationName('')]);
end;
end;

function ShouldSkipPage(PageID: Integer): Boolean;
begin
if ((PageID=SystemPage.ID) and (SystemPageAvai = True)) or ((PageID=wpSelectProgramGroup) and (LauncherPageAvai = True)) or ((PageID=SelectPriorityPage.ID) and not (PriorityPageAvai)) or ((PageID=SelectComponentPage.ID) and not (ComponentPageAvai)) or ((PageID=SelectTasksPage.ID) and not (RedistPageAvai)) or ((PageID =PreviewPage.ID) and not PreviewAvai) or ((PageID=DownloadPage.ID) and (DownloadPageAvai)) or (PageID =wpSelectTasks) or
(((PageID = wpLicense) or (PageID = SystemPage.ID) or (PageID = wpInfoBefore) or (PageID = SelectComponentPage.ID) or (PageID = wpSelectDir) or (PageID = wpSelectProgramGroup) or (PageID = SelectPriorityPage.ID) or (PageID = SelectTasksPage.ID) or (PageID = wpReady) or (PageID = PreviewPage.ID)) and (FastInstall = 1)) or
((PageID =wpInfoAfter) and (ISDoneError = True)) or ((PageID =SerialPage.ID) and not SerialPageAvai) then
Result:=True
else
Result:=False;
end;

function SetupMessage2(MsgID: TSetupMessageID): String;
begin
Result := SetupMessage(MsgID);
StringChangeEx(Result, '[name]', ApplicationName(''), True);
StringChangeEx(Result, '[name/ver]', ApplicationVersion(''), True);
Result := Result
end;

function WindowsName: String;
begin
if Version.NTPlatform then begin
RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\Windows NT\CurrentVersion','ProductName', ProductName)
RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\Windows NT\CurrentVersion','EditionID', EditionID)
if Pos(EditionID, ProductName) <> 0 then 
SetLength(ProductName,Pos(EditionID, ProductName) - 1)
else
ProductName:= ProductName + ' ';
StringChange(ProductName, 'Microsoft ', '');
if Version.ServicePackMajor <> 0 then
Result := ProductName + 'Service Pack ' + InttoStr(Version.ServicePackMajor)
else begin
SetLength(ProductName,Length(ProductName) - 1)
Result := ProductName;
end;
end else
Result :=FmtMessage(cm('SystemMessage3_5_1'), [ExpandConstant(' ')]);
end;

function CPUConfig: String;
begin
RegQueryStringValue(HKLM, 'Hardware\Description\System\CentralProcessor\0', 'ProcessorNameString', CPUName)
Result :=CPUName
end;

function ProcessorCoreConverter(CoreNR : Integer): String;
begin
Case CoreNR of
1: Result:='Single';
2: Result:='Dual';
3: Result:='Triple';
4: Result:='Quad';
5: Result:='Penta';
6: Result:='Hexa';
7: Result:='Hepta';
8: Result:='Octa';
9: Result:='Nona';
10: Result:='Deca';
11: Result:='Hendeca';
12: Result:='Dodeca';
13: Result:='Trideca';
14: Result:='Tetradeca';
15: Result:='Pentadeca';
16: Result:='Hexadeca';
17: Result:='Heptadeca';
18: Result:='Octadeca';
19: Result:='Enneadeca';
20: Result:='Icosa';
else
Result:='Unknown';
end;
end;

Function Floater(Float: Extended; Value: Integer): String;
Begin
Result:= Format('%.'+IntToStr(Value)+'n', [Float]); StringChange(Result, ',', ',');
while ((Result[Length(Result)] = '0') or (Result[Length(Result)] = ',')) and (Pos(',', Result) > 0) do
SetLength(Result, Length(Result)-1);
End;

function RoundUp(Num: Integer): Integer;
var i, k: Integer;
begin
i:= trunc(Num/64); k:= 64*i;
if (k<Num) then i:=i+1;
k:= 64*i; Result:= k;
end;

function RAMSize: integer;
var
MemoryEx: TMemoryStatusEx;
DeviceValue: Cardinal;
begin
MemoryEx.dwLength := SizeOf(MemoryEx);
GlobalMemoryStatusEx(MemoryEx);
DeviceValue:= MemoryEx.dwTotalPhys/oneMB;
Result:= RoundUp(DeviceValue);
end;

function RAMSize2: integer;
var
MemoryEx: TMemoryStatusEx;
DeviceValue: Cardinal;
begin
MemoryEx.dwLength := SizeOf(MemoryEx);
GlobalMemoryStatusEx(MemoryEx);
DeviceValue:= MemoryEx.dwAvailPhys/oneMB;
Result:= RoundUp(DeviceValue);
end;

function VideoSize: Integer;
var
lpDisplayDevice: PDisplay_Device;
DeviceKey: String;
DeviceValue: Cardinal;
DeviceName: AnsiString;
begin
lpDisplayDevice.cb := SizeOf(lpDisplayDevice);
DeviceKey:= ''; n:= 0;
while not (EnumDisplayDevices(0, n, lpDisplayDevice, 0)and(lpDisplayDevice.StateFlags and 4 > 0))and(n < 127) do n:= n+1;
for n := 0 to 127 do DeviceKey:= DeviceKey + lpDisplayDevice.DeviceKey[n];
Delete(DeviceKey, Pos(Chr(0), DeviceKey), 127);
StringChange(DeviceKey, '\Registry\Machine\', '');
i := 1; DeviceValue := 0;
if RegQueryBinaryValue(HKLM, DeviceKey, 'HardwareInformation.MemorySize', DeviceName) then
for n := 1 to Length(DeviceName) do
begin
DeviceValue := DeviceValue + Ord(DeviceName[n])*i;
i := i*$100;
end else
if not RegQueryDWordValue(HKLM, DeviceKey, 'HardwareInformation.MemorySize', DeviceValue) then
RegQueryDWordValue(HKLM, DeviceKey + '\Info', 'VideoMemory', DeviceValue);
DeviceName:= '';
for n := 0 to 127 do DeviceName := DeviceName + lpDisplayDevice.DeviceString[n];
Delete(DeviceName, Pos( Chr(0), DeviceName ), 127);
Result:=RoundUp(DeviceValue/(1024*1024));
end;

function CPUDetails: String;
begin
if (TextPositionWidth<499) or (TextPositionWidth=499) then
Result:=Copy(DelSp(GetProcessorName), 0, Pos(' ',DelSp(GetProcessorName))) + ProcessorCoreConverter(GetArrayLength(Keys)) + ' Core ' + MHzToGHz(Round(GetProcessorFreq));
if ((TextPositionWidth<549) or (TextPositionWidth=549)) and not (TextPositionWidth<500) then
Result:=Copy(DelSp(GetProcessorName), 0, Pos(' ',DelSp(GetProcessorName))) + ProcessorCoreConverter(GetArrayLength(Keys)) + ' Core ' + MHzToGHz(Round(GetProcessorFreq))+' '+'('+inttostr(GetArrayLength(Keys))+' x '+MHztoGHz(Round(GetProcessorFreq))+')';
if (TextPositionWidth>549) then
Result:=DelSp(CPUConfig)+' '+'('+inttostr(GetArrayLength(Keys))+' x '+MHztoGHz(Round(GetProcessorFreq))+')';
end;

function RAMDetails: String;
begin
Result:=''+MBToGB(GetTotalRAMSize)+' '+cm('CommonMessages1_3')+' ('+MBToGB(GetFreeRAMSize)+' '+cm('CommonMessages1_1')+'/'+MBToGB(GetUsedRAMSize)+' '+cm('CommonMessages1_2')+')'
end;

function VideoDetails: String;
var
ResDetails: String;
begin
ResDetails:=inttostr(GetSystemMetrics(0))+' x '+inttostr(GetSystemMetrics(1));
if (TextPositionWidth<499) or (TextPositionWidth=499) then
Result:=DelSp(GetVideoCardName)+' ('+MBToGB(VideoSize)+' '+cm('SystemMessage3_3')+')';
if ((TextPositionWidth<574) or (TextPositionWidth=574)) and not (TextPositionWidth<500) then
Result:=DelSp(GetVideoCardName)+' ('+MBToGB(VideoSize)+') ('+'DX '+DxInfo+')';
if (TextPositionWidth>574) then
Result:=DelSp(GetVideoCardName)+' ('+MBToGB(VideoSize)+') ('+'DX '+DxInfo+') ('+ResDetails+')';
end;

function SoundDetails: String;
begin
if GetSoundCards = 0 then
Result:=FmtMessage(cm('SystemMessage3_4_1'), [ApplicationName('')])
else
Result:=GetSoundCardName;
end;

function OSDetails: String;
begin
if (TextPositionWidth<499) or (TextPositionWidth=499) then
Result:=WindowsName +' ('+ inttostr (GetOsBit)+' '+FmtMessage(cm('ConversionUnit6_1'), [ExpandConstant(' ')])+')'
else
Result:=WindowsName +' (' + GetOSEditionID +') ('+ inttostr (GetOsBit)+' '+FmtMessage(cm('ConversionUnit6_1'), [ExpandConstant(' ')])+')';
end;

procedure CreatePageComponents;
var
Position: TRect;
begin
rt:=0;
rt1:=0;
rt2:=0;
rt3:=0;
rt4:=0;
rt5:=0;

IDPForm.Status := TNewStaticText.Create(WizardForm);
with IDPForm.Status do
begin
Parent := WizardForm;
Caption := '';
SetBounds(0,0,0,0)
Visible:=False;
end;

IDPForm.ElapsedTime := TNewStaticText.Create(WizardForm);
with IDPForm.ElapsedTime do
begin
Parent := WizardForm;
Caption := '';
SetBounds(0,0,0,0)
Visible:=False;
end;

IDPForm.RemainingTime := TNewStaticText.Create(WizardForm);
with IDPForm.RemainingTime do
begin
Parent := WizardForm;
Caption := '';
SetBounds(0,0,0,0)
Visible:=False;
end;

IDPForm.TotalDownloaded := TNewStaticText.Create(WizardForm);
with IDPForm.TotalDownloaded do
begin
Parent := WizardForm;
Caption := '';
SetBounds(0,0,0,0)
Visible:=False;
end;

SerialPage:=CreateCustomPage(wpWelcome, ExpandConstant(''), ExpandConstant(''));
SystemPage:=CreateCustomPage(wpLicense, ExpandConstant(''), ExpandConstant(''));
SelectComponentPage:=CreateCustomPage(wpInfoBefore, ExpandConstant(''), ExpandConstant(''));
PreviewPage:=CreateCustomPage(wpSelectProgramGroup, ExpandConstant(''), ExpandConstant(''));
SelectPriorityPage := CreateCustomPage(PreviewPage.ID, ExpandConstant(''), ExpandConstant(''));
SelectTasksPage := CreateCustomPage(SelectPriorityPage.ID, ExpandConstant(''), ExpandConstant(''));
DownloadPage := CreateCustomPage(wpReady, ExpandConstant(''), ExpandConstant(''));

SystemPageFont:=TFont.Create;
SystemPageFont.Name:= TextFontName;
SystemPageFont.Size:=TextOneFontSize - 1;
SystemPageFont.Color:=$FFFFFF;

SystemPageFont2:=TFont.Create;
SystemPageFont2.Name:= TextFontName;
SystemPageFont2.Size:=TextOneFontSize - 2;
SystemPageFont2.Color:=$FFFFFF;

WelcomeLabel1_1.Labl:=TLabel.Create(WizardForm);
with WelcomeLabel1_1.Labl do begin
AutoSize:=False
SetBounds(TextPositionLeft +25, TextPositionTop+TextPositionHeight*1/16, TextPositionWidth-50, TextPositionHeight);
WordWrap:=True
Transparent:=True
Alignment:=TextOneCenter;
Font.Name:= TextOneFontName;
Font.Size:= TextOneFontSize;
Font.Color:=TextOneFontColor;
Caption:= TextOneFontUpperCaser(FmtMessage(cm('WelcomeMessage1_1'), [ApplicationName('')]));
Parent:=WizardForm
OnMouseDown := @MainAreaMouseDown;
end;

WelcomeLabel2_1.Labl:=TLabel.Create(WizardForm);
with WelcomeLabel2_1.Labl do begin
AutoSize:=False
SetBounds(TextPositionLeft+25, TextPositionTop+TextPositionHeight*3/16, TextPositionWidth-50, TextPositionHeight);
WordWrap:=True
Transparent:=True
Alignment:=TextTwoCenter;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Caption:= TextTwoFontUpperCaser(FmtMessage(#10+cm('WelcomeMessage2_1'), [ApplicationName('')]))
Parent:=WizardForm
OnMouseDown := @MainAreaMouseDown;
end;

SerialLabel1_1.Labl:=TLabel.Create(WizardForm);
with SerialLabel1_1.Labl do begin
AutoSize:=False
SetBounds(TextPositionLeft +25, TextPositionTop+TextPositionHeight*1/16, TextPositionWidth-50, TextPositionHeight);
WordWrap:=True
Transparent:=True
Alignment:=TextOneCenter;
Font.Name:= TextOneFontName;
Font.Size:= TextOneFontSize;
Font.Color:=TextOneFontColor;
Caption:= TextOneFontUpperCaser(FmtMessage(cm('SerialMessage1_1'), [ApplicationName('')]));
Parent:=WizardForm
OnMouseDown := @MainAreaMouseDown;
end;

SerialLabel2_1.Labl:=TLabel.Create(WizardForm);
with SerialLabel2_1.Labl do begin
AutoSize:=False
SetBounds(TextPositionLeft+25, TextPositionTop+TextPositionHeight*3/16, TextPositionWidth-50, TextPositionHeight);
WordWrap:=True
Transparent:=True
Alignment:=TextTwoCenter;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Caption:= TextTwoFontUpperCaser(FmtMessage(#10+cm('SerialMessage2_1'), [ApplicationName('')]))
Parent:=WizardForm
OnMouseDown := @MainAreaMouseDown;
end;

se:=(TextPositionWidth-((TextPositionWidth-405)))/5;

SerialEdit1 := TNewEdit.Create(WizardForm);
with SerialEdit1 do
begin
Parent := WizardForm;
SetBounds(TextPositionLeft+ ((TextPositionWidth-405)/2) + (se * 0) + 15,TextPositionTop+TextPositionHeight*11/16,ScaleX(53),ScaleY(21))
OnKeyUp :=@SerialEditKeyUp1;
CharCase := ecUpperCase;
MaxLength:=4;
AutoSize:=False;
Font.Name:='Arial';
Font.Style:=[fsBold];
Font.Size:=12;
end;

SerialEdit2 := TNewEdit.Create(WizardForm);
with SerialEdit2 do
begin
Parent := WizardForm;
SetBounds(TextPositionLeft+ ((TextPositionWidth-405)/2) + (se * 1) + 15,TextPositionTop+TextPositionHeight*11/16,ScaleX(53),ScaleY(21))
OnKeyUp :=@SerialEditKeyUp2;
CharCase := ecUpperCase;
MaxLength:=4;
AutoSize:=False;
Font.Name:='Arial';
Font.Style:=[fsBold];
Font.Size:=12;
end;

SerialEdit3 := TNewEdit.Create(WizardForm);
with SerialEdit3 do
begin
Parent := WizardForm;
SetBounds(TextPositionLeft+ ((TextPositionWidth-405)/2) + (se * 2) + 15,TextPositionTop+TextPositionHeight*11/16,ScaleX(53),ScaleY(21))
OnKeyUp :=@SerialEditKeyUp3;
CharCase := ecUpperCase;
MaxLength:=4;
AutoSize:=False;
Font.Name:='Arial';
Font.Style:=[fsBold];
Font.Size:=12;
end;

SerialEdit4 := TNewEdit.Create(WizardForm);
with SerialEdit4 do
begin
Parent := WizardForm;
SetBounds(TextPositionLeft+ ((TextPositionWidth-405)/2) + (se * 3) + 15,TextPositionTop+TextPositionHeight*11/16,ScaleX(53),ScaleY(21))
OnKeyUp :=@SerialEditKeyUp4;
CharCase := ecUpperCase;
MaxLength:=4;
AutoSize:=False;
Font.Name:='Arial';
Font.Style:=[fsBold];
Font.Size:=12;
end;

SerialEdit5 := TNewEdit.Create(WizardForm);
with SerialEdit5 do
begin
Parent := WizardForm;
SetBounds(TextPositionLeft+ ((TextPositionWidth-405)/2) + (se * 4) + 15,TextPositionTop+TextPositionHeight*11/16,ScaleX(53),ScaleY(21))
CharCase := ecUpperCase;
MaxLength:=4;
AutoSize:=False;
Font.Name:='Arial';
Font.Style:=[fsBold];
Font.Size:=12;
end;

SerialBevel := TBevel.Create(WizardForm);
with SerialBevel do
begin
Parent := WizardForm;
SetBounds(TextPositionLeft+((TextPositionWidth-405)/2),TextPositionTop+TextPositionHeight*11/16-10,ScaleX(405),ScaleY(21)+20)
Shape := bsBox;
end;

LicenseLabel1_1.Labl:=TLabel.Create(WizardForm);
with LicenseLabel1_1.Labl do begin
AutoSize:=False
SetBounds(TextPositionLeft +25, TextPositionTop+TextPositionHeight*1/16, TextPositionWidth-50, TextPositionHeight);
WordWrap:=True
Transparent:=True
Alignment:=TextOneCenter;
Font.Name:= TextOneFontName;
Font.Size:= TextOneFontSize;
Font.Color:=TextOneFontColor;
Caption:= TextOneFontUpperCaser(FmtMessage(cm('LicenseMessage1_1'), [ApplicationName('')]))
Parent:=WizardForm
OnMouseDown := @MainAreaMouseDown;
end;

LicenseLabel2_1.Labl := TLabel.Create(WizardForm);
with LicenseLabel2_1.Labl do begin
AutoSize:=False;
SetBounds(TextPositionLeft+25, TextPositionTop+TextPositionHeight*3/16, TextPositionWidth-50, TextPositionHeight);
WordWrap:= True;
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Alignment:=TextTwoCenter;
Caption:= TextTwoFontUpperCaser(FmtMessage(cm('LicenseMessage2_1'), [ApplicationName('')]))
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

with WizardForm.LicenseMemo do
begin
Left := TextPositionLeft +30;
Top :=TextPositionTop +TextPositionHeight*6/16;
Width :=TextPositionWidth-60;
Height :=TextPositionHeight*7/16;
Parent:=WizardForm;
end;

if FileExists(ExpandConstant('{tmp}\CheckBox.png')) then
begin
LicenseCheck1_1:=BtnCreate(WizardForm.Handle,TextPositionLeft +30,TextPositionTop+TextPositionHeight*14/16,13,13,ExpandConstant('{tmp}\CheckBox.png'),0,True);
BtnSetEvent(LicenseCheck1_1,BtnClickEventID,WrapBtnCallback(@LicenseCheckButtonOnClick,1));
BtnSetEvent(LicenseCheck1_1,BtnMouseEnterEventID,WrapBtnCallback(@ButtonSoundSelected,1));
BtnSetChecked(LicenseCheck1_1,False);
BtnSetCursor(LicenseCheck1_1,LoadCursorFromFile(ExpandConstant('')));
end;

LicenseLabel3_1.Labl:=TLabel.Create(WizardForm);
with LicenseLabel3_1.Labl do begin
Layout:=tlCenter;
Autosize:=False;
SetBounds(TextPositionLeft +50, TextPositionTop+TextPositionHeight*14/16 - CBLabl, TextPositionWidth-100,CBSpace);
Transparent:=True
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Caption:= FmtMessage(cm('LicenseMessage3_1'), [ApplicationName('')])
Parent:=WizardForm
OnMouseDown := @MainAreaMouseDown;
end;

SystemLabel1_1.Labl:=TLabel.Create(WizardForm);
with SystemLabel1_1.Labl do begin
AutoSize:=False
SetBounds(TextPositionLeft +25, TextPositionTop+TextPositionHeight*1/16, TextPositionWidth-50, ScaleY(200));
WordWrap:=True
Transparent:=True
Alignment:=TextOneCenter;
Font.Name:= TextOneFontName;
Font.Size:= TextOneFontSize;
Font.Color:=TextOneFontColor;
Caption:= TextOneFontUpperCaser(FmtMessage(cm('SystemMessage1_1'), [ApplicationName('')]))
Parent:=WizardForm
OnMouseDown := @MainAreaMouseDown;
end;

SystemLabel2_1.Labl:=TLabel.Create(WizardForm);
with SystemLabel2_1.Labl do begin
AutoSize:=False
SetBounds(TextPositionLeft +25, TextPositionTop+TextPositionHeight*3/16, TextPositionWidth-50, ScaleY(200));
WordWrap:=True
Transparent:=True
Alignment:=TextTwoCenter;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Caption:= TextTwoFontUpperCaser(FmtMessage(cm('SystemMessage2_1'), [ApplicationName('')]))
Parent:=WizardForm
OnMouseDown := @MainAreaMouseDown;
end;

RegGetSubkeyNames(HKLM, 'Hardware\Description\System\CentralProcessor', Keys)
SystemLabel3_1.Labl := TLabel.Create(WizardForm);
with SystemLabel3_1.Labl do begin
AutoSize:=False;
SetBounds(TextPositionLeft +25, TextPositionTop+TextPositionHeight*6/16+(0*(TextPositionHeight*11/128)), ScaleX(175), TextPositionHeight*5/64);
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Caption:= FmtMessage(cm('SystemMessage3_1'), [ApplicationName('')])
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

if ((GetArrayLength(Keys)*GetProcessorFreq<ProcCore*ProcFreq*1/5) or (GetArrayLength(Keys)*GetProcessorFreq=ProcCore*ProcFreq*1/5)) and not (GetArrayLength(Keys)*GetProcessorFreq>ProcCore*ProcFreq*1/5) then
begin
rt1:= rt1 + 1
SystemResource3_1_1:=BtnCreate(WizardForm.Handle,TextPositionLeft +200, TextPositionTop+TextPositionHeight*6/16+(0*(TextPositionHeight*11/128)), TextPositionWidth-225, SystemDetailY,ExpandConstant('{tmp}\ResultBG1.png'),0,False);
BtnSetText(SystemResource3_1_1,CPUDetails);
BtnSetFont(SystemResource3_1_1,SystemPageFont.Handle);
BtnSetFontColor(SystemResource3_1_1,$0000FF, $0000FF, $0000FF, $0000FF);
BtnSetEnabled(SystemResource3_1_1,False);
end else begin
if ((GetArrayLength(Keys)*GetProcessorFreq<ProcCore*ProcFreq*2/5) or (GetArrayLength(Keys)*GetProcessorFreq=ProcCore*ProcFreq*2/5)) and not (GetArrayLength(Keys)*GetProcessorFreq>ProcCore*ProcFreq*2/5) then
begin
rt1:= rt1 + 2
SystemResource3_1_1:=BtnCreate(WizardForm.Handle,TextPositionLeft +200, TextPositionTop+TextPositionHeight*6/16+(0*(TextPositionHeight*11/128)), TextPositionWidth-225, SystemDetailY,ExpandConstant('{tmp}\ResultBG2.png'),0,False);
BtnSetText(SystemResource3_1_1,CPUDetails);
BtnSetFont(SystemResource3_1_1,SystemPageFont.Handle);
BtnSetFontColor(SystemResource3_1_1,$178AD8, $178AD8, $178AD8, $178AD8);
BtnSetEnabled(SystemResource3_1_1,False);
end else begin
if ((GetArrayLength(Keys)*GetProcessorFreq<ProcCore*ProcFreq*3/5) or (GetArrayLength(Keys)*GetProcessorFreq=ProcCore*ProcFreq*3/5)) and not (GetArrayLength(Keys)*GetProcessorFreq>ProcCore*ProcFreq*3/5) then
begin
rt1:= rt1 + 3
SystemResource3_1_1:=BtnCreate(WizardForm.Handle,TextPositionLeft +200, TextPositionTop+TextPositionHeight*6/16+(0*(TextPositionHeight*11/128)), TextPositionWidth-225, SystemDetailY,ExpandConstant('{tmp}\ResultBG3.png'),0,False);
BtnSetText(SystemResource3_1_1,CPUDetails);
BtnSetFont(SystemResource3_1_1,SystemPageFont.Handle);
BtnSetFontColor(SystemResource3_1_1,$00FFFF, $00FFFF, $00FFFF, $00FFFF);
BtnSetEnabled(SystemResource3_1_1,False);
end else begin
if ((GetArrayLength(Keys)*GetProcessorFreq<ProcCore*ProcFreq*4/5) or (GetArrayLength(Keys)*GetProcessorFreq=ProcCore*ProcFreq*4/5)) or (GetArrayLength(Keys)*GetProcessorFreq>ProcCore*ProcFreq*4/5) and not (GetArrayLength(Keys)*GetProcessorFreq>ProcCore*ProcFreq*7/6) then
begin
rt1:= rt1 + 4
SystemResource3_1_1:=BtnCreate(WizardForm.Handle,TextPositionLeft +200, TextPositionTop+TextPositionHeight*6/16+(0*(TextPositionHeight*11/128)), TextPositionWidth-225, SystemDetailY,ExpandConstant('{tmp}\ResultBG4.png'),0,False);
BtnSetText(SystemResource3_1_1,CPUDetails);
BtnSetFont(SystemResource3_1_1,SystemPageFont.Handle);
BtnSetFontColor(SystemResource3_1_1,$00FF00, $00FF00, $00FF00, $00FF00);
BtnSetEnabled(SystemResource3_1_1,False);
end else begin
if ((GetArrayLength(Keys)*GetProcessorFreq=ProcCore*ProcFreq*7/6) or (GetArrayLength(Keys)*GetProcessorFreq>ProcCore*ProcFreq*7/6)) then
begin
rt1:= rt1 + 5
SystemResource3_1_1:=BtnCreate(WizardForm.Handle,TextPositionLeft +200, TextPositionTop+TextPositionHeight*6/16+(0*(TextPositionHeight*11/128)), TextPositionWidth-225, SystemDetailY,ExpandConstant('{tmp}\ResultBG5.png'),0,False);
BtnSetText(SystemResource3_1_1,CPUDetails);
BtnSetFont(SystemResource3_1_1,SystemPageFont.Handle);
BtnSetFontColor(SystemResource3_1_1,$FFF06D, $FFF06D, $FFF06D, $FFF06D);
BtnSetEnabled(SystemResource3_1_1,False);
end;
end;
end;
end;
end;

SystemLabel3_2.Labl := TLabel.Create(WizardForm);
with SystemLabel3_2.Labl do begin
AutoSize:=False;
SetBounds(TextPositionLeft +25, TextPositionTop+TextPositionHeight*6/16+(1*(TextPositionHeight*11/128)), ScaleX(180), TextPositionHeight*5/64);
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Caption:= FmtMessage(cm('SystemMessage3_2'), [ApplicationName('')])
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

VideoMemory:=VideoRAM;
vr:=VideoSize;
if (vr<0) or (vr=0) then begin
rt2:= rt2 + 1
SystemResource3_2_1:=BtnCreate(WizardForm.Handle,TextPositionLeft +200, TextPositionTop+TextPositionHeight*6/16+(1*(TextPositionHeight*11/128)), TextPositionWidth-225, SystemDetailY,ExpandConstant('{tmp}\ResultBG1.png'),0,False);
BtnSetText(SystemResource3_2_1,FmtMessage(cm('SystemMessage3_2_1'), [ExpandConstant(' ')]));
BtnSetFont(SystemResource3_2_1,SystemPageFont.Handle);
BtnSetFontColor(SystemResource3_2_1,$0000FF, $0000FF, $0000FF, $0000FF);
BtnSetEnabled(SystemResource3_2_1,False);
end	else begin
if (vr<VideoRAM*1/5) and not (vr>VideoRAM*1/5) then
begin
rt2:= rt2 + 1
SystemResource3_2_1:=BtnCreate(WizardForm.Handle,TextPositionLeft +200, TextPositionTop+TextPositionHeight*6/16+(1*(TextPositionHeight*11/128)), TextPositionWidth-225, SystemDetailY,ExpandConstant('{tmp}\ResultBG1.png'),0,False);
BtnSetText(SystemResource3_2_1,VideoDetails);
BtnSetFont(SystemResource3_2_1,SystemPageFont.Handle);
BtnSetFontColor(SystemResource3_2_1,$0000FF, $0000FF, $0000FF, $0000FF);
BtnSetEnabled(SystemResource3_2_1,False);
end else begin
if (vr<VideoRAM*2/5) and not (vr>VideoRAM*2/5) then
begin
rt2:= rt2 + 2
SystemResource3_2_1:=BtnCreate(WizardForm.Handle,TextPositionLeft +200, TextPositionTop+TextPositionHeight*6/16+(1*(TextPositionHeight*11/128)), TextPositionWidth-225, SystemDetailY,ExpandConstant('{tmp}\ResultBG2.png'),0,False);
BtnSetText(SystemResource3_2_1,VideoDetails);
BtnSetFont(SystemResource3_2_1,SystemPageFont.Handle);
BtnSetFontColor(SystemResource3_2_1,$178AD8, $178AD8, $178AD8, $178AD8);
BtnSetEnabled(SystemResource3_2_1,False);
end else begin
if (vr<VideoRAM*3/5) and not (vr>VideoRAM*3/5) then
begin
rt2:= rt2 + 3
SystemResource3_2_1:=BtnCreate(WizardForm.Handle,TextPositionLeft +200, TextPositionTop+TextPositionHeight*6/16+(1*(TextPositionHeight*11/128)), TextPositionWidth-225, SystemDetailY,ExpandConstant('{tmp}\ResultBG3.png'),0,False);
BtnSetText(SystemResource3_2_1,VideoDetails);
BtnSetFont(SystemResource3_2_1,SystemPageFont.Handle);
BtnSetFontColor(SystemResource3_2_1,$00FFFF, $00FFFF, $00FFFF, $00FFFF);
BtnSetEnabled(SystemResource3_2_1,False);
end else begin
if ((vr<VideoRAM*4/5) or (vr=VideoRAM*4/5) or (vr>VideoRAM*4/5)) and not (vr>VideoRAM*7/6) then
begin
rt2:= rt2 + 4
SystemResource3_2_1:=BtnCreate(WizardForm.Handle,TextPositionLeft +200, TextPositionTop+TextPositionHeight*6/16+(1*(TextPositionHeight*11/128)), TextPositionWidth-225, SystemDetailY,ExpandConstant('{tmp}\ResultBG4.png'),0,False);
BtnSetText(SystemResource3_2_1,VideoDetails);
BtnSetFont(SystemResource3_2_1,SystemPageFont.Handle);
BtnSetFontColor(SystemResource3_2_1,$00FF00, $00FF00, $00FF00, $00FF00);
BtnSetEnabled(SystemResource3_2_1,False);
end else begin
if ((vr=VideoRAM*7/6) or (vr>VideoRAM*7/6)) then begin
rt2:= rt2 + 5
SystemResource3_2_1:=BtnCreate(WizardForm.Handle,TextPositionLeft +200, TextPositionTop+TextPositionHeight*6/16+(1*(TextPositionHeight*11/128)), TextPositionWidth-225, SystemDetailY,ExpandConstant('{tmp}\ResultBG5.png'),0,False);
BtnSetText(SystemResource3_2_1,VideoDetails);
BtnSetFont(SystemResource3_2_1,SystemPageFont.Handle);
BtnSetFontColor(SystemResource3_2_1,$FFF06D, $FFF06D, $FFF06D, $FFF06D);
BtnSetEnabled(SystemResource3_2_1,False);
end;
end;
end;
end;
end;
end;

SystemLabel3_3.Labl := TLabel.Create(WizardForm);
with SystemLabel3_3.Labl do begin
AutoSize:=False;
SetBounds(TextPositionLeft +25, TextPositionTop+TextPositionHeight*6/16+(2*(TextPositionHeight*11/128)), ScaleX(180), TextPositionHeight*5/64)
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Caption:= FmtMessage(cm('SystemMessage3_3'), [ApplicationName('')])
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

if ((GetSystemPhys+1)<RAM*1/5) and not ((GetSystemPhys+1)>RAM*1/5) then
begin
rt3:= rt3 + 1
SystemResource3_3_1:=BtnCreate(WizardForm.Handle,TextPositionLeft +200, TextPositionTop+TextPositionHeight*6/16+(2*(TextPositionHeight*11/128)), TextPositionWidth-225, SystemDetailY,ExpandConstant('{tmp}\ResultBG1.png'),0,False);
BtnSetText(SystemResource3_3_1,RAMDetails);
BtnSetFont(SystemResource3_3_1,SystemPageFont.Handle);
BtnSetFontColor(SystemResource3_3_1,$0000FF, $0000FF, $0000FF, $0000FF);
BtnSetEnabled(SystemResource3_3_1,False);
end else begin
if ((GetSystemPhys+1)<RAM*2/5) and not ((GetSystemPhys+1)>RAM*2/5) then
begin
rt3:= rt3 + 2
SystemResource3_3_1:=BtnCreate(WizardForm.Handle,TextPositionLeft +200, TextPositionTop+TextPositionHeight*6/16+(2*(TextPositionHeight*11/128)), TextPositionWidth-225, SystemDetailY,ExpandConstant('{tmp}\ResultBG2.png'),0,False);
BtnSetText(SystemResource3_3_1,RAMDetails);
BtnSetFont(SystemResource3_3_1,SystemPageFont.Handle);
BtnSetFontColor(SystemResource3_3_1,$178AD8, $178AD8, $178AD8, $178AD8);
BtnSetEnabled(SystemResource3_3_1,False);
end else begin
if ((GetSystemPhys+1)<RAM*3/5) and not ((GetSystemPhys+1)>RAM*3/5) then
begin
rt3:= rt3 + 3
SystemResource3_3_1:=BtnCreate(WizardForm.Handle,TextPositionLeft +200, TextPositionTop+TextPositionHeight*6/16+(2*(TextPositionHeight*11/128)), TextPositionWidth-225, SystemDetailY,ExpandConstant('{tmp}\ResultBG3.png'),0,False);
BtnSetText(SystemResource3_3_1,RAMDetails);
BtnSetFont(SystemResource3_3_1,SystemPageFont.Handle);
BtnSetFontColor(SystemResource3_3_1,$00FFFF, $00FFFF, $00FFFF, $00FFFF);
BtnSetEnabled(SystemResource3_3_1,False);
end else begin
if (((GetSystemPhys+1)<RAM*4/5) or ((GetSystemPhys+1)=RAM*4/5) or ((GetSystemPhys+1)>RAM*4/5)) and not ((GetSystemPhys+1)>RAM*7/6) then
begin
rt3:= rt3 + 4
SystemResource3_3_1:=BtnCreate(WizardForm.Handle,TextPositionLeft +200, TextPositionTop+TextPositionHeight*6/16+(2*(TextPositionHeight*11/128)), TextPositionWidth-225, SystemDetailY,ExpandConstant('{tmp}\ResultBG4.png'),0,False);
BtnSetText(SystemResource3_3_1,RAMDetails);
BtnSetFont(SystemResource3_3_1,SystemPageFont.Handle);
BtnSetFontColor(SystemResource3_3_1,$00FF00, $00FF00, $00FF00, $00FF00);
BtnSetEnabled(SystemResource3_3_1,False);
end else begin
if (((GetSystemPhys+1)=RAM*7/6) or ((GetSystemPhys+1)>RAM*7/6)) then
begin
rt3:= rt3 + 5
SystemResource3_3_1:=BtnCreate(WizardForm.Handle,TextPositionLeft +200, TextPositionTop+TextPositionHeight*6/16+(2*(TextPositionHeight*11/128)), TextPositionWidth-225, SystemDetailY,ExpandConstant('{tmp}\ResultBG5.png'),0,False);
BtnSetText(SystemResource3_3_1,RAMDetails);
BtnSetFont(SystemResource3_3_1,SystemPageFont.Handle);
BtnSetFontColor(SystemResource3_3_1,$FFF06D, $FFF06D, $FFF06D, $FFF06D);
BtnSetEnabled(SystemResource3_3_1,False);
end;
end;
end;
end;
end;

SystemLabel3_4.Labl := TLabel.Create(WizardForm);
with SystemLabel3_4.Labl do begin
AutoSize:=False;
SetBounds(TextPositionLeft +25, TextPositionTop+TextPositionHeight*6/16+(3*(TextPositionHeight*11/128)), ScaleX(180), TextPositionHeight*5/64)
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Caption:= FmtMessage(cm('SystemMessage3_4'), [ApplicationName('')])
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

if (GetSoundCards = 0) and SoundDevice then begin
rt4:= rt4 + 3
SystemResource3_4_1:=BtnCreate(WizardForm.Handle,TextPositionLeft +200, TextPositionTop+TextPositionHeight*6/16+(3*(TextPositionHeight*11/128)), TextPositionWidth-225, SystemDetailY,ExpandConstant('{tmp}\ResultBG3.png'),0,False);
BtnSetText(SystemResource3_4_1,SoundDetails);
BtnSetFont(SystemResource3_4_1,SystemPageFont.Handle);
BtnSetFontColor(SystemResource3_4_1,$00FFFF, $00FFFF, $00FFFF, $00FFFF);
BtnSetEnabled(SystemResource3_4_1,False);
end else begin
rt4:= rt4 + 5
SystemResource3_4_1:=BtnCreate(WizardForm.Handle,TextPositionLeft +200, TextPositionTop+TextPositionHeight*6/16+(3*(TextPositionHeight*11/128)), TextPositionWidth-225, SystemDetailY,ExpandConstant('{tmp}\ResultBG5.png'),0,False);
BtnSetText(SystemResource3_4_1,SoundDetails);
BtnSetFont(SystemResource3_4_1,SystemPageFont.Handle);
BtnSetFontColor(SystemResource3_4_1,$FFF06D, $FFF06D, $FFF06D, $FFF06D);
BtnSetEnabled(SystemResource3_4_1,False);
end;

SystemLabel3_5.Labl := TLabel.Create(WizardForm);
with SystemLabel3_5.Labl do begin
AutoSize:=False;
SetBounds(TextPositionLeft +25, TextPositionTop+TextPositionHeight*6/16+(4*(TextPositionHeight*11/128)), ScaleX(180), TextPositionHeight*5/64)
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Caption:= FmtMessage(cm('SystemMessage3_5'), [ApplicationName('')])
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

GetWindowsVersionEx(Version);
if not Version.NTPlatform or
(Version.NTPlatform and (Version.Major<WinVerMajor)) or
(Version.NTPlatform and (Version.Major=WinVerMajor) and (Version.Minor<WinVerMinor)) or
(Version.NTPlatform and (Version.Major=WinVerMajor) and (Version.Minor=WinVerMinor) and (Version.ServicePackMajor<ServicePack)) then begin
rt5:= rt5 + 3
SystemResource3_5_1:=BtnCreate(WizardForm.Handle,TextPositionLeft +200, TextPositionTop+TextPositionHeight*6/16+(4*(TextPositionHeight*11/128)), TextPositionWidth-225, SystemDetailY,ExpandConstant('{tmp}\ResultBG3.png'),0,False);
BtnSetText(SystemResource3_5_1,OSDetails);
BtnSetFont(SystemResource3_5_1,SystemPageFont.Handle);
BtnSetFontColor(SystemResource3_5_1,$00FFFF, $00FFFF, $00FFFF, $00FFFF);
BtnSetEnabled(SystemResource3_5_1,False);
end else begin
rt5:= rt5 + 5
SystemResource3_5_1:=BtnCreate(WizardForm.Handle,TextPositionLeft +200, TextPositionTop+TextPositionHeight*6/16+(4*(TextPositionHeight*11/128)), TextPositionWidth-225, SystemDetailY,ExpandConstant('{tmp}\ResultBG5.png'),0,False);
BtnSetText(SystemResource3_5_1,OSDetails);
BtnSetFont(SystemResource3_5_1,SystemPageFont.Handle);
BtnSetFontColor(SystemResource3_5_1,$FFF06D, $FFF06D, $FFF06D, $FFF06D);
BtnSetEnabled(SystemResource3_5_1,False);
end;

SystemLabel3_6.Labl := TLabel.Create(WizardForm);
with SystemLabel3_6.Labl do begin
AutoSize:=False;
SetBounds(TextPositionLeft +25, TextPositionTop+TextPositionHeight*6/16+(5*(TextPositionHeight*11/128)), ScaleX(180), TextPositionHeight*5/64)
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Caption:= FmtMessage(cm('SystemMessage3_6'), [ApplicationName('')])
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

rt:=(TextPositionWidth-225)/5;
SystemResource3_6_1:=BtnCreate(WizardForm.Handle,TextPositionLeft+200 + (rt * 0), TextPositionTop+TextPositionHeight*6/16+(5*(TextPositionHeight*11/128)), rt, SystemDetailY,ExpandConstant('{tmp}\ResultBG1.png'),0,False);
BtnSetText(SystemResource3_6_1,FmtMessage(cm('SystemMessage3_6_1'), [ExpandConstant(' ')]));
BtnSetFont(SystemResource3_6_1,SystemPageFont2.Handle);
BtnSetEnabled(SystemResource3_6_1,False);
BtnSetFontColor(SystemResource3_6_1,$0000FF, $0000FF, $0000FF, $0000FF);
SystemResource3_6_2:=BtnCreate(WizardForm.Handle,TextPositionLeft+200 + (rt * 1), TextPositionTop+TextPositionHeight*6/16+(5*(TextPositionHeight*11/128)), rt, SystemDetailY,ExpandConstant('{tmp}\ResultBG2.png'),0,False);
BtnSetText(SystemResource3_6_2,FmtMessage(cm('SystemMessage3_6_2'), [ExpandConstant(' ')]));
BtnSetFont(SystemResource3_6_2,SystemPageFont2.Handle);
BtnSetEnabled(SystemResource3_6_2,False);
BtnSetFontColor(SystemResource3_6_2,$178AD8, $178AD8, $178AD8, $178AD8);
SystemResource3_6_3:=BtnCreate(WizardForm.Handle,TextPositionLeft+200 + (rt * 2), TextPositionTop+TextPositionHeight*6/16+(5*(TextPositionHeight*11/128)), rt, SystemDetailY,ExpandConstant('{tmp}\ResultBG3.png'),0,False);
BtnSetText(SystemResource3_6_3,FmtMessage(cm('SystemMessage3_6_3'), [ExpandConstant(' ')]));
BtnSetFont(SystemResource3_6_3,SystemPageFont2.Handle);
BtnSetEnabled(SystemResource3_6_3,False);
BtnSetFontColor(SystemResource3_6_3,$00FFFF, $00FFFF, $00FFFF, $00FFFF);
SystemResource3_6_4:=BtnCreate(WizardForm.Handle,TextPositionLeft+200 + (rt * 3), TextPositionTop+TextPositionHeight*6/16+(5*(TextPositionHeight*11/128)), rt, SystemDetailY,ExpandConstant('{tmp}\ResultBG4.png'),0,False);
BtnSetText(SystemResource3_6_4,FmtMessage(cm('SystemMessage3_6_4'), [ExpandConstant(' ')]));
BtnSetFont(SystemResource3_6_4,SystemPageFont2.Handle);
BtnSetEnabled(SystemResource3_6_4,False);
BtnSetFontColor(SystemResource3_6_4,$00FF00, $00FF00, $00FF00, $00FF00);
SystemResource3_6_5:=BtnCreate(WizardForm.Handle,TextPositionLeft+200 + (rt * 4), TextPositionTop+TextPositionHeight*6/16+(5*(TextPositionHeight*11/128)), rt, SystemDetailY,ExpandConstant('{tmp}\ResultBG5.png'),0,False);
BtnSetText(SystemResource3_6_5,FmtMessage(cm('SystemMessage3_6_5'), [ExpandConstant(' ')]));
BtnSetFont(SystemResource3_6_5,SystemPageFont2.Handle);
BtnSetEnabled(SystemResource3_6_5,False);
BtnSetFontColor(SystemResource3_6_5,$FFF06D, $FFF06D, $FFF06D, $FFF06D);

SystemLabel3_7.Labl := TLabel.Create(WizardForm);
with SystemLabel3_7.Labl do begin
AutoSize:=False;
SetBounds(TextPositionLeft +25, TextPositionTop+TextPositionHeight*6/16+(6*(TextPositionHeight*11/128)), ScaleX(180), TextPositionHeight*5/64)
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Caption:= FmtMessage(cm('SystemMessage3_7'), [ApplicationName('')])
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

SystemLabel3_8.Labl := TLabel.Create(WizardForm);
with SystemLabel3_8.Labl do begin
AutoSize:=False;
SetBounds(TextPositionLeft +180, TextPositionTop+TextPositionHeight*6/16+(6*(TextPositionHeight*11/128)), TextPositionWidth-185, TextPositionHeight*5/64)
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Font.Style:=[fsBold]
Alignment:=taCenter
if Trunc(rt1+rt2+rt3+rt4+rt5)*2/5 = 10 then
Caption := IntToStr(Trunc(rt1+rt2+rt3+rt4+rt5)*2/5)+'/10'
else
Caption := Floater((rt1+rt2+rt3+rt4+rt5)*2/5,1)+'/10';
if (rt1 + rt2 + rt3 + rt4 + rt5 < 15) and not (rt1 + rt2 + rt3 + rt4 + rt5 > 15) then
Font.Color:=$0000FF 
else
if (rt1 + rt2 + rt3 + rt4 + rt5 < 18) and not (rt1 + rt2 + rt3 + rt4 + rt5 > 18) then
Font.Color:=$178AD8
else
if (rt1 + rt2 + rt3 + rt4 + rt5 < 22) and not (rt1 + rt2 + rt3 + rt4 + rt5 > 22) then
Font.Color:=$00FFFF
else
if (rt1 + rt2 + rt3 + rt4 + rt5 < 25) and not (rt1 + rt2 + rt3 + rt4 + rt5 > 25) then
Font.Color:=$00FF00
else
if (rt1 + rt2 + rt3 + rt4 + rt5 = 25) then
Font.Color:=$FFF06D;
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

InformationLabel1_1.Labl:=TLabel.Create(WizardForm);
with InformationLabel1_1.Labl do begin
AutoSize:=False
SetBounds(TextPositionLeft+25, TextPositionTop+TextPositionHeight*1/16, TextPositionWidth-50, TextPositionHeight);
WordWrap:=True
Transparent:=True
Alignment:=TextOneCenter;
Font.Name:= TextOneFontName;
Font.Size:= TextOneFontSize;
Font.Color:=TextOneFontColor;
Caption:= TextOneFontUpperCaser(FmtMessage(cm('InformationMessage1_1'), [ApplicationName('')]))
Parent:=WizardForm
OnMouseDown := @MainAreaMouseDown;
end;

InformationLabel2_1.Labl := TLabel.Create(WizardForm);
with InformationLabel2_1.Labl do begin
AutoSize:=False;
SetBounds(TextPositionLeft+25, TextPositionTop+TextPositionHeight*3/16, TextPositionWidth-50, TextPositionHeight);
WordWrap:= True;
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Alignment:=TextTwoCenter;
Caption:= TextTwoFontUpperCaser(FmtMessage(cm('InformationMessage2_1'), [ApplicationName('')]))
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

with WizardForm.InfoBeforeMemo do
begin
Left := TextPositionLeft +30;
Top :=TextPositionTop +TextPositionHeight*6/16;
Width :=TextPositionWidth-60;
Height :=TextPositionHeight*7/16;
Parent:=WizardForm;
end;

SelectComponentLabel1_1.Labl := TLabel.Create(WizardForm);
with SelectComponentLabel1_1.Labl do begin
AutoSize:=False;
SetBounds(TextPositionLeft+25, TextPositionTop+TextPositionHeight*1/16, TextPositionWidth-50, TextPositionHeight);
WordWrap:= True;
Transparent:=True;
Font.Name:= TextOneFontName;
Font.Size:= TextOneFontSize;
Font.Color:=TextOneFontColor;
Alignment:=TextOneCenter;
Caption:= TextOneFontUpperCaser(FmtMessage(cm('SelectComponentMessage1_1'), [ApplicationName('')]))
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

SelectComponentLabel2_1.Labl := TLabel.Create(WizardForm);
with SelectComponentLabel2_1.Labl do begin
AutoSize:=False;
SetBounds(TextPositionLeft+25, TextPositionTop+TextPositionHeight*3/16, TextPositionWidth-50, TextPositionHeight);
WordWrap:= True;
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Alignment:=TextTwoCenter;
Caption:= TextTwoFontUpperCaser(FmtMessage(cm('SelectComponentMessage2_1'), [ApplicationName('')]))
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

#ifdef Component
for x:=0 to GetArrayLength(SelectComponentCheck1) - 1 do
begin
BtnGetPosition(SelectComponentCheck1[Component[x].Dependence - 1],Position.Left,Position.Top,Position.Right,Position.Bottom);
if FileExists(ExpandConstant('{tmp}\CheckBox.png')) then
begin
if Component[x].Dependence = (x + 1) then
SelectComponentCheck1[x]:=BtnCreate(WizardForm.Handle,TextPositionLeft +23,TextPositionTop+TextPositionHeight*13/32 + (CBSpace * x),13,13,ExpandConstant('{tmp}\CheckBox.png'),0,True)
else
SelectComponentCheck1[x]:=BtnCreate(WizardForm.Handle,TextPositionLeft +23 + (Position.Left - TextPositionLeft),TextPositionTop+TextPositionHeight*13/32 + (CBSpace * x),13,13,ExpandConstant('{tmp}\CheckBox.png'),0,True);
BtnSetEvent(SelectComponentCheck1[x],BtnClickEventID,WrapBtnCallback(@ComponentCheckOnClick,1));
BtnSetEvent(SelectComponentCheck1[x],BtnMouseEnterEventID,WrapBtnCallback(@ButtonSoundSelected,1));
BtnSetChecked(SelectComponentCheck1[x],True);
BtnSetCursor(SelectComponentCheck1[x],LoadCursorFromFile(ExpandConstant('')));
end;

SelectComponentLabel[x].Labl:= TLabel.Create(WizardForm);
with SelectComponentLabel[x].Labl do
begin
Layout:=tlCenter;
Autosize:=False;
Caption:= FmtMessage(cm('SelectComponentMesesge3'), [Component[x].Name]);
if Component[x].Dependence = (x + 1) then
SetBounds(TextPositionLeft +48, TextPositionTop+TextPositionHeight*13/32 + (CBSpace * x) - CBLabl, TextPositionWidth-68,CBSpace)
else
SetBounds(TextPositionLeft +48 + (Position.Left - TextPositionLeft), TextPositionTop+TextPositionHeight*13/32 + (CBSpace * x) - CBLabl, TextPositionWidth-68,CBSpace);
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Transparent := True;
Parent:= WizardForm;
Visible:= SelectComponentCheck(x + 1);
end;
end;
#endif

with Wizardform.DirEdit do begin
SetBounds(TextPositionLeft+20, TextPositionTop+TextPositionHeight*7/16,TextPositionWidth-40,ScaleY(22))
Parent:=Wizardform
OnChange:=@DirEditChange
end;

with Wizardform.GroupEdit do begin
SetBounds(TextPositionLeft+20, TextPositionTop+TextPositionHeight*7/16,TextPositionWidth-40,ScaleY(22))
Parent:=Wizardform
OnChange:=@GroupEditChange
end;

SelectDirLabel1_1.Labl := TLabel.Create(WizardForm);
with SelectDirLabel1_1.Labl do begin
AutoSize:=False;
SetBounds(TextPositionLeft+25, TextPositionTop+TextPositionHeight*1/16, TextPositionWidth-50, TextPositionHeight);
WordWrap:= True;
Transparent:=True;
Font.Name:= TextOneFontName;
Font.Size:= TextOneFontSize;
Font.Color:=TextOneFontColor;
Alignment:=TextOneCenter;
Caption:= TextOneFontUpperCaser(FmtMessage(cm('SelectDirMessage1_1'), [ApplicationName('')]))
Parent := WizardForm;
Visible :=false
OnMouseDown := @MainAreaMouseDown;
end;

SelectDirLabel2_1.Labl := TLabel.Create(WizardForm);
with SelectDirLabel2_1.Labl do begin
AutoSize:=False;
SetBounds(TextPositionLeft+25, TextPositionTop+TextPositionHeight*3/16, TextPositionWidth-50, TextPositionHeight);
WordWrap:= True;
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Alignment:=TextTwoCenter;
Caption:= TextTwoFontUpperCaser(FmtMessage(cm('SelectDirMessage2_1'), [ApplicationName('')]))
Parent := WizardForm;
Visible :=false
OnMouseDown := @MainAreaMouseDown;
end;

SelectDirLabel3_1.Labl := TLabel.Create(WizardForm);
with SelectDirLabel3_1.Labl do begin
Layout:=tlCenter;
Autosize:=False;
SetBounds(TextPositionLeft+23, TextPositionTop+TextPositionHeight*7/16,TextPositionWidth-46,ScaleY(22));
WordWrap:= True;
ShowAccelChar := False;
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Caption := MinimizePathName(WizardForm.DirEdit.Text, SelectDirLabel3_1.Labl.Font, SelectDirLabel3_1.Labl.Width);
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

WizardForm.DiskSpaceLabel.Hide;
SizeInt:= RequiredSize;
SelectDirLabel4_1.Labl:= TLabel.Create(WizardForm);
with SelectDirLabel4_1.Labl do begin
Transparent:=true;
SetBounds(TextPositionLeft +23, TextPositionTop+TextPositionHeight*21/32, TextPositionWidth-143, ScaleY(17));
Parent:= WizardForm;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
OnMouseDown := @MainAreaMouseDown;
end;

SelectDirLabel4_2.Labl := TLabel.Create(WizardForm);
with SelectDirLabel4_2.Labl do begin
SetBounds(TextPositionLeft +23, TextPositionTop+TextPositionHeight*21/32+TextPositionHeight*1/16, TextPositionWidth-143, ScaleY(17));
Parent := WizardForm;
Transparent:=true;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
OnMouseDown := @MainAreaMouseDown;
end;

SelectDirLabel4_3.Labl := TLabel.Create(WizardForm);
with SelectDirLabel4_3.Labl do begin
SetBounds(TextPositionLeft +23, TextPositionTop+TextPositionHeight*21/32+TextPositionHeight*3/16, TextPositionWidth-143, ScaleY(17));
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

SelectDirLabel4_4.Labl := TLabel.Create(WizardForm);
with SelectDirLabel4_4.Labl do begin
SetBounds(TextPositionLeft +23, TextPositionTop+TextPositionHeight*21/32+TextPositionHeight*2/16, TextPositionWidth-143, ScaleY(17));
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

SelectDirLabel4_5.Labl:= TLabel.Create(WizardForm);
with SelectDirLabel4_5.Labl do begin
AutoSize:=False;
Transparent:=true;
SetBounds(TextPositionLeft + TextPositionWidth - 100 - 23, TextPositionTop+TextPositionHeight*21/32, ScaleX(100), ScaleY(17));
Parent:= WizardForm;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Alignment:=taRightJustify;
OnMouseDown := @MainAreaMouseDown;
end;

SelectDirLabel4_6.Labl := TLabel.Create(WizardForm);
with SelectDirLabel4_6.Labl do begin
AutoSize:=False;
SetBounds(TextPositionLeft + TextPositionWidth - 100 - 23, TextPositionTop+TextPositionHeight*21/32+TextPositionHeight*1/16, ScaleX(100), ScaleY(17));
Parent := WizardForm;
Transparent:=true;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Alignment:=taRightJustify;
OnMouseDown := @MainAreaMouseDown;
end;

SelectDirLabel4_7.Labl := TLabel.Create(WizardForm);
with SelectDirLabel4_7.Labl do begin
AutoSize:=False;
SetBounds(TextPositionLeft + TextPositionWidth - 100 - 23, TextPositionTop+TextPositionHeight*21/32+TextPositionHeight*3/16, ScaleX(100), ScaleY(17));
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Parent := WizardForm;
Alignment:=taRightJustify;
OnMouseDown := @MainAreaMouseDown;
end;

SelectDirLabel4_8.Labl := TLabel.Create(WizardForm);
with SelectDirLabel4_8.Labl do begin
AutoSize:=False;
SetBounds(TextPositionLeft + TextPositionWidth - 100 - 23, TextPositionTop+TextPositionHeight*21/32+TextPositionHeight*2/16, ScaleX(100), ScaleY(17));
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Parent := WizardForm;
Alignment:=taRightJustify;
OnMouseDown := @MainAreaMouseDown;
end;

SelectGroupLabel1_1.Labl := TLabel.Create(WizardForm);
with SelectGroupLabel1_1.Labl do begin
AutoSize:=False;
SetBounds(TextPositionLeft+25, TextPositionTop+TextPositionHeight*1/16, TextPositionWidth-50, TextPositionHeight);
WordWrap:= True;
Transparent:=True;
Font.Name:= TextOneFontName;
Font.Size:= TextOneFontSize;
Font.Color:=TextOneFontColor;
Alignment:=TextOneCenter;
Caption:= TextOneFontUpperCaser(FmtMessage(cm('SelectGroupMessage1_1'), [ApplicationName('')]))
Parent := WizardForm;
Visible :=false
OnMouseDown := @MainAreaMouseDown;
end;

SelectGroupLabel2_1.Labl := TLabel.Create(WizardForm);
with SelectGroupLabel2_1.Labl do begin
AutoSize:=False;
SetBounds(TextPositionLeft+25, TextPositionTop+TextPositionHeight*3/16, TextPositionWidth-50, TextPositionHeight);
WordWrap:= True;
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Alignment:=TextTwoCenter;
Caption:= TextTwoFontUpperCaser(FmtMessage(cm('SelectGroupMessage2_1'), [ApplicationName('')]))
Parent := WizardForm;
Visible :=false
OnMouseDown := @MainAreaMouseDown;
end;

SelectGroupLabel3_1.Labl := TLabel.Create(WizardForm);
with SelectGroupLabel3_1.Labl do begin
Layout:=tlCenter;
Autosize:=False;
SetBounds(TextPositionLeft+23, TextPositionTop+TextPositionHeight*7/16,TextPositionWidth-46,ScaleY(22));
WordWrap:= True;
ShowAccelChar := False;
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Caption := MinimizePathName(WizardForm.GroupEdit.Text, SelectGroupLabel3_1.Labl.Font, SelectGroupLabel3_1.Labl.Width);
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

SelectGroupLabel4_1.Labl := TLabel.Create(WizardForm);
with SelectGroupLabel4_1.Labl do begin
Layout:=tlCenter;
Autosize:=False;
Caption:= FmtMessage(cm('SelectGroupMessage4_1'), [ApplicationName('')])
SetBounds(TextPositionLeft +48, TextPositionTop+TextPositionHeight*11/16 - CBLabl, TextPositionWidth-68,CBSpace);
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Transparent := True;
Parent:= WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

if FileExists(ExpandConstant('{tmp}\CheckBox.png')) then
begin
SelectGroupCheck1_1:=BtnCreate(WizardForm.Handle,TextPositionLeft +23,TextPositionTop+TextPositionHeight*11/16,13,13,ExpandConstant('{tmp}\CheckBox.png'),0,True);
BtnSetEvent(SelectGroupCheck1_1,BtnClickEventID,WrapBtnCallback(@SelectGroupIconsCheckOnClick,1));
BtnSetEvent(SelectGroupCheck1_1,BtnMouseEnterEventID,WrapBtnCallback(@ButtonSoundSelected,1));
BtnSetCursor(SelectGroupCheck1_1,LoadCursorFromFile(ExpandConstant('')));
end;

SelectGroupLabel4_2.Labl := TLabel.Create(WizardForm);
with SelectGroupLabel4_2.Labl do begin
Layout:=tlCenter;
Autosize:=False;
Caption:= FmtMessage(cm('SelectGroupMessage4_2'), [ApplicationName('')])
SetBounds(TextPositionLeft +48, TextPositionTop+TextPositionHeight*11/16+CBSpace - CBLabl, TextPositionWidth-68,CBSpace);
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Transparent := True;
Parent:= WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

if FileExists(ExpandConstant('{tmp}\CheckBox.png')) then
begin
SelectGroupCheck2_1:=BtnCreate(WizardForm.Handle,TextPositionLeft +23,TextPositionTop+TextPositionHeight*11/16+CBSpace,13,13,ExpandConstant('{tmp}\CheckBox.png'),0,True);
BtnSetEvent(SelectGroupCheck2_1,BtnClickEventID,WrapBtnCallback(@DesktopIconsCheckOnClick,1));
BtnSetEvent(SelectGroupCheck2_1,BtnMouseEnterEventID,WrapBtnCallback(@ButtonSoundSelected,1));
BtnSetCursor(SelectGroupCheck2_1,LoadCursorFromFile(ExpandConstant('')));
BtnSetChecked(SelectGroupCheck2_1,True);
end;

WizardForm.DirEdit.Text:= WizardForm.DirEdit.Text;
WizardForm.GroupEdit.OnChange := @GroupChange;

PreviewLabel1_1.Labl:=TLabel.Create(WizardForm);
with PreviewLabel1_1.Labl do begin
AutoSize:=False
SetBounds(TextPositionLeft +25, TextPositionTop+TextPositionHeight*1/16, TextPositionWidth-50, TextPositionHeight);
WordWrap:=True
Transparent:=True
Alignment:=TextOneCenter;
Font.Name:= TextOneFontName;
Font.Size:= TextOneFontSize;
Font.Color:=TextOneFontColor;
Caption:= TextOneFontUpperCaser(FmtMessage(cm('PreviewMessage1_1'), [ApplicationName('')]));
Parent:=WizardForm
OnMouseDown := @MainAreaMouseDown;
end;

PreviewBevel := TBevel.Create(WizardForm);
with PreviewBevel do
begin
Parent := WizardForm;
SetBounds(TextPositionLeft+40,TextPositionTop+TextPositionHeight*9/64,TextPositionWidth-80, TextPositionHeight*46/64)
Shape := bsBox;
end;

SelectPriorityLabel1_1.Labl := TLabel.Create(WizardForm);
with SelectPriorityLabel1_1.Labl do begin
AutoSize:=False;
SetBounds(TextPositionLeft+25, TextPositionTop+TextPositionHeight*1/16, TextPositionWidth-50, TextPositionHeight);
WordWrap:= True;
Transparent:=True;
Font.Name:= TextOneFontName;
Font.Size:= TextOneFontSize;
Font.Color:=TextOneFontColor;
Alignment:=TextOneCenter;
Caption:= TextOneFontUpperCaser(FmtMessage(cm('SelectPriorityMessage1_1'), [ApplicationName('')]))
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

SelectPriorityLabel2_1.Labl := TLabel.Create(WizardForm);
with SelectPriorityLabel2_1.Labl do begin
AutoSize:=False;
SetBounds(TextPositionLeft+25, TextPositionTop+TextPositionHeight*3/16, TextPositionWidth-50, TextPositionHeight);
WordWrap:= True;
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Alignment:=TextTwoCenter;
Caption:= TextTwoFontUpperCaser(FmtMessage(cm('SelectPriorityMessage2_1'), [ApplicationName('')]))
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

if FileExists(ExpandConstant('{tmp}\CheckBox.png')) then
begin
SelectPriorityCheck1_1:=BtnCreate(WizardForm.Handle,TextPositionLeft +23,TextPositionTop+TextPositionHeight*13/32,13,13,ExpandConstant('{tmp}\CheckBox.png'),0,True);
BtnSetEvent(SelectPriorityCheck1_1,BtnClickEventID,WrapBtnCallback(@IdlePriorityCheckButtonOnClick,1));
BtnSetEvent(SelectPriorityCheck1_1,BtnMouseEnterEventID,WrapBtnCallback(@ButtonSoundSelected,1));
BtnSetChecked(SelectPriorityCheck1_1,False);
BtnSetCursor(SelectPriorityCheck1_1,LoadCursorFromFile(ExpandConstant('')));
end;

SelectPriorityLabel3_1.Labl:= TLabel.Create(WizardForm);
with SelectPriorityLabel3_1.Labl do
begin
Layout:=tlCenter;
Autosize:=False;
Caption:= FmtMessage(cm('SelectPriorityMessage3_1'), [ExpandConstant(' ')]);
SetBounds(TextPositionLeft +48, TextPositionTop+TextPositionHeight*13/32 - CBLabl, TextPositionWidth-68,CBSpace);
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Transparent := True;
Parent:= WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

if FileExists(ExpandConstant('{tmp}\CheckBox.png')) then
begin
SelectPriorityCheck2_1:=BtnCreate(WizardForm.Handle,TextPositionLeft +23,TextPositionTop+TextPositionHeight*13/32+CBSpace,13,13,ExpandConstant('{tmp}\CheckBox.png'),0,True);
BtnSetEvent(SelectPriorityCheck2_1,BtnClickEventID,WrapBtnCallback(@BelowNormalPriorityCheckButtonOnClick,1));
BtnSetEvent(SelectPriorityCheck2_1,BtnMouseEnterEventID,WrapBtnCallback(@ButtonSoundSelected,1));
BtnSetChecked(SelectPriorityCheck2_1,False);
BtnSetCursor(SelectPriorityCheck2_1,LoadCursorFromFile(ExpandConstant('')));
end;

SelectPriorityLabel3_2.Labl:= TLabel.Create(WizardForm);
with SelectPriorityLabel3_2.Labl do
begin
Layout:=tlCenter;
Autosize:=False;
Caption:= FmtMessage(cm('SelectPriorityMessage3_2'), [ExpandConstant(' ')]);
SetBounds(TextPositionLeft +48, TextPositionTop+TextPositionHeight*13/32+CBSpace - CBLabl, TextPositionWidth-68,CBSpace);
Transparent := True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Parent:= WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

if FileExists(ExpandConstant('{tmp}\CheckBox.png')) then
begin
SelectPriorityCheck3_1:=BtnCreate(WizardForm.Handle,TextPositionLeft +23,TextPositionTop+TextPositionHeight*13/32+CBSpace*2,13,13,ExpandConstant('{tmp}\CheckBox.png'),0,True);
BtnSetEvent(SelectPriorityCheck3_1,BtnClickEventID,WrapBtnCallback(@NormalPriorityCheckButtonOnClick,1));
BtnSetEvent(SelectPriorityCheck3_1,BtnMouseEnterEventID,WrapBtnCallback(@ButtonSoundSelected,1));
BtnSetChecked(SelectPriorityCheck3_1,True);
BtnSetCursor(SelectPriorityCheck3_1,LoadCursorFromFile(ExpandConstant('')));
end;

SelectPriorityLabel3_3.Labl:= TLabel.Create(WizardForm);
with SelectPriorityLabel3_3.Labl do
begin
Layout:=tlCenter;
Autosize:=False;
Caption:= FmtMessage(cm('SelectPriorityMessage3_3'), [ExpandConstant(' ')]);
SetBounds(TextPositionLeft +48, TextPositionTop+TextPositionHeight*13/32+CBSpace*2 - CBLabl, TextPositionWidth-68,CBSpace);
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Transparent := True;
Parent:= WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

if FileExists(ExpandConstant('{tmp}\CheckBox.png')) then
begin
SelectPriorityCheck4_1:=BtnCreate(WizardForm.Handle,TextPositionLeft +23,TextPositionTop+TextPositionHeight*13/32+CBSpace*3,13,13,ExpandConstant('{tmp}\CheckBox.png'),0,True);
BtnSetEvent(SelectPriorityCheck4_1,BtnClickEventID,WrapBtnCallback(@AboveNormalPriorityCheckButtonOnClick,1));
BtnSetEvent(SelectPriorityCheck4_1,BtnMouseEnterEventID,WrapBtnCallback(@ButtonSoundSelected,1));
BtnSetChecked(SelectPriorityCheck4_1,False);
BtnSetCursor(SelectPriorityCheck4_1,LoadCursorFromFile(ExpandConstant('')));
end;

SelectPriorityLabel3_4.Labl:= TLabel.Create(WizardForm);
with SelectPriorityLabel3_4.Labl do
begin
Layout:=tlCenter;
Autosize:=False;
Caption:= FmtMessage(cm('SelectPriorityMessage3_4'), [ExpandConstant(' ')]);
SetBounds(TextPositionLeft +48, TextPositionTop+TextPositionHeight*13/32+CBSpace*3 - CBLabl, TextPositionWidth-68,CBSpace);
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Transparent := True;
Parent:= WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

if FileExists(ExpandConstant('{tmp}\CheckBox.png')) then
begin
SelectPriorityCheck5_1:=BtnCreate(WizardForm.Handle,TextPositionLeft +23,TextPositionTop+TextPositionHeight*13/32+CBSpace*4,13,13,ExpandConstant('{tmp}\CheckBox.png'),0,True)
BtnSetEvent(SelectPriorityCheck5_1,BtnClickEventID,WrapBtnCallback(@HighPriorityCheckButtonOnClick,1));
BtnSetEvent(SelectPriorityCheck5_1,BtnMouseEnterEventID,WrapBtnCallback(@ButtonSoundSelected,1));
BtnSetChecked(SelectPriorityCheck5_1,False);
BtnSetCursor(SelectPriorityCheck5_1,LoadCursorFromFile(ExpandConstant('')));
end;

SelectPriorityLabel3_5.Labl:= TLabel.Create(WizardForm);
with SelectPriorityLabel3_5.Labl do
begin
Layout:=tlCenter;
Autosize:=False;
Caption:= FmtMessage(cm('SelectPriorityMessage3_5'), [ExpandConstant(' ')]);
SetBounds(TextPositionLeft +48, TextPositionTop+TextPositionHeight*13/32+CBSpace*4 - CBLabl, TextPositionWidth-68,CBSpace);
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Transparent := True;
Parent:= WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

if FileExists(ExpandConstant('{tmp}\CheckBox.png')) then
begin
SelectPriorityCheck6_1:=BtnCreate(WizardForm.Handle,TextPositionLeft +23,TextPositionTop+TextPositionHeight*13/32+CBSpace*5,13,13,ExpandConstant('{tmp}\CheckBox.png'),0,True);
BtnSetEvent(SelectPriorityCheck6_1,BtnClickEventID,WrapBtnCallback(@RealtimePriorityCheckButtonOnClick,1));
BtnSetEvent(SelectPriorityCheck6_1,BtnMouseEnterEventID,WrapBtnCallback(@ButtonSoundSelected,1));
BtnSetChecked(SelectPriorityCheck6_1,False);
BtnSetCursor(SelectPriorityCheck6_1,LoadCursorFromFile(ExpandConstant('')));
end;

SelectPriorityLabel3_6.Labl:= TLabel.Create(WizardForm);
with SelectPriorityLabel3_6.Labl do
begin
Layout:=tlCenter;
Autosize:=False;
Caption:= FmtMessage(cm('SelectPriorityMessage3_6'), [ExpandConstant(' ')]);
SetBounds(TextPositionLeft +48, TextPositionTop+TextPositionHeight*13/32+CBSpace*5 - CBLabl, TextPositionWidth-68,CBSpace);
Transparent := True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Parent:= WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

SelectTaskLabel1_1.Labl := TLabel.Create(WizardForm);
with SelectTaskLabel1_1.Labl do begin
AutoSize:=False;
SetBounds(TextPositionLeft+25, TextPositionTop+TextPositionHeight*1/16, TextPositionWidth-50, TextPositionHeight);
WordWrap:= True;
Transparent:=True;
Font.Name:= TextOneFontName;
Font.Size:= TextOneFontSize;
Font.Color:=TextOneFontColor;
Alignment:=TextOneCenter;
Caption:= TextOneFontUpperCaser(FmtMessage(cm('SelectTaskMessage1_1'), [ApplicationName('')]))
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

SelectTaskLabel2_1.Labl := TLabel.Create(WizardForm);
with SelectTaskLabel2_1.Labl do begin
AutoSize:=False;
SetBounds(TextPositionLeft+25, TextPositionTop+TextPositionHeight*3/16, TextPositionWidth-50, TextPositionHeight);
WordWrap:= True;
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Alignment:=TextTwoCenter;
Caption:= TextTwoFontUpperCaser(FmtMessage(cm('SelectTaskMessage2_1'), [ApplicationName('')]))
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

#ifdef Task
for x:=0 to GetArrayLength(SelectTaskCheck1) - 1 do
begin
BtnGetPosition(SelectTaskCheck1[Task[x].Dependence - 1],Position.Left,Position.Top,Position.Right,Position.Bottom);
if FileExists(ExpandConstant('{tmp}\CheckBox.png')) then
begin
if Task[x].Dependence = (x + 1) then
SelectTaskCheck1[x]:=BtnCreate(WizardForm.Handle,TextPositionLeft +23,TextPositionTop+TextPositionHeight*13/32 + (CBSpace * x),13,13,ExpandConstant('{tmp}\CheckBox.png'),0,True)
else
SelectTaskCheck1[x]:=BtnCreate(WizardForm.Handle,TextPositionLeft +23 + (Position.Left - TextPositionLeft),TextPositionTop+TextPositionHeight*13/32 + (CBSpace * x),13,13,ExpandConstant('{tmp}\CheckBox.png'),0,True);
BtnSetEvent(SelectTaskCheck1[x],BtnClickEventID,WrapBtnCallback(@TaskCheckOnClick,1));
BtnSetEvent(SelectTaskCheck1[x],BtnMouseEnterEventID,WrapBtnCallback(@ButtonSoundSelected,1));
BtnSetChecked(SelectTaskCheck1[x],True);
BtnSetCursor(SelectTaskCheck1[x],LoadCursorFromFile(ExpandConstant('')));
end;

SelectTaskLabel[x].Labl:= TLabel.Create(WizardForm);
with SelectTaskLabel[x].Labl do
begin
Layout:=tlCenter;
Autosize:=False;
Caption:= FmtMessage(cm('SelectTaskMesesge3'), [Task[x].Name]);
if Task[x].Dependence = (x + 1) then
SetBounds(TextPositionLeft +48, TextPositionTop+TextPositionHeight*13/32 + (CBSpace * x) - CBLabl, TextPositionWidth-68,CBSpace)
else
SetBounds(TextPositionLeft +48 + (Position.Left - TextPositionLeft), TextPositionTop+TextPositionHeight*13/32 + (CBSpace * x) - CBLabl, TextPositionWidth-68,CBSpace);
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Transparent := True;
Parent:= WizardForm;
Visible:= SelectTaskCheck(x + 1);
end;
end;
#endif

ReadyLabel1_1.Labl:=TLabel.Create(WizardForm);
with ReadyLabel1_1.Labl do begin
AutoSize:=False
SetBounds(TextPositionLeft+25, TextPositionTop+TextPositionHeight*1/16, TextPositionWidth-50, TextPositionHeight);
WordWrap:=True
Transparent:=True
Alignment:=TextOneCenter;
Font.Name:= TextOneFontName;
Font.Size:= TextOneFontSize;
Font.Color:=TextOneFontColor;
Caption:= TextOneFontUpperCaser(FmtMessage(cm('ReadyMessage1_1'), [ApplicationName('')]))
Parent:=WizardForm
OnMouseDown := @MainAreaMouseDown;
end;

ReadyLabel2_1.Labl:=TLabel.Create(WizardForm);
with ReadyLabel2_1.Labl do begin
AutoSize:=False
SetBounds(TextPositionLeft+25, TextPositionTop+TextPositionHeight*3/16, TextPositionWidth-50, TextPositionHeight);
WordWrap:=True
Transparent:=True
Alignment:=TextTwoCenter;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Caption:= TextTwoFontUpperCaser(FmtMessage(cm('ReadyMessage2_1'), [ApplicationName('')]))
Parent:=WizardForm
OnMouseDown := @MainAreaMouseDown;
end;

DownloadProgressGauge:=TNewProgressBar.Create(WizardForm);
with DownloadProgressGauge do begin
Parent:=WizardForm;
Left:=TextPositionLeft+30
Top:=TextPositionTop+TextPositionHeight*7/16;
Width:=TextPositionWidth-60
Height:=ScaleY(12)
Min:=0;
Max:=100;
end;

DownloadLabel1_1.Labl:=TLabel.Create(WizardForm);
with DownloadLabel1_1.Labl do begin
AutoSize:=False
SetBounds(TextPositionLeft+25, TextPositionTop+TextPositionHeight*1/16, TextPositionWidth-50, TextPositionHeight);
WordWrap:=True
Transparent:=True
Alignment:=TextOneCenter;
Font.Name:= TextOneFontName;
Font.Size:= TextOneFontSize;
Font.Color:=TextOneFontColor;
Caption:= TextOneFontUpperCaser(FmtMessage(cm('DownloadMessage1_1'), [ApplicationName('')]))
Parent:=WizardForm
OnMouseDown := @MainAreaMouseDown;
end;

DownloadLabel2_1.Labl:=TLabel.Create(WizardForm);
with DownloadLabel2_1.Labl do begin
AutoSize:=False
SetBounds(TextPositionLeft+25, TextPositionTop+TextPositionHeight*3/16, TextPositionWidth-50, TextPositionHeight);
WordWrap:=True
Transparent:=True
Alignment:=TextTwoCenter;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Caption:= TextTwoFontUpperCaser(FmtMessage(cm('DownloadMessage2_1'), [ApplicationName('')]))
Parent:=WizardForm
OnMouseDown := @MainAreaMouseDown;
end;

DownloadLabel3_3_1.Labl := TLabel.Create(WizardForm);
with DownloadLabel3_3_1.Labl do begin
AutoSize:=False;
SetBounds(TextPositionLeft +23, TextPositionTop+TextPositionHeight*11/16, TextPositionWidth-46, ScaleY(60));
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

DownloadLabel3_4.Labl := TLabel.Create(WizardForm);
with DownloadLabel3_4.Labl do
begin
AutoSize:=False;
SetBounds(TextPositionLeft, TextPositionTop+TextPositionHeight*1/2, TextPositionWidth, ScaleY(60));
Alignment:=taCenter;
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

DownloadLabel3_1.Labl := TLabel.Create(WizardForm);
with DownloadLabel3_1.Labl do
begin
AutoSize:=False;
SetBounds(TextPositionLeft +23, TextPositionTop+TextPositionHeight*19/32, (TextPositionWidth/2)-46, ScaleY(60));
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

DownloadLabel3_2.Labl := TLabel.Create(WizardForm);
with DownloadLabel3_2.Labl do
begin
AutoSize:=False;
SetBounds((TextPositionLeft)+(TextPositionWidth/2)+23, TextPositionTop+TextPositionHeight*19/32, (TextPositionWidth/2)-46, ScaleY(60));
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

if not ShowBGFullscreen2 then begin
InstallLabel1_1.Labl:=TLabel.Create(WizardForm);
with InstallLabel1_1.Labl do begin
AutoSize:=False
SetBounds(TextPositionLeft+25, TextPositionTop+TextPositionHeight*1/16, TextPositionWidth-50, TextPositionHeight);
WordWrap:=True
Transparent:=True
Alignment:=TextOneCenter;
Font.Name:= TextOneFontName;
Font.Size:= TextOneFontSize;
Font.Color:=TextOneFontColor;
Caption:= TextOneFontUpperCaser(FmtMessage(cm('InstallMessage1_1'), [ApplicationName('')]))
Parent:=WizardForm
OnMouseDown := @MainAreaMouseDown;
end;

InstallLabel2_1.Labl:=TLabel.Create(WizardForm);
with InstallLabel2_1.Labl do begin
AutoSize:=False
SetBounds(TextPositionLeft+25, TextPositionTop+TextPositionHeight*3/16, TextPositionWidth-50, TextPositionHeight);
WordWrap:=True
Transparent:=True
Alignment:=TextTwoCenter;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Caption:= TextTwoFontUpperCaser(FmtMessage(cm('InstallMessage2_1'), [ApplicationName('')]))
Parent:=WizardForm
OnMouseDown := @MainAreaMouseDown;
end;

InstallLabel3_3_1.Labl := TLabel.Create(WizardForm);
with InstallLabel3_3_1.Labl do begin
AutoSize:=False;
SetBounds(TextPositionLeft +23, TextPositionTop+TextPositionHeight*11/16, TextPositionWidth-46, ScaleY(60));
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

InstallLabel3_3_2.Labl := TLabel.Create(WizardForm);
with InstallLabel3_3_2.Labl do begin
AutoSize:=False;
SetBounds(TextPositionLeft +23, TextPositionTop+TextPositionHeight*11/16, TextPositionWidth-46, ScaleY(60));
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

InstallLabel3_4.Labl := TLabel.Create(WizardForm);
with InstallLabel3_4.Labl do
begin
AutoSize:=False;
SetBounds(TextPositionLeft, TextPositionTop+TextPositionHeight*1/2, TextPositionWidth, ScaleY(60));
Alignment:=taCenter;
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

InstallLabel3_1.Labl := TLabel.Create(WizardForm);
with InstallLabel3_1.Labl do
begin
AutoSize:=False;
SetBounds(TextPositionLeft +23, TextPositionTop+TextPositionHeight*19/32, (TextPositionWidth/2)-46, ScaleY(60));
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

InstallLabel3_2.Labl := TLabel.Create(WizardForm);
with InstallLabel3_2.Labl do
begin
AutoSize:=False;
SetBounds((TextPositionLeft)+(TextPositionWidth/2)+23, TextPositionTop+TextPositionHeight*19/32, (TextPositionWidth/2)-46, ScaleY(60));
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;
end;

if ShowBGFullscreen2 then begin
InstallLabel1_1.Labl:=TLabel.Create(WizardForm);
with InstallLabel1_1.Labl do begin
AutoSize:=False
SetBounds(SmallTextPositionLeft+ScaleX(10), SmallTextPositionTop+SmallTextPositionHeight*1/32, SmallTextPositionWidth-ScaleX(20), ScaleY(30));
WordWrap:=True
Transparent:=True
Alignment:=SmallTextOneCenter;
Font.Name:=SmallTextOneFontName;
Font.Size:= SmallTextOneFontSize;
Font.Color:=SmallTextOneFontColor;
Caption:= TextOneFontUpperCaser(FmtMessage(cm('InstallMessage1_1'), [ApplicationName('')]))
Parent:=WizardForm
OnMouseDown := @MainAreaMouseDown;
end;

InstallLabel2_1.Labl:=TLabel.Create(WizardForm);
with InstallLabel2_1.Labl do begin
AutoSize:=False
SetBounds(SmallTextPositionLeft+ScaleX(10), SmallTextPositionTop+SmallTextPositionHeight*5/32, SmallTextPositionWidth-ScaleX(20), ScaleY(40));
WordWrap:=True
Transparent:=True
Alignment:=SmallTextTwoCenter;
Font.Name:=SmallTextTwoFontName;
Font.Size:= SmallTextTwoFontSize;
Font.Color:=SmallTextTwoFontColor;
Caption:= TextTwoFontUpperCaser(FmtMessage(cm('InstallMessage2_1'), [ApplicationName('')]))
Parent:=WizardForm
OnMouseDown := @MainAreaMouseDown;
end;

InstallLabel3_1.Labl := TLabel.Create(WizardForm);
with InstallLabel3_1.Labl do
begin
AutoSize:=False;
SetBounds(SmallTextPositionLeft+ScaleX(25), SmallTextPositionTop+SmallTextPositionHeight*10/16, ScaleX(245), ScaleY(60));
Transparent:=True;
Font.Name:= SmallTextTwoFontName;
Font.Size:= SmallTextTwoFontSize;
Font.Color:=SmallTextTwoFontColor;
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

InstallLabel3_2.Labl := TLabel.Create(WizardForm);
with InstallLabel3_2.Labl do
begin
AutoSize:=False;
SetBounds(SmallTextPositionLeft+(SmallTextPositionWidth/2)+ScaleX(25), SmallTextPositionTop+SmallTextPositionHeight*10/16, (SmallTextPositionWidth/2)-ScaleX(50), ScaleY(60));
Transparent:=True;
Font.Name:= SmallTextTwoFontName;
Font.Size:= SmallTextTwoFontSize;
Font.Color:=SmallTextTwoFontColor;
Parent := WizardForm; 
OnMouseDown := @MainAreaMouseDown;
end;

InstallLabel3_3_1.Labl := TLabel.Create(WizardForm);
with InstallLabel3_3_1.Labl do begin
AutoSize:=False;
SetBounds(SmallTextPositionLeft+ScaleX(25), SmallTextPositionTop+SmallTextPositionHeight*3/4, SmallTextPositionWidth-ScaleX(50), ScaleY(60));
Transparent:=True;
Font.Name:= SmallTextTwoFontName;
Font.Size:= SmallTextTwoFontSize;
Font.Color:=SmallTextTwoFontColor;
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

InstallLabel3_3_2.Labl := TLabel.Create(WizardForm);
with InstallLabel3_3_2.Labl do begin
AutoSize:=False;
SetBounds(SmallTextPositionLeft+ScaleX(25), SmallTextPositionTop+SmallTextPositionHeight*3/4, SmallTextPositionWidth-ScaleX(50), ScaleY(60));
Transparent:=True;
Font.Name:= SmallTextTwoFontName;
Font.Size:= SmallTextTwoFontSize;
Font.Color:=SmallTextTwoFontColor;
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;

InstallLabel3_4.Labl := TLabel.Create(WizardForm);
with InstallLabel3_4.Labl do
begin
AutoSize:=False;
SetBounds(SmallTextPositionLeft, SmallTextPositionTop+SmallTextPositionHeight*1/2, SmallTextPositionWidth, ScaleY(60));
Alignment:=taCenter;
Transparent:=True;
Font.Name:= SmallTextTwoFontName;
Font.Size:= SmallTextTwoFontSize;
Font.Color:=SmallTextTwoFontColor;
Parent := WizardForm;
OnMouseDown := @MainAreaMouseDown;
end;
end;

if ShowBGFullscreen2 then begin
Wizardform.ProgressGauge.SetBounds(SmallTextPositionLeft+ScaleX(25), SmallTextPositionTop+SmallTextPositionHeight*13/32, SmallTextPositionWidth-ScaleX(50), ScaleY(12));
Wizardform.ProgressGauge.Parent:=WizardForm
end;
if not ShowBGFullscreen2 then begin
Wizardform.ProgressGauge.Left:=TextPositionLeft+30
Wizardform.ProgressGauge.Top:=TextPositionTop+TextPositionHeight*7/16;
Wizardform.ProgressGauge.Width:=TextPositionWidth-60
Wizardform.ProgressGauge.Height:=ScaleY(12)
Wizardform.ProgressGauge.Parent:=WizardForm
end;

with WizardForm.InfoAfterMemo do
begin
Left := TextPositionLeft +30;
Top :=TextPositionTop +TextPositionHeight*6/16;
Width :=TextPositionWidth-60;
Height :=TextPositionHeight*7/16;
Parent:=WizardForm;
end;

FinishLabel1_1.Labl:= TLabel.Create(WizardForm);
with FinishLabel1_1.Labl do begin
AutoSize:=False
SetBounds(TextPositionLeft+25, TextPositionTop+TextPositionHeight*1/16, TextPositionWidth-50, TextPositionHeight);
WordWrap:=True
Alignment:=TextOneCenter;
Transparent:=True
Font.Name:=TextOneFontName;
Font.Size:= TextOneFontSize;
Font.Color:=TextOneFontColor;
Parent:=WizardForm
Caption:= TextOneFontUpperCaser(FmtMessage(cm('FinishMessage1_1'), [ApplicationName('')]))
OnMouseDown := @MainAreaMouseDown;
end;

FinishLabel2_1.Labl:=TLabel.Create(WizardForm);
with FinishLabel2_1.Labl do begin
AutoSize:=False
SetBounds(TextPositionLeft+25, TextPositionTop+TextPositionHeight*3/16, TextPositionWidth-50, TextPositionHeight);
WordWrap:=True
Transparent:=True
Alignment:=TextTwoCenter;
Font.Name:=TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Parent:=WizardForm
OnMouseDown := @MainAreaMouseDown;
end;

CreateShadow(WelcomeLabel1_1,True);
CreateShadow(WelcomeLabel2_1,True);

CreateShadow(SerialLabel1_1,True);
CreateShadow(SerialLabel2_1,True);

CreateShadow(LicenseLabel1_1,True);
CreateShadow(LicenseLabel2_1,True);
CreateShadow(LicenseLabel3_1,True);

CreateShadow(SystemLabel1_1,True);
CreateShadow(SystemLabel2_1,True);
CreateShadow(SystemLabel3_1,True);
CreateShadow(SystemLabel3_2,True);
CreateShadow(SystemLabel3_3,True);
CreateShadow(SystemLabel3_4,True);
CreateShadow(SystemLabel3_5,True);
CreateShadow(SystemLabel3_6,True);
CreateShadow(SystemLabel3_7,True);
CreateShadow(SystemLabel3_8,True);

CreateShadow(InformationLabel1_1,True);
CreateShadow(InformationLabel2_1,True);

CreateShadow(SelectComponentLabel1_1,True);
CreateShadow(SelectComponentLabel2_1,True);
#ifdef Component
for x:=0 to GetArrayLength(SelectComponentCheck1) - 1 do
CreateShadow(SelectComponentLabel[x],True);
#endif

CreateShadow(SelectDirLabel1_1,True);
CreateShadow(SelectDirLabel2_1,True);
CreateShadow(SelectDirLabel3_1,True);
CreateShadow(SelectDirLabel4_1,True);
CreateShadow(SelectDirLabel4_2,True);
CreateShadow(SelectDirLabel4_4,True);
CreateShadow(SelectDirLabel4_3,True);
CreateShadow(SelectDirLabel4_5,True);
CreateShadow(SelectDirLabel4_6,True);
CreateShadow(SelectDirLabel4_7,True);
CreateShadow(SelectDirLabel4_8,True);

CreateShadow(SelectGroupLabel1_1,True);
CreateShadow(SelectGroupLabel2_1,True);
CreateShadow(SelectGroupLabel3_1,True);
CreateShadow(SelectGroupLabel4_1,True);
CreateShadow(SelectGroupLabel4_2,True);

CreateShadow(PreviewLabel1_1,True);

CreateShadow(SelectPriorityLabel1_1,True);
CreateShadow(SelectPriorityLabel2_1,True);
CreateShadow(SelectPriorityLabel3_1,True);
CreateShadow(SelectPriorityLabel3_2,True);
CreateShadow(SelectPriorityLabel3_3,True);
CreateShadow(SelectPriorityLabel3_4,True);
CreateShadow(SelectPriorityLabel3_5,True);
CreateShadow(SelectPriorityLabel3_6,True);

CreateShadow(SelectTaskLabel1_1,True);
CreateShadow(SelectTaskLabel2_1,True);
#ifdef Task
for x:=0 to GetArrayLength(SelectTaskCheck1) - 1 do
CreateShadow(SelectTaskLabel[x],True);
#endif

CreateShadow(ReadyLabel1_1,True);
CreateShadow(ReadyLabel2_1,True);

CreateShadow(DownloadLabel1_1,True);
CreateShadow(DownloadLabel2_1,True);
CreateShadow(DownloadLabel3_3_1,True);
CreateShadow(DownloadLabel3_4,True);
CreateShadow(DownloadLabel3_1,True);
CreateShadow(DownloadLabel3_2,True);

CreateShadow(InstallLabel1_1,True);
CreateShadow(InstallLabel2_1,True);
CreateShadow(InstallLabel3_3_1,True);
CreateShadow(InstallLabel3_3_2,True);
CreateShadow(InstallLabel3_4,True);
CreateShadow(InstallLabel3_1,True);
CreateShadow(InstallLabel3_2,True);

CreateShadow(FinishLabel1_1,True);
CreateShadow(FinishLabel2_1,True);

WizardForm.DirEdit.OnChange:= @DirEditOnChange;
WizardForm.DirEdit.Text:= WizardForm.DirEdit.Text + #0;
end;

procedure HideComponents;
begin
WelcomeLabel1_1.Labl.Hide;
WelcomeLabel2_1.Labl.Hide;

SerialLabel1_1.Labl.Hide;
SerialLabel2_1.Labl.Hide;
SerialEdit1.Hide;
SerialEdit2.Hide;
SerialEdit3.Hide;
SerialEdit4.Hide;
SerialEdit5.Hide;
SerialBevel.Hide;

LicenseLabel1_1.Labl.Hide;
LicenseLabel2_1.Labl.Hide;
LicenseLabel3_1.Labl.Hide;
WizardForm.LicenseMemo.Hide;

SystemLabel1_1.Labl.Hide;
SystemLabel2_1.Labl.Hide;
SystemLabel3_1.Labl.Hide;
SystemLabel3_2.Labl.Hide;
SystemLabel3_3.Labl.Hide;
SystemLabel3_4.Labl.Hide;
SystemLabel3_5.Labl.Hide;
SystemLabel3_6.Labl.Hide;
SystemLabel3_7.Labl.Hide;
SystemLabel3_8.Labl.Hide;

InformationLabel1_1.Labl.Hide;
InformationLabel2_1.Labl.Hide;
WizardForm.InfoBeforeMemo.Hide;
WizardForm.InfoAfterMemo.Hide;

SelectComponentLabel1_1.Labl.Hide;
SelectComponentLabel2_1.Labl.Hide;
#ifdef Component
for x:=0 to GetArrayLength(SelectComponentCheck1) - 1 do
SelectComponentLabel[x].Labl.Hide;
#endif

SelectDirLabel1_1.Labl.Hide;
SelectDirLabel2_1.Labl.Hide;
SelectDirLabel3_1.Labl.Hide;
SelectDirLabel4_1.Labl.Hide;
SelectDirLabel4_2.Labl.Hide;
SelectDirLabel4_4.Labl.Hide;
SelectDirLabel4_3.Labl.Hide;
SelectDirLabel4_5.Labl.Hide;
SelectDirLabel4_6.Labl.Hide;
SelectDirLabel4_7.Labl.Hide;
SelectDirLabel4_8.Labl.Hide;
Wizardform.DirEdit.Hide;
Wizardform.GroupEdit.Hide;

SelectGroupLabel1_1.Labl.Hide;
SelectGroupLabel2_1.Labl.Hide;
SelectGroupLabel3_1.Labl.Hide;
SelectGroupLabel4_1.Labl.Hide;
SelectGroupLabel4_2.Labl.Hide;

PreviewLabel1_1.Labl.Hide;
PreviewBevel.Hide;

SelectPriorityLabel1_1.Labl.Hide;
SelectPriorityLabel2_1.Labl.Hide;
SelectPriorityLabel3_1.Labl.Hide;
SelectPriorityLabel3_2.Labl.Hide;
SelectPriorityLabel3_3.Labl.Hide;
SelectPriorityLabel3_4.Labl.Hide;
SelectPriorityLabel3_5.Labl.Hide;
SelectPriorityLabel3_6.Labl.Hide;

SelectTaskLabel1_1.Labl.Hide;
SelectTaskLabel2_1.Labl.Hide;
#ifdef Task
for x:=0 to GetArrayLength(SelectTaskCheck1) - 1 do
SelectTaskLabel[x].Labl.Hide;
#endif

ReadyLabel1_1.Labl.Hide;
ReadyLabel2_1.Labl.Hide;

DownloadLabel1_1.Labl.Hide;
DownloadLabel2_1.Labl.Hide;
DownloadLabel3_3_1.Labl.Hide;
DownloadLabel3_4.Labl.Hide;
DownloadLabel3_1.Labl.Hide;
DownloadLabel3_2.Labl.Hide;
DownloadProgressGauge.Hide;

InstallLabel1_1.Labl.Hide;
InstallLabel2_1.Labl.Hide;
InstallLabel3_3_1.Labl.Hide;
InstallLabel3_3_2.Labl.Hide;
InstallLabel3_4.Labl.Hide;
InstallLabel3_1.Labl.Hide;
InstallLabel3_2.Labl.Hide
Wizardform.ProgressGauge.Hide

FinishLabel1_1.Labl.Hide;
FinishLabel2_1.Labl.Hide;
end;

procedure ShowComponents(CurPageID: Integer);
var
i: Integer;
begin
ImgSetVisibility(EditBG,False);
ImgSetVisibility(SmallTextBG,False);

BtnSetVisibility(LicenseCheck1_1,False);

#ifdef Component
for x:=0 to GetArrayLength(SelectComponentCheck1) - 1 do
BtnSetVisibility(SelectComponentCheck1[x],False);
#endif

BtnSetVisibility(SystemResource3_1_1,False); 
BtnSetVisibility(SystemResource3_2_1,False);
BtnSetVisibility(SystemResource3_3_1,False); 
BtnSetVisibility(SystemResource3_4_1,False);
BtnSetVisibility(SystemResource3_5_1,False);
BtnSetVisibility(SystemResource3_6_1,False);
BtnSetVisibility(SystemResource3_6_2,False);
BtnSetVisibility(SystemResource3_6_3,False);
BtnSetVisibility(SystemResource3_6_4,False);
BtnSetVisibility(SystemResource3_6_5,False);

BtnSetVisibility(SelectGroupCheck1_1,False);
BtnSetVisibility(SelectGroupCheck2_1,False);

#ifdef Task
for x:=0 to GetArrayLength(SelectTaskCheck1) - 1 do
BtnSetVisibility(SelectTaskCheck1[x],False);
#endif


if PreviewAvai then
begin
ImgSetVisibility(Preview1Image,False);
ImgSetVisibility(Preview2Image,False);
ImgSetVisibility(Preview3Image,False);
end;

BtnSetVisibility(SelectPriorityCheck1_1,False);
BtnSetVisibility(SelectPriorityCheck2_1,False);
BtnSetVisibility(SelectPriorityCheck3_1,False);
BtnSetVisibility(SelectPriorityCheck4_1,False);
BtnSetVisibility(SelectPriorityCheck5_1,False);
BtnSetVisibility(SelectPriorityCheck6_1,False);

case CurPageID of
wpWelcome:
begin
WelcomeLabel1_1.Labl.Show;
WelcomeLabel2_1.Labl.Show;
end;

SerialPage.ID:
begin
SerialLabel1_1.Labl.Show;
SerialLabel2_1.Labl.Show;
SerialEdit1.Show;
SerialEdit2.Show;
SerialEdit3.Show;
SerialEdit4.Show;
SerialEdit5.Show;
SerialBevel.Show;
end;

wpLicense:
begin
LicenseLabel1_1.Labl.Show;
LicenseLabel2_1.Labl.Show;
LicenseLabel3_1.Labl.Show;
WizardForm.LicenseMemo.Show;
if FileExists(ExpandConstant('{tmp}\CheckBox.png')) then
BtnSetVisibility(LicenseCheck1_1,True);
end;

SystemPage.ID:
begin
BtnSetVisibility(SystemResource3_1_1,True);
BtnSetVisibility(SystemResource3_2_1,True);
BtnSetVisibility(SystemResource3_3_1,True);
BtnSetVisibility(SystemResource3_4_1,True);
BtnSetVisibility(SystemResource3_5_1,True);
BtnSetVisibility(SystemResource3_6_1,True);
BtnSetVisibility(SystemResource3_6_2,True);
BtnSetVisibility(SystemResource3_6_3,True);
BtnSetVisibility(SystemResource3_6_4,True);
BtnSetVisibility(SystemResource3_6_5,True);
SystemLabel1_1.Labl.Show;
SystemLabel2_1.Labl.Show;
SystemLabel3_1.Labl.Show;
SystemLabel3_2.Labl.Show;
SystemLabel3_3.Labl.Show;
SystemLabel3_4.Labl.Show;
SystemLabel3_5.Labl.Show;
SystemLabel3_6.Labl.Show;
SystemLabel3_7.Labl.Show;
SystemLabel3_8.Labl.Show;
end;

wpInfoBefore:
begin
InformationLabel1_1.Labl.Show;
InformationLabel2_1.Labl.Show;
WizardForm.InfoBeforeMemo.Show;
end;

SelectComponentPage.ID:
begin
SelectComponentLabel1_1.Labl.Show;
SelectComponentLabel2_1.Labl.Show;
#ifdef Component
for x:=0 to GetArrayLength(SelectComponentCheck1) - 1 do
begin
BtnSetVisibility(SelectComponentCheck1[x],SelectComponentCheck(x + 1));
SelectComponentLabel[x].Labl.Visible := SelectComponentCheck(x + 1);
end;
#endif
end;

wpSelectDir:
begin
ImgSetVisibility(EditBG,True);
if not (FileExists(ExpandConstant('{tmp}\EditBackground.png'))) then
Wizardform.DirEdit.Show;
SelectDirLabel1_1.Labl.Show;
SelectDirLabel2_1.Labl.Show;
if (FileExists(ExpandConstant('{tmp}\EditBackground.png'))) then
SelectDirLabel3_1.Labl.Show;
SelectDirLabel4_1.Labl.Show;
SelectDirLabel4_2.Labl.Show;
SelectDirLabel4_4.Labl.Show;
if NeededSpaceFix = False then
SelectDirLabel4_3.Labl.Show;
SelectDirLabel4_5.Labl.Show;
SelectDirLabel4_6.Labl.Show;
SelectDirLabel4_8.Labl.Show;
if NeededSpaceFix = False then
SelectDirLabel4_7.Labl.Show;
with Wizardform.DirBrowseButton do
begin
Visible := True;
end;
end;

wpSelectProgramGroup:
begin
ImgSetVisibility(EditBG,True);
if not (FileExists(ExpandConstant('{tmp}\EditBackground.png'))) then
Wizardform.GroupEdit.Show;
if FileExists(ExpandConstant('{tmp}\CheckBox.png')) then
BtnSetVisibility(SelectGroupCheck1_1,True);
if FileExists(ExpandConstant('{tmp}\CheckBox.png')) then
BtnSetVisibility(SelectGroupCheck2_1,True);
SelectGroupLabel1_1.Labl.Show;
SelectGroupLabel2_1.Labl.Show;
if (FileExists(ExpandConstant('{tmp}\EditBackground.png'))) then
SelectGroupLabel3_1.Labl.Show;
SelectGroupLabel4_1.Labl.Show;
SelectGroupLabel4_2.Labl.Show;
with Wizardform.GroupBrowseButton do
begin
Visible := True;
end;
end;

PreviewPage.ID:
begin
PreviewLabel1_1.Labl.Show;
PreviewBevel.Show;
if PreviewAvai then
begin
ImgSetVisibility(Preview1Image,True);
ImgSetVisibility(Preview2Image,False);
ImgSetVisibility(Preview3Image,False);
end;
end;

SelectPriorityPage.ID:
begin
SelectPriorityLabel1_1.Labl.Show;
SelectPriorityLabel2_1.Labl.Show;
SelectPriorityLabel3_1.Labl.Show;
SelectPriorityLabel3_2.Labl.Show;
SelectPriorityLabel3_3.Labl.Show;
SelectPriorityLabel3_4.Labl.Show;
SelectPriorityLabel3_5.Labl.Show;
SelectPriorityLabel3_6.Labl.Show;
BtnSetVisibility(SelectPriorityCheck1_1,True);
BtnSetVisibility(SelectPriorityCheck2_1,True);
BtnSetVisibility(SelectPriorityCheck3_1,True);
BtnSetVisibility(SelectPriorityCheck4_1,True);
BtnSetVisibility(SelectPriorityCheck5_1,True);
BtnSetVisibility(SelectPriorityCheck6_1,True);
end;

SelectTasksPage.ID:
begin
SelectTaskLabel1_1.Labl.Show;
SelectTaskLabel2_1.Labl.Show;
#ifdef Task
for x:=0 to GetArrayLength(SelectTaskCheck1) - 1 do
begin
BtnSetVisibility(SelectTaskCheck1[x],SelectTaskCheck(x + 1));
SelectTaskLabel[x].Labl.Visible := SelectTaskCheck(x + 1);
end;
#endif
end;

wpReady:
begin
ReadyLabel1_1.Labl.Show;
ReadyLabel2_1.Labl.Show;
end;

DownloadPage.ID:
begin
DownloadLabel1_1.Labl.Show;
DownloadLabel2_1.Labl.Show;
DownloadLabel3_3_1.Labl.Show;
DownloadLabel3_4.Labl.Show;
DownloadLabel3_1.Labl.Show;
DownloadLabel3_2.Labl.Show;
if CustomProgressGauge then
DProgress:=ImgPBCreate(WizardForm.Handle, ExpandConstant('{tmp}\ProgressBackground.png'), ExpandConstant('{tmp}\ProgressImage.png'),TextPositionLeft+30, TextPositionTop+TextPositionHeight*7/16, TextPositionWidth-60, ScaleY(12));
if not CustomProgressGauge then
DownloadProgressGauge.Show;
#if ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "InternetMedia", "Source1", "") != ""
idpConnectControl('TotalProgressBar', DownloadProgressGauge.Handle);
idpConnectControl('Status', IDPForm.Status.Handle);
idpConnectControl('ElapsedTime', IDPForm.ElapsedTime.Handle);
idpConnectControl('RemainingTime', IDPForm.RemainingTime.Handle);
idpConnectControl('TotalDownloaded', IDPForm.TotalDownloaded.Handle);
idpConnectControl('WizardForm', WizardForm.Handle);
idpConnectControl('BackButton', WizardForm.BackButton.Handle);
idpConnectControl('NextButton', WizardForm.NextButton.Handle);
idpAddMessage('KB/s', ExpandConstant('{cm:IDP_KBs}'));
idpAddMessage('MB/s', ExpandConstant('{cm:IDP_MBs}'));
idpAddMessage('%.2f of %.2f', ExpandConstant('{cm:IDP_X_of_X}'));
idpAddMessage('KB', ExpandConstant('{cm:IDP_KB}'));
idpAddMessage('MB', ExpandConstant('{cm:IDP_MB}'));
idpAddMessage('GB', ExpandConstant('{cm:IDP_GB}'));
idpAddMessage('Initializing...', ExpandConstant('{cm:IDP_Initializing}'));
idpAddMessage('Getting file information...', ExpandConstant('{cm:IDP_GettingFileInformation}'));
idpAddMessage('Starting download...', ExpandConstant('{cm:IDP_StartingDownload}'));
idpAddMessage('Connecting...', ExpandConstant('{cm:IDP_Connecting}'));
idpAddMessage('Downloading...', ExpandConstant('{cm:IDP_Downloading}'));
idpAddMessage('Download complete', ExpandConstant('{cm:IDP_DownloadComplete}'));
idpAddMessage('Download failed', ExpandConstant('{cm:IDP_DownloadFailed}'));
idpAddMessage('Cannot connect', ExpandConstant('{cm:IDP_CannotConnect}'));
idpAddMessage('Unknown', ExpandConstant('{cm:IDP_Unknown}'));
idpAddMessage('Download cancelled', ExpandConstant('{cm:IDP_DownloadCancelled}'));
idpAddMessage('HTTP Error %d', ExpandConstant('{cm:IDP_HTTPError_X}'));
idpAddMessage('400', ExpandConstant('{cm:IDP_400}'));
idpAddMessage('401', ExpandConstant('{cm:IDP_401}'));
idpAddMessage('404', ExpandConstant('{cm:IDP_404}'));
idpAddMessage('500', ExpandConstant('{cm:IDP_500}'));
idpAddMessage('502', ExpandConstant('{cm:IDP_502}'));
idpAddMessage('503', ExpandConstant('{cm:IDP_503}'));
idpAddMessage('Check your connection and click ''Retry'' to try downloading the files again, or click ''Next'' to continue installing anyway.', ExpandConstant('{cm:IDP_RetryNext}'));
idpAddMessage('Check your connection and click ''Retry'' to try downloading the files again, or click ''Cancel'' to terminate setup.', ExpandConstant('{cm:IDP_RetryCancel}'));
idpClearFiles;
#sub IDPs1
SetArrayLength(IDPs,{#i});
SetArrayLength(IDPs[{#i} - 1].Arc,5);
#endsub
#if ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "InternetMedia", "Source1", "") != ""
#for {i = 1; ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "InternetMedia", StringChange("SourceInt","Int", Str(i)), "") !=""; i++} IDPs1
#endif
#sub IDPs2
#define IDPsInf1 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "InternetMedia", "Source" + Str(i), "")
#define IDPsInf2 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "InternetMedia", "Output" + Str(i), "")
#define IDPsInf3 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "InternetMedia", "Language" + Str(i), "0")
#define IDPsInf4 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "InternetMedia", "Component" + Str(i), "0")
#define IDPsInf5 ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "InternetMedia", "Task" + Str(i), "0")
IDPs[{#i} - 1].Arc[0]:=ExpandConstant('{#IDPsInf1}');
IDPs[{#i} - 1].Arc[1]:=ConstConv5('{#IDPsInf2}');
IDPs[{#i} - 1].Arc[2]:='{#IDPsInf3}';
IDPs[{#i} - 1].Arc[3]:='{#IDPsInf4}';
IDPs[{#i} - 1].Arc[4]:='{#IDPsInf5}';
#endsub
#if ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "InternetMedia", "Source1", "") != ""
#for {i = 1; ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "InternetMedia", StringChange("SourceInt","Int", Str(i)), "") !=""; i++} IDPs2
#endif
i:=0;
repeat
i:= i + 1;
if (FileExists(IDPs[i - 1].Arc[0]) = False) and ((IDPs[i - 1].Arc[2] = '') or (LanguageTranslator(IDPs[i - 1].Arc[2]) = ActiveLanguage)) and ((IDPs[i - 1].Arc[3] = '') or ComponentsCheckFA(StrToInt(IDPs[i - 1].Arc[3]))) and ((IDPs[i - 1].Arc[4] = '') or TaskCheckFA(StrToInt(IDPs[i - 1].Arc[4]))) then
begin
idpAddFile(IDPs[i - 1].Arc[0], IDPs[i - 1].Arc[1]);
end;
until i = GetArrayLength(IDPs);
idpSetDetailedMode(true);
idpStartDownload;
#endif
end;

wpInstalling:
begin
ImgPBDelete(DProgress);
CalculatorTimer:= TTimer.Create(WizardForm);
with CalculatorTimer do begin
OnTimer:=@Calculator;
Interval:=500;
Enabled:=True;
end;
if ShowBGFullscreen2 then begin
Background;
if WizardImage_JPG or WizardImage_PNG then
begin
FreeBG;
SCreateBG;
end else begin
WizardForm.ClientWidth:=SmallInstallerWidth;
WizardForm.ClientHeight:=SmallInstallerHeight;
WizardForm.Center
WizardForm.Top:=GetSystemMetrics(1)-SmallInstallerHeight-50;
end;
ImgSetVisibility(TextBG,False);
ImgSetVisibility(Logo,False);
ImgSetVisibility(SmallTextBG,True);
end;
InstallLabel1_1.Labl.Show;
InstallLabel2_1.Labl.Show;
if not CustomProgressGauge then
Wizardform.ProgressGauge.Show;
end;

wpInfoAfter:
begin
InfoAfter:=True;
ImgPBDelete(Progress);
CalculatorTimer.Enabled:=False;
if ShowBGFullscreen2 then begin
if VideoEnabled = True then
StopVideo;
if MusicEnabled = True then
begin
MusicBtnClick(nil);
MusicBtnClick(nil);
end;
BGForm1.Hide;
BGForm2.Hide;
if WizardImage_JPG or WizardImage_PNG then
begin
SFreeBG;
CreateBG;
end else begin
WizardForm.ClientWidth:=InstallerWidth;
WizardForm.ClientHeight:=InstallerHeight;
WizardForm.Center
end;
ImgSetVisibility(Logo,True);
end;
if (SlidesEnabled = True) then begin
if ShowBGFullscreen then
SlideStop;
end;
ImgSetVisibility(TextBG,True);
InformationLabel1_1.Labl.Show;
InformationLabel2_1.Labl.Show;
WizardForm.InfoAfterMemo.Show;
ButtonSetVisibility(BackBtn,WizardForm.BackButton.Visible);
ButtonSetVisibility(NextBtn,WizardForm.NextButton.Visible);
end;

wpFinished:
begin
if not ISDoneError then
Taskbar1_3;
if not InfoAfter then
begin
ImgPBDelete(Progress);
CalculatorTimer.Enabled:=False;
if ShowBGFullscreen2 then begin
if VideoEnabled = True then
StopVideo;
if MusicEnabled = True then
begin
MusicBtnClick(nil);
MusicBtnClick(nil);
end;
BGForm1.Hide;
BGForm2.Hide;
if WizardImage_JPG or WizardImage_PNG then
begin
SFreeBG;
CreateBG;
end else begin
WizardForm.ClientWidth:=InstallerWidth;
WizardForm.ClientHeight:=InstallerHeight;
WizardForm.Center
end;
ImgSetVisibility(Logo,True);
end;
if (SlidesEnabled = True) then begin
if ShowBGFullscreen then
SlideStop;
end;
ImgSetVisibility(TextBG,True);
end;
FinishLabel1_1.Labl.Show;
FinishLabel2_1.Labl.Show;
ButtonSetVisibility(BackBtn,WizardForm.BackButton.Visible);
ButtonSetVisibility(NextBtn,WizardForm.NextButton.Visible);
end;
end;
ImgApplyChanges(WizardForm.Handle);
end;

procedure CancelYesBtnClick(Sender: TObject);
begin
ButtonModal(CancelYesBtn);
end;

procedure CancelNoBtnClick(Sender: TObject);
begin
ButtonModal(CancelNoBtn)
end;

procedure CreateCancelBox;
var
Label1, Label2: TLabl;
begin
CancelForm:= CreateCustomForm();
with CancelForm do begin
ClientWidth := ScaleX(550);
ClientHeight := ScaleY(300);
Center;
Color:=$252525;
FormStyle:= fsStayOnTop;
BringToFront;
Caption:=WizardForm.Caption;
end;

Label1.Labl:= TLabel.Create(CancelForm);
with Label1.Labl do begin
AutoSize:=False
SetBounds(50, 30, 450, 40);
WordWrap:=True
Transparent:=True
Alignment:=TextOneCenter;
Font.Name:= TextOneFontName;
Font.Size:= TextOneFontSize;
Font.Color:=TextOneFontColor;
Caption:= SetupMessage(msgExitSetupTitle);
Parent:=CancelForm
end;

Label2.Labl:= TLabel.Create(CancelForm);
with Label2.Labl do begin
AutoSize:=False
SetBounds(50, 55, 450, 200);
WordWrap:=True
Transparent:=True
Alignment:=TextTwoCenter;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Caption:= SetupMessage(msgExitSetupMessage)
Parent:=CancelForm
end;

CreateShadow(Label1,True);
CreateShadow(Label2,True);

if DialogWizardImage then
begin
ImgLoad(CancelForm.Handle,ExpandConstant('{tmp}\Dialog.jpg'),ScaleX(0), ScaleY(0),CancelForm.ClientWidth,CancelForm.ClientHeight,True,True);
if DialogWizardBackground then
ImgLoad(CancelForm.Handle,ExpandConstant('{tmp}\DialogTextBackground.png'),ScaleX(25), ScaleY(25),500,215,True,True);
end;
CancelYesBtn:=ButtonCreate(CancelForm,305,250,ScaleX(100),ScaleY(30),ExpandConstant('{tmp}\SmallButton.png'),ExpandConstant('{tmp}\SmallButtonSelected.png'),ExpandConstant('{tmp}\SmallButtonClicked.png'),ExpandConstant('{tmp}\SmallButtonDisabled.png'),mrYes)
ButtonSetText(CancelYesBtn,SetupMessage(msgButtonYes));
ButtonSetFont(CancelYesBtn,SmallButtonFontName,SmallButtonFontSize,SmallButtonFontSizeSelected,SmallButtonFontSizeClicked,SmallButtonFontSizeDisabled);
ButtonSetFontStyle(CancelYesBtn,SmallButtonFontBold,SmallButtonFontItalic,SmallButtonFontUnderline,SmallButtonFontStrikeOut,SmallButtonFontUppercase);
ButtonSetTextAlignment(CancelYesBtn,SmallButtonTextHorzAlign,SmallButtonTextVertAlign,SmallButtonTextOffsetX,SmallButtonTextOffsetY);
ButtonSetFontColor(CancelYesBtn,SmallButtonFontColor,SmallButtonFontColorSelected,SmallButtonFontColorClicked,SmallButtonFontColorDisabled);
ButtonSetEvent(CancelYesBtn,@CancelYesBtnClick);

CancelNoBtn:=ButtonCreate(CancelForm,425,250,ScaleX(100),ScaleY(30),ExpandConstant('{tmp}\SmallButton.png'),ExpandConstant('{tmp}\SmallButtonSelected.png'),ExpandConstant('{tmp}\SmallButtonClicked.png'),ExpandConstant('{tmp}\SmallButtonDisabled.png'),mrNo)
ButtonSetText(CancelNoBtn,SetupMessage(msgButtonNo));
ButtonSetFont(CancelNoBtn,SmallButtonFontName,SmallButtonFontSize,SmallButtonFontSizeSelected,SmallButtonFontSizeClicked,SmallButtonFontSizeDisabled);
ButtonSetFontStyle(CancelNoBtn,SmallButtonFontBold,SmallButtonFontItalic,SmallButtonFontUnderline,SmallButtonFontStrikeOut,SmallButtonFontUppercase);
ButtonSetTextAlignment(CancelNoBtn,SmallButtonTextHorzAlign,SmallButtonTextVertAlign,SmallButtonTextOffsetX,SmallButtonTextOffsetY);
ButtonSetFontColor(CancelNoBtn,SmallButtonFontColor,SmallButtonFontColorSelected,SmallButtonFontColorClicked,SmallButtonFontColorDisabled);
ButtonSetEvent(CancelNoBtn,@CancelNoBtnClick);
ButtonApplyChanges(CancelForm);
ImgApplyChanges(CancelForm.Handle);
end;

function ShowCancelBox:Integer;
begin
Result:=CancelForm.ShowModal;
end;

var
Menu: TMenuItem;

procedure AppOnMessage(var Msg: TMsg; var Handled: Boolean);
var
C1, C2, About: String;
begin
C1:=ExpandConstant('{cm:CreditsMessage2_1}');
C2:=ExpandConstant('{cm:CreditsMessage2_2}');
StringChangeEx(C1,'%1','Installer Creator',True);
StringChangeEx(C2,'%1','Installer Creator',True);
StringChangeEx(C2,'%2','EXOZEN-inc.',True);
About:=C1 + #13 + C2;
if Msg.message = WM_SYSCOMMAND then
if Msg.wParam = Menu.Handle then
MessageBox(WizardForm.Handle,About,ApplicationName(''), MB_ICONINFORMATION);
end;

function DecodeIDPStr(Str: String): Integer;
var
tmp, s: string;
DLSize,TLSize : Extended;
DLConv,TLConv : String;
begin
tmp:= str;

s:= Copy(tmp, 1, Pos(' ', tmp)-1)
Delete(tmp, 1, Pos(' ', tmp));
if (s <> '') then
DLSize:= StrToFloat(s);

s:= Copy(tmp, 1, Pos(' ', tmp)-1)
Delete(tmp, 1, Pos(' ', tmp));

s:= Copy(tmp, 1, Pos(' ', tmp)-1)
Delete(tmp, 1, Pos(' ', tmp));
if (s <> '') then
TLSize:= StrToFloat(s);

s:= Copy(tmp, 1, Pos(' ', tmp)-1)
Delete(tmp, 1, Pos(' ', tmp));
if (s <> '') then
TLConv:= s;

case TLConv of
ExpandConstant('{cm:IDP_KB}'): TLSize:= TLSize;
ExpandConstant('{cm:IDP_MB}'): TLSize:= TLSize * 1024;
ExpandConstant('{cm:IDP_GB}'): TLSize:= TLSize * 1048576;
ExpandConstant('{cm:IDP_KB}'): DLSize:= DLSize;
ExpandConstant('{cm:IDP_MB}'): DLSize:= DLSize * 1024;
ExpandConstant('{cm:IDP_GB}'): DLSize:= DLSize * 1048576;
end;

if TLSize <> 0 then
Result:=Round((DLSize * 100) / TLSize);
end;

procedure DownloadFixOnTimer(Sender: TObject);
begin
if WizardForm.CurPageID = DownloadPage.ID then
begin
DownloadLabel3_4.Labl.Caption:=ExpandConstant('(')+FmtMessage(cm('InstallMessage3_4'), [IDPForm.TotalDownloaded.Caption])+ExpandConstant(')');
DownloadLabel3_3_1.Labl.Caption:=IDPForm.Status.Caption;
DownloadLabel3_1.Labl.Caption:=FmtMessage(cm('InstallMessage3_1'), [ExpandConstant(' ')])+ExpandConstant(' ')+IDPForm.ElapsedTime.Caption;
DownloadLabel3_2.Labl.Caption:=FmtMessage(cm('InstallMessage3_2'), [ExpandConstant(' ')])+ExpandConstant(' ')+IDPForm.RemainingTime.Caption;
SetTaskBarProgressValue(DecodeIDPStr(IDPForm.TotalDownloaded.Caption));
ImgPBSetPosition(DProgress, DecodeIDPStr(IDPForm.TotalDownloaded.Caption));
end;
end;

procedure InitializeWizard;
begin
AddNewFont;
SetTaskBarTitle(FmtMessage(ExpandConstant('{cm:OtherMessage3_2}'), [ApplicationName('')]));
WizardForm.Caption:=FmtMessage(ExpandConstant('{cm:OtherMessage3_2}'), [ApplicationName('')]);
if not AppendMenu(GetSystemMenu(Wizardform.Handle, True), MF_DELETE, 0, SetupMessage(msgAboutSetupMenuItem)) then
WizardForm.Position:= poScreenCenter;
AppendMenu(GetSystemMenu(Wizardform.Handle, False), MF_SEPARATOR, 0, '');
Menu:= TMenuItem.Create(WizardForm); 
AppendMenu(GetSystemMenu(Wizardform.Handle, False), MF_BYPOSITION, Menu.Handle, SetupMessage(msgAboutSetupMenuItem));
Application.OnMessage:= @AppOnMessage;
PerformanceChanger:=512;
PerformanceChangerPCF:=128;
PerformanceChangerSREP:=512;
InitiateSplash;
InitWin7TaskBar;
CreateCancelBox;
CreateDiskPrompt;
CreateDirBrowse;
CreateCredits;
CreateWizardImage;
CreatePageComponents;
CreateTextFontStyle;
HideComponents;
CreateWizardButtons;
CustomCursor;
ButtonAnimateTimer:=TTimer.Create(WizardForm);
with ButtonAnimateTimer do begin
OnTimer:=@ButtonTimer;
Interval:=10;
Enabled:=True;
end;
DownloadFixTimer:=TTimer.Create(WizardForm);
with DownloadFixTimer do begin
OnTimer:=@DownloadFixOnTimer;
Interval:=1000
Enabled:=True;
end;
ImgApplyChanges(WizardForm.Handle);
end;

procedure CurPageChanged(CurPageID: Integer);
begin
HideComponents;
ShowComponents(CurPageID);
CreateShadow(WelcomeLabel1_1,False);
CreateShadow(WelcomeLabel2_1,False);

CreateShadow(SerialLabel1_1,False);
CreateShadow(SerialLabel2_1,False);

CreateShadow(LicenseLabel1_1,False);
CreateShadow(LicenseLabel2_1,False);
CreateShadow(LicenseLabel3_1,False);

CreateShadow(SystemLabel1_1,False);
CreateShadow(SystemLabel2_1,False);
CreateShadow(SystemLabel3_1,False);
CreateShadow(SystemLabel3_2,False);
CreateShadow(SystemLabel3_3,False);
CreateShadow(SystemLabel3_4,False);
CreateShadow(SystemLabel3_5,False);
CreateShadow(SystemLabel3_6,False);
CreateShadow(SystemLabel3_7,False);
CreateShadow(SystemLabel3_8,False);

CreateShadow(InformationLabel1_1,False);
CreateShadow(InformationLabel2_1,False);

CreateShadow(SelectComponentLabel1_1,False);
CreateShadow(SelectComponentLabel2_1,False);
#ifdef Component
for x:=0 to GetArrayLength(SelectComponentCheck1) - 1 do
CreateShadow(SelectComponentLabel[x],False);
#endif

CreateShadow(SelectDirLabel1_1,False);
CreateShadow(SelectDirLabel2_1,False);
CreateShadow(SelectDirLabel3_1,False);
CreateShadow(SelectDirLabel4_1,False);
CreateShadow(SelectDirLabel4_2,False);
CreateShadow(SelectDirLabel4_4,False);
CreateShadow(SelectDirLabel4_3,False);
CreateShadow(SelectDirLabel4_5,False);
CreateShadow(SelectDirLabel4_6,False);
CreateShadow(SelectDirLabel4_7,False);
CreateShadow(SelectDirLabel4_8,False);

CreateShadow(SelectGroupLabel1_1,False);
CreateShadow(SelectGroupLabel2_1,False);
CreateShadow(SelectGroupLabel3_1,False);
CreateShadow(SelectGroupLabel4_1,False);
CreateShadow(SelectGroupLabel4_2,False);

CreateShadow(PreviewLabel1_1,False);

CreateShadow(SelectPriorityLabel1_1,False);
CreateShadow(SelectPriorityLabel2_1,False);
CreateShadow(SelectPriorityLabel3_1,False);
CreateShadow(SelectPriorityLabel3_2,False);
CreateShadow(SelectPriorityLabel3_3,False);
CreateShadow(SelectPriorityLabel3_4,False);
CreateShadow(SelectPriorityLabel3_5,False);
CreateShadow(SelectPriorityLabel3_6,False);

CreateShadow(SelectTaskLabel1_1,False);
CreateShadow(SelectTaskLabel2_1,False);
#ifdef Task
for x:=0 to GetArrayLength(SelectTaskCheck1) - 1 do
CreateShadow(SelectTaskLabel[x],False);
#endif

CreateShadow(ReadyLabel1_1,False);
CreateShadow(ReadyLabel2_1,False);

CreateShadow(DownloadLabel1_1,False);
CreateShadow(DownloadLabel2_1,False);
CreateShadow(DownloadLabel3_3_1,False);
CreateShadow(DownloadLabel3_4,False);
CreateShadow(DownloadLabel3_1,False);
CreateShadow(DownloadLabel3_2,False);

CreateShadow(InstallLabel1_1,False);
CreateShadow(InstallLabel2_1,False);
CreateShadow(InstallLabel3_3_1,False);
CreateShadow(InstallLabel3_3_2,False);
CreateShadow(InstallLabel3_4,False);
CreateShadow(InstallLabel3_1,False);
CreateShadow(InstallLabel3_2,False);

CreateShadow(FinishLabel1_1,False);
CreateShadow(FinishLabel2_1,False);
ButtonUpdater(CurPageID);
if WizardImage_JPG or WizardImage_PNG then
begin
if WizardImageQuantity <> 1 then
begin
if CurPageID <> wpInstalling then
ChangeBG(nil)
else
BGChange.Enabled:=SmallWizardImage_JPG or SmallWizardImage_PNG;
end;
end;
if (CurPageID = wpWelcome) then begin
FastInstall := 0;
end;

if (CurPageID = wpSelectDir)then
begin
DirEditOnChange(nil);
end;

if ((CurPageID = wpLicense) or (CurPageID = SystemPage.ID) or (CurPageID = wpInfoBefore) or (CurPageID = SelectComponentPage.ID) or (CurPageID = wpSelectDir) or (CurPageID = wpSelectProgramGroup) or (CurPageID = SelectPriorityPage.ID) or (CurPageID = SelectTasksPage.ID) or (CurPageID = wpReady)) and (FastInstall = 1) then begin
Wizardform.LicenseAcceptedRadio.Checked := True
end;

if (CurPageID = wpFinished) then
UninstallFiles;

if (CurPageID = wpInfoAfter) and ISDoneError then
Taskbar1_1;

if (CurPageID =wpFinished) and ISDoneError then
Taskbar1_4;


if (CurPageID =wpFinished) and not ISDoneError then
begin
Taskbar1_1;
end;

ImgApplyChanges(WizardForm.Handle);
end;

procedure CancelButtonClick(CurPageID: Integer; var Cancel, Confirm: Boolean);
begin
SuspendProc;
Confirm:=False;
#ifexist "Temp\Resources\Dialog.jpg"
if ShowCancelBox = mrYes then
Cancel:=True
else
Cancel:=False;
#else
Cancel:=ExitSetupMsgBox;
#endif
Taskbar1_5;
if Cancel then
idpStopDownload;
if CurPageID=wpInstalling then begin;
if Cancel then begin
Taskbar1_4;
ISDoneError:=True;
ISDoneCancel:=1;
DelTree(ExpandConstant('{app}'), True, True, True);
AllCancel2;
WizardForm.CancelButton.Enabled:=False;
end;
end;
ResumeProc;
end;

function NextButtonClick(CurPageID: Integer): Boolean;
begin
if (CurPageID = wpWelcome) and (FastInstall = 0) then
FastInstall := 1;
Result:=True;
#ifdef SerialCode
if (CurPageID = SerialPage.ID)then
begin
if not SerialConfirm then
begin
Result:=False;
MsgBox(FmtMessage(#10+cm('SerialMessage3_1'), [ApplicationName('')]),mbError,MB_OK);
end;
end;
#endif
if (idpFilesDownloaded = False) and (CurPageID = DownloadPage.ID) then
Result:=False;
end;

function BackButtonClick(CurPageID: Integer): Boolean;
begin
CustomInstallClicked := True;
Result := True;
end;

procedure DeinitializeSetup;
var
i: integer;
begin
idpStopDownload;
i:=1;
Protection2;
if SetupRunning and SetupRunning2 then
ButtonAnimateTimer.Enabled:=False;
if SetupRunning then
SetMinimizeAnimation(OldMinimizeAnimation);
if SetupRunning and SetupRunning2 and (WizardImage_JPG or WizardImage_PNG) then
begin
FreeBG;
SFreeBG;
if WizardImage_PNG then
begin
BGChange.Free;
SetRgnTimer.Free;
InstallerFrame.Free;
end;
end;
DeInitWin7TaskBar;
if FileExists(ExpandConstant('{tmp}\trayiconctrl.dll')) then
UninitTrayIconCtrl();
if (SlidesEnabled = True) and SetupRunning and SetupRunning2 then begin
if ((WizardForm.CurPageID = wpInstalling) or (WizardForm.CurPageID = wpInfoAfter) or (WizardForm.CurPageID = wpFinished)) then
begin
if ShowBGFullscreen then
SlideStop;
end;
end;
if FileExists(ExpandConstant('{tmp}\botva2.dll')) then
gdipShutdown;
if MusicEnabled then begin
BASS_Stop;
BASS_Free;
end;
if SetupRunning and SetupRunning2 then
begin
SerialEdit1.Free;
SerialEdit2.Free;
SerialEdit3.Free;
SerialEdit4.Free;
SerialEdit5.Free;
end;
if VideoEnabled and SetupRunning and SetupRunning2 then
mciSendString('close AVIFile','',0,0);
if CustomFontAvai and SetupRunning and SetupRunning2 then
begin
WizardForm.BackButton.Free;
WizardForm.NextButton.Free;
WizardForm.CancelButton.Free;
WizardForm.DirBrowseButton.Free;
WizardForm.GroupBrowseButton.Free;
WizardForm.DirEdit.Free;
WizardForm.GroupEdit.Free;
WizardForm.LicenseMemo.Free;
WizardForm.InfoBeforeMemo.Free;
WizardForm.InfoAfterMemo.Free;
SystemPageFont.Free;
SystemPageFont2.Free;
WizardForm.PageNameLabel.Free;
WizardForm.PageDescriptionLabel.Free;
WizardForm.Free;
i:= 0;
repeat
i:= i + 1;
RemoveFontResource(ExpandConstant('{tmp}\font'+IntToStr(i)+'.ttf'),FR_PRIVATE,0);
until FileExists(ExpandConstant('{tmp}\font'+IntToStr(i)+'.ttf')) = False;
end;
DelTree(ExpandConstant('{tmp}'), True, True, True);
end;

procedure UpdateFrame2(Sender: TObject);
begin
if InstallerFrame.Showing and (UninstallProgressForm.Showing = False) then
UninstallProgressForm.Show;
end;

function WFProc2(h:hWnd;Msg,wParam,lParam:Longint):Longint;
begin
if Msg=$3 then begin
SetWindowPos(InstallerFrame.Handle,0,UninstallProgressForm.Left,UninstallProgressForm.Top,0,0,$515)
end;
Result:=CallWindowProc(WFOldProc,h,Msg,wParam,lParam);
end;

procedure FixFrame2(Sender: TObject);
begin
UninstallProgressForm.BringToFront;
end;

procedure ChangeBG2(Sender: TObject);
var
i, n, x: Integer;
begin
n:=0;
x:=1;
repeat
n:= n + 1;
if ImgGetVisibility(InstallerImage[n - 1]) then
begin
ImgSetVisibility(InstallerImage[n - 1],False);
x:=n;
end;
until n = WizardImageQuantity;
if x = WizardImageQuantity then
i:=1
else
i:= x + 1;
ImgSetVisibility(InstallerImage[i - 1],True);
if WizardImage_PNG then
begin
SetRgn(UninstallProgressForm.Handle,ExpandConstant('{tmp}\Installer' + IntToStr(i) + '.bmp'), 0, 0,InstallerWidth,InstallerHeight);
with InstallerFrame do
begin
Hide;
CreateFormFromImage(Handle,ExpandConstant('{tmp}\Installer' + IntToStr(i) + '.png'));
Left:=UninstallProgressForm.Left;
Top:=UninstallProgressForm.Top;
Width:=UninstallProgressForm.ClientWidth;
Height:=UninstallProgressForm.ClientHeight;
SendToBack;
Show;
UninstallProgressForm.BringToFront;
end;
end;
ImgApplyChanges(UninstallProgressForm.Handle);
end;

procedure CreateBG2;
var
i: Integer;
begin
if WizardImage_PNG then
UninstallProgressForm.BorderStyle:=bsNone
else
UninstallProgressForm.BorderStyle:=bsSingle;
UninstallProgressForm.ClientWidth:=InstallerWidth;
UninstallProgressForm.ClientHeight:=InstallerHeight;
UninstallProgressForm.Center;
SetArrayLength(InstallerImage,WizardImageQuantity);
for i:= 0 to WizardImageQuantity - 1 do
begin
if WizardImage_PNG then
InstallerImage[i]:=ImgLoad(UninstallProgressForm.Handle,ExpandConstant('{tmp}\Installer' + IntToStr(i + 1) + '.png'),ScaleX(0),ScaleY(0),UninstallProgressForm.ClientWidth,UninstallProgressForm.ClientHeight,True,True)
else
InstallerImage[i]:=ImgLoad(UninstallProgressForm.Handle,ExpandConstant('{tmp}\Installer' + IntToStr(i + 1) + '.jpg'),ScaleX(0),ScaleY(0),UninstallProgressForm.ClientWidth,UninstallProgressForm.ClientHeight,True,True);
ImgSetVisibility(InstallerImage[i],False);
end;
if WizardImage_PNG then
begin
InstallerFrame:= TForm.Create(nil);
with InstallerFrame do
begin
BorderStyle:=bsNone;
Left:=UninstallProgressForm.Left;
Top:=UninstallProgressForm.Top;
Width:=UninstallProgressForm.ClientWidth;
Height:=UninstallProgressForm.ClientHeight;
Show();
UninstallProgressForm.BringToFront;
OnActivate:=@FixFrame2;
end;
WFOldProc:=SetWindowLong(UninstallProgressForm.Handle,-4,WndProcCallBack(@WFProc,4));
end;
BGChange:= TTimer.Create(UninstallProgressForm);
with BGChange do
begin
OnTimer:=@ChangeBG2;
Interval:=7500;
Enabled:=True;
end;
if WizardImage_PNG then
begin
SetRgnTimer:= TTimer.Create(UninstallProgressForm);
with SetRgnTimer do
begin
OnTimer:=@UpdateFrame2;
Interval:=10;
Enabled:=True;
end;
end;
i:=Random(WizardImageQuantity);
if WizardImageQuantity = 1 then
BGChange.Enabled:=False;
ImgSetVisibility(InstallerImage[i],True);
if WizardImage_PNG then
begin
SetRgn(UninstallProgressForm.Handle,ExpandConstant('{tmp}\Installer' + IntToStr(i + 1) + '.bmp'), 0, 0,InstallerWidth,InstallerHeight);
with InstallerFrame do
begin
Hide;
CreateFormFromImage(Handle,ExpandConstant('{tmp}\Installer' + IntToStr(i + 1) + '.png'));
Left:=UninstallProgressForm.Left;
Top:=UninstallProgressForm.Top;
Width:=UninstallProgressForm.ClientWidth;
Height:=UninstallProgressForm.ClientHeight;
SendToBack;
Show;
UninstallProgressForm.BringToFront;
end;
end;
ImgApplyChanges(UninstallProgressForm.Handle);
end;

procedure FreeBG2;
begin
if WizardImage_PNG then
InstallerFrame.Free;
end;

procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
#sub LaunchNames3
SetArrayLength(LaunchNames,{#i});
SetArrayLength(LaunchTypes,{#i});
SetArrayLength(LaunchBinaries,{#i});
SetArrayLength(GUID,{#i});
#endsub
#if ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher1Name", "") != ""
#for {i = 1; ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", StringChange("LauncherIntName","Int", Str(i)), "") !=""; i++} LaunchNames3
#endif
#sub LaunchNames4
#define LaunchNames ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher" + Str(i) + "Name", "")
#define LaunchTypes ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher" + Str(i) + "Type", "CUSTOM")
#define LaunchBinaries ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher" + Str(i) + "Binary", "")
LaunchNames[{#i} - 1]:='{#LaunchNames}';
LaunchTypes[{#i} - 1]:='{#LaunchTypes}';
LaunchBinaries[{#i} - 1]:='{#LaunchBinaries}';
#endsub
#if ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher1Name", "") != ""
#for {i = 1; ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", StringChange("LauncherIntName","Int", Str(i)), "") !=""; i++} LaunchNames4
#endif
if CurUninstallStep = usUninstall then
begin
RegDeleteKeyIncludingSubkeys(HKLM, 'SOFTWARE\' + ApplicationPublisher('') + '\' + ApplicationName ('')); 
RemoveReg;
#if ReadIni(AddBackslash(SourcePath) + "Temp\Setup.ini", "LauncherSettings", "Launcher1Name", "") != ""
i:=0;
repeat
i:=i + 1;
if (Version.Major >= 6) and (LaunchBinaries[i - 1] <> '') then
begin
RetrieveGUIDForApplication(ExpandConstant(LaunchBinaries[i - 1]), GUID[i - 1]);
RemoveFromGameExplorer(GUID[i - 1]);
end;
until i = GetArrayLength(GUID);
#endif
UnloadDLL(ExpandConstant('{app}\GameuxInstallHelper.dll'));
if ConstConv3(ExpandConstant('{code:UnApplicationExecutable}')) <> '' then
RemoveApplicationFromExceptionList(ConstConv3(ExpandConstant('{code:UnApplicationExecutable}')));
i:=1;
repeat
i:= i + 1;
if ConstConv3(ExpandConstant('{code:UnApplicationExecutable'+IntToStr(i)+'}')) <> '' then
RemoveApplicationFromExceptionList(ConstConv3(ExpandConstant('{code:UnApplicationExecutable'+IntToStr(i)+'}')));
until i = 10;
UnloadDll(ExpandConstant('{app}\FirewallInstallHelper.dll'));
if FileExists(ExpandConstant('{tmp}\ProgressImage.png')) and FileExists(ExpandConstant('{tmp}\ProgressBackground.png')) then begin
Progress:=ImgPBCreate(UninstallProgressForm.Handle, ExpandConstant('{tmp}\ProgressBackground.png'), ExpandConstant('{tmp}\ProgressImage.png'),TextPositionLeft+30, TextPositionTop+TextPositionHeight*7/16, TextPositionWidth-60, ScaleY(12));
ImgApplyChanges(UninstallProgressForm.Handle);
PBOldProc:=SetWindowLong(UninstallProgressForm.Progressbar.Handle,-4,CallBackProc(@PBProcUninst,4));
UninstallProgressForm.ProgressBar.Hide;
end;
end;
if CurUninstallStep = usDone then
begin
if WizardImage_JPG or WizardImage_PNG then
FreeBG2;
end;
end;

function InitializeUninstall: Boolean;
var
i: integer;
begin
Protection;
FileCopy(ExpandConstant('{app}\Uninstall\uninst001.dat'),ExpandConstant('{tmp}\Setup.ini'),False);
FileCopy(ExpandConstant('{app}\Uninstall\uninst002.dat'),ExpandConstant('{tmp}\botva2.dll'),False);
FileCopy(ExpandConstant('{app}\Uninstall\uninst003.dat'),ExpandConstant('{tmp}\CallbackCtrl.dll'),False);
FileCopy(ExpandConstant('{app}\Uninstall\uninst004.dat'),ExpandConstant('{tmp}\InnoCallback.dll'),False);
FileCopy(ExpandConstant('{app}\Uninstall\uninst011.dat'),ExpandConstant('{tmp}\Logo.png'),False);
FileCopy(ExpandConstant('{app}\Uninstall\uninst012.dat'),ExpandConstant('{tmp}\TextBackground.png'),False);
FileCopy(ExpandConstant('{app}\Uninstall\uninst013.dat'),ExpandConstant('{tmp}\ProgressImage.png'),False);
FileCopy(ExpandConstant('{app}\Uninstall\uninst014.dat'),ExpandConstant('{tmp}\ProgressBackground.png'),False);
FileCopy(ExpandConstant('{app}\Uninstall\uninst021.dat'),ExpandConstant('{tmp}\Installer1.jpg'),False);
FileCopy(ExpandConstant('{app}\Uninstall\uninst022.dat'),ExpandConstant('{tmp}\Installer1.png'),False);
FileCopy(ExpandConstant('{app}\Uninstall\uninst023.dat'),ExpandConstant('{tmp}\Installer1.bmp'),False);
i:=0
repeat
FileCopy(ExpandConstant('{app}\Uninstall\uninstf'+IntToStr(i)+'.dat'),ExpandConstant('{tmp}\font'+IntToStr(i)+'.ttf'),False);
i:= i + 1;
until FileExists(ExpandConstant('{app}\Uninstall\uninstf'+IntToStr(i)+'.dat')) = False;
AddNewFont2;
Result:=True;
end;

procedure InitializeUninstallProgressForm;
begin
with UninstallProgressForm do
begin
h:=UninstallProgressForm.Handle;
Caption:=FmtMessage(ExpandConstant('{cm:OtherMessage3_1}'), [ApplicationName('')]);
Center;
Color:=$252525;
OuterNotebook.Hide;
InnerNotebook.Hide;
Bevel.Hide;
if WizardImage_JPG or WizardImage_PNG then
begin
WizardImageQuantity:=1
CreateBG2;
end else begin
UninstallProgressForm.ClientWidth:=InstallerWidth;
UninstallProgressForm.ClientHeight:=InstallerHeight;
UninstallProgressForm.Center
end;
ProgressBar.Left:=TextPositionLeft+30
ProgressBar.Top:=TextPositionTop+TextPositionHeight*7/16;
ProgressBar.Width:=TextPositionWidth-60
ProgressBar.Height:=ScaleY(12);
ImgLoad(h,ExpandConstant('{tmp}\TextBackground.png'),TextPositionLeft , TextPositionTop, TextPositionWidth, TextPositionHeight,True,True);
ImgLoad(h,ExpandConstant('{tmp}\Logo.png'),LogoLeft, LogoTop, LogoWidth, LogoHeight,True,True);
UninstallProgressForm.CancelButton.Visible:=False;
end;

UnInstallLabel1_1.Labl:= TLabel.Create(UninstallProgressForm);
with UnInstallLabel1_1.Labl do begin
AutoSize:=False;
SetBounds(TextPositionLeft+25, TextPositionTop+TextPositionHeight*1/16, TextPositionWidth-50, TextPositionHeight);
WordWrap:=True;
Alignment:=TextOneCenter;
Transparent:=True;
Font.Name:=TextOneFontName;
Font.Size:= TextOneFontSize;
Font.Color:=TextOneFontColor;
Caption:= TextOneFontUpperCaser(FmtMessage(cm('UninstallMessage1_1'), [ApplicationName('')]))
Parent:=UninstallProgressForm;
end;

UnInstallLabel2_1.Labl:= TLabel.Create(UninstallProgressForm);
with UnInstallLabel2_1.Labl do begin
AutoSize:=False;
SetBounds(TextPositionLeft+25, TextPositionTop+TextPositionHeight*3/16, TextPositionWidth-50, TextPositionHeight);
WordWrap:=True;
Alignment:=TextTwoCenter;
Transparent:=True;
Font.Name:=TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Caption:= TextTwoFontUpperCaser(FmtMessage(cm('UninstallMessage2_1'), [ApplicationName('')]))
Parent:=UninstallProgressForm;
end;

UninstallLabel3_1.Labl := TLabel.Create(UninstallProgressForm);
with UninstallLabel3_1.Labl do
begin
AutoSize:=False;
SetBounds(TextPositionLeft+30, TextPositionTop+TextPositionHeight*1/2, TextPositionWidth-60, ScaleY(60));
Alignment:=taCenter;
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Parent:=UninstallProgressForm;
end;

UninstallLabel3_2.Labl := TLabel.Create(UninstallProgressForm);
with UninstallLabel3_2.Labl do begin
AutoSize:=False;
SetBounds(TextPositionLeft +23, TextPositionTop+TextPositionHeight*11/16, TextPositionWidth-46, ScaleY(60));
Transparent:=True;
Font.Name:= TextTwoFontName;
Font.Size:= TextTwoFontSize;
Font.Color:=TextTwoFontColor;
Caption:= FmtMessage(cm('UninstallMessage3_2'), [ExpandConstant(' ')])
Parent:=UninstallProgressForm;
end;
CreateShadow(UnInstallLabel1_1,True);
CreateShadow(UnInstallLabel2_1,True);
CreateShadow(UnInstallLabel3_1,True);
CreateShadow(UnInstallLabel3_2,True);
ImgApplyChanges(h);
end;

procedure DeinitializeUninstall;
begin
Protection2;
if FileExists(ExpandConstant('{tmp}\botva2.dll')) then begin
gdipShutdown;
end;
i:=0;
if CustomFontAvai then
begin
repeat
i:= i + 1;
RemoveFontResource(ExpandConstant('{tmp}\font'+IntToStr(i)+'.ttf'),FR_PRIVATE,0);
until FileExists(ExpandConstant('{tmp}\font'+IntToStr(i)+'.ttf')) = False;
end;
end;

[CustomMessages]
;Default
AutorunMessage1_1=%1 - Installation
AutorunMessage2_1=Launch
AutorunMessage2_2=Install
AutorunMessage2_3=Uninstall
AutorunMessage2_4=Configure
AutorunMessage2_5=Exit
AutorunMessage2_6_1=Music: Off
AutorunMessage2_6_2=Music: On
AutorunMessage2_7=Browse Disc
AutorunMessage2_8=Readme
AutorunMessage2_9=Manual
AutorunMessage2_10=Website
AutorunMessage2_11=Update
AutorunMessage2_12=Play
WelcomeMessage1_1=Welcome
WelcomeMessage2_1=Welcome to the %1 Setup Wizard%n%nThis will install %1 on your computer.%n%nIt is recommended that you close all other applications before continuing.%n%nSelect installation type to continue, or Cancel to exit Setup.
SerialMessage1_1=Serial
SerialMessage2_1=Type your product serial number%n%nThe %1 serial key can be found on installation disc holder inside the installation package.%n%nClick next when ready to continue with the installation.
SerialMessage3_1=The serial you entered is not correct. Please try again.
LicenseMessage1_1=License
LicenseMessage2_1=Please read the following License Agreement. You must accept the terms of this agreement before continuing with the installation.
LicenseMessage3_1=I accept the license agreement
SystemMessage1_1=System
SystemMessage2_1=The following hardware has been detected on your system%nUse the Key below as a guide for your system
SystemMessage3_1=Processor
SystemMessage3_2=Video
SystemMessage3_2_1=Unavaliable
SystemMessage3_3=Memory
SystemMessage3_4=Sound
SystemMessage3_4_1=Unavaliable
SystemMessage3_5=Operating System
SystemMessage3_5_1=Unknown
SystemMessage3_6=Key
SystemMessage3_6_1=Critical
SystemMessage3_6_2=Bad
SystemMessage3_6_3=Average
SystemMessage3_6_4=Good
SystemMessage3_6_5=Excellent
SystemMessage3_6_6=Required
SystemMessage3_7=Rating Score
InformationMessage1_1=Information
InformationMessage2_1=Please read the following important information before continuing.
SelectComponentMessage1_1=Components
SelectComponentMessage2_1=Select the components you want to install, clear the components you do not want to install.%nClick Next when you are ready to continue.
SelectComponentMesesge3=Install %1
SelectDirMessage1_1=Destination
SelectDirMessage2_1=Setup will install %1 into the following folder. To continue, click Next.%nIf you would like to select a different folder, click Browse.
SelectDirMessage4_1=Total Space:
SelectDirMessage4_2=Free Space:
SelectDirMessage4_3=Recommeneded Space:
SelectDirMessage4_4=Required Space:
SelectDirMessage5_1=At least %1 MB of free disk space is required.
SelectDirMessage5_2=Setup will install %1 into the following folder.
SelectGroupMessage1_1=Group
SelectGroupMessage2_1=Setup will create the program's shortcuts in the following Start Menu folder.%nIf you would like to select a different folder, click Browse.
SelectGroupMessage4_1=Don't create a Start Menu folder
SelectGroupMessage4_2=Create a desktop icon
SelectGroupMessage5_1=Setup will create %1 shortcuts in the following Start Menu folder.
PreviewMessage1_1=Preview
PreviewMessage2_1=Shot
SelectPriorityMessage1_1=Performance
SelectPriorityMessage2_1=Select the priority you would like Setup to use while installing.%nSelecting priority will affect system perfomance.
SelectPriorityMessage3_1=Low Priority
SelectPriorityMessage3_2=Below Normal Priority
SelectPriorityMessage3_3=Normal Priority
SelectPriorityMessage3_4=Above Normal Priority
SelectPriorityMessage3_5=High Priority
SelectPriorityMessage3_6=Realtime Priority
SelectTaskMessage1_1=Tasks
SelectTaskMessage2_1=Select the additional tasks you would like Setup to perform while installing, then click Install.
SelectTaskMesesge3=Install %1
ReadyMessage1_1=Ready
ReadyMessage2_1=Setup is now ready to begin installing %1 on your computer.%n%nClick Install to continue with the installation, or click Back if you want to review or change any settings.
DownloadMessage1_1=Downloads
DownloadMessage2_1=Please wait, while setup downloads additional files...
InstallMessage1_1=Install
InstallMessage2_1=Please wait while Setup installs %1 on your computer.
InstallMessage2_2=Please insert disc: %1
InstallMessage3_1=Elapsed:
InstallMessage3_2=Remaining:
InstallMessage3_3_1=Extracting %1
InstallMessage3_3_2=Installing %1
InstallMessage3_3_3=Rolling back changes...
InstallMessage3_4=%1 Complete
InstallMessage3_5=Please insert disc: %1
FinishMessage1_1=Finish
FinishMessage2_1=Setup has finished installing %1 on your computer.%n%nClick Finish to close Setup.
FinishMessage2_2=Setup has encountered an error while installing, please re-run installation.
UninstallMessage1_1=Uninstall
UninstallMessage2_1=Please wait while Setup uninstalls %1 from your computer.
UninstallMessage3_1=%1 Complete
UninstallMessage3_2=Uninstalling...
OtherMessage1_1=Setup failed to intialize.
OtherMessage1_2=Error Code:
OtherMessage1_3=Please wait while installer gathers installation files...
OtherMessage1_4=Installation files are damaged or invalid, please contact publisher.
OtherMessage2_1=Setup Initializing...
OtherMessage2_2=Application:
OtherMessage2_3=Publisher:
OtherMessage3_1=%1 - Uninstallation
OtherMessage3_2=%1 - Installation
OtherMessage4_1=Music: Off
OtherMessage4_2=Music: On
OtherMessage4_3=Video: Off
OtherMessage4_4=Video: On
OtherMessage5_1=Quick%nInstallation
OtherMessage5_2=Custom%nInstallation
OtherMessage5_3=Install
OtherMessage5_4=Configure
OtherMessage6_1=Launcher
OtherMessage6_2=Configuration
OtherMessage6_3=Uninstall
OtherMessage6_4=Play
OtherMessage7_1=ATI/nVidia Graphics
OtherMessage7_2=Intel Graphics
OtherMessage7_3=SiS/VIA Graphics
OtherMessage7_4=Memory
ConversionUnit1_1=second
ConversionUnit1_2=seconds
ConversionUnit2_1=minute
ConversionUnit2_2=minutes
ConversionUnit3_1=hour
ConversionUnit3_2=hours
ConversionUnit4_1=MB
ConversionUnit4_2=GB
ConversionUnit4_3=TB
ConversionUnit5_1=MHz
ConversionUnit5_2=GHz
ConversionUnit6_1=Bit
CommonMessages1_1=Free
CommonMessages1_2=Used
CommonMessages1_3=Total
CommonMessages2_1=of
CommonMessages3_1=with %1
CommonMessages3_2=Click Ok to continue or click cancel to abort installation.
CreditsMessage1_1=Credits
CreditsMessage2_1=This installation was built with %1.
CreditsMessage2_2=%1 created by %2
CreditsMessage2_3=Installation created by %1
IDP_KBs=KB/s
IDP_MBs=MB/s
IDP_X_of_X=%.2f of %.2f
IDP_KB=KB
IDP_MB=MB
IDP_GB=GB
IDP_Initializing=Initializing...
IDP_GettingFileInformation=Getting file information...
IDP_StartingDownload=Starting download...
IDP_Connecting=Connecting...
IDP_Downloading=Downloading...
IDP_DownloadComplete=Download complete
IDP_DownloadFailed=Download failed
IDP_CannotConnect=Cannot connect
IDP_CancellingDownload=Cancelling download...
IDP_Unknown=Unknown
IDP_DownloadCancelled=Download cancelled
IDP_RetryNext=Download failed, Please check your connection and restart setup wizard to try again.
IDP_RetryCancel=Download failed, Please check your connection and restart setup wizard to try again.
IDP_HTTPError_X=HTTP error %d
IDP_400=Bad request (400)
IDP_401=Access denied (401)
IDP_404=File not found (404)
IDP_500=Server internal error (500)
IDP_502=Bad gateway (502)
IDP_503=Service temporaily unavaible (503)
Message1=Extracting %1...
Message2=Merging %1...
Message3=Decoding %1...
Message4=%1 was not found.
Message5=Please insert disc %1 with %2 file
Message6=Browse for required file?

;English
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "English", "") == "1"
eng.AutorunMessage1_1=%1 - Installation
eng.AutorunMessage2_1=Launch
eng.AutorunMessage2_2=Install
eng.AutorunMessage2_3=Uninstall
eng.AutorunMessage2_4=Configure
eng.AutorunMessage2_5=Exit
eng.AutorunMessage2_6_1=Music: Off
eng.AutorunMessage2_6_2=Music: On
eng.AutorunMessage2_7=Browse Disc
eng.AutorunMessage2_8=Readme
eng.AutorunMessage2_9=Manual
eng.AutorunMessage2_10=Website
eng.AutorunMessage2_11=Update
eng.AutorunMessage2_12=Play
eng.WelcomeMessage1_1=Welcome
eng.WelcomeMessage2_1=Welcome to the %1 Setup Wizard%n%nThis will install %1 on your computer.%n%nIt is recommended that you close all other applications before continuing.%n%nSelect installation type to continue, or Cancel to exit Setup.
eng.SerialMessage1_1=Serial
eng.SerialMessage2_1=Type your product serial number%n%nThe %1 serial key can be found on installation disc holder inside the installation package.%n%nClick next when ready to continue with the installation.
eng.SerialMessage3_1=The serial you entered is not correct. Please try again.
eng.LicenseMessage1_1=License
eng.LicenseMessage2_1=Please read the following License Agreement. You must accept the terms of this agreement before continuing with the installation.
eng.LicenseMessage3_1=I accept the license agreement
eng.SystemMessage1_1=System
eng.SystemMessage2_1=The following hardware has been detected on your system%nUse the Key below as a guide for your system
eng.SystemMessage3_1=Processor
eng.SystemMessage3_2=Video
eng.SystemMessage3_2_1=Unavaliable
eng.SystemMessage3_3=Memory
eng.SystemMessage3_4=Sound
eng.SystemMessage3_4_1=Unavaliable
eng.SystemMessage3_5=Operating System
eng.SystemMessage3_5_1=Unknown
eng.SystemMessage3_6=Key
eng.SystemMessage3_6_1=Critical
eng.SystemMessage3_6_2=Bad
eng.SystemMessage3_6_3=Average
eng.SystemMessage3_6_4=Good
eng.SystemMessage3_6_5=Excellent
eng.SystemMessage3_6_6=Required
eng.SystemMessage3_7=Rating Score
eng.InformationMessage1_1=Information
eng.InformationMessage2_1=Please read the following important information before continuing.
eng.SelectComponentMessage1_1=Components
eng.SelectComponentMessage2_1=Select the components you want to install, clear the components you do not want to install.%nClick Next when you are ready to continue.
eng.SelectComponentMesesge3=Install %1
eng.SelectDirMessage1_1=Destination
eng.SelectDirMessage2_1=Setup will install %1 into the following folder. To continue, click Next.%nIf you would like to select a different folder, click Browse.
eng.SelectDirMessage4_1=Total Space:
eng.SelectDirMessage4_2=Free Space:
eng.SelectDirMessage4_3=Recommeneded Space:
eng.SelectDirMessage4_4=Required Space:
eng.SelectDirMessage5_1=At least %1 MB of free disk space is required.
eng.SelectDirMessage5_2=Setup will install %1 into the following folder.
eng.SelectGroupMessage1_1=Group
eng.SelectGroupMessage2_1=Setup will create the program's shortcuts in the following Start Menu folder.%nIf you would like to select a different folder, click Browse.
eng.SelectGroupMessage4_1=Don't create a Start Menu folder
eng.SelectGroupMessage4_2=Create a desktop icon
eng.SelectGroupMessage5_1=Setup will create %1 shortcuts in the following Start Menu folder.
eng.PreviewMessage1_1=Preview
eng.PreviewMessage2_1=Shot
eng.SelectPriorityMessage1_1=Performance
eng.SelectPriorityMessage2_1=Select the priority you would like Setup to use while installing.%nSelecting priority will affect system perfomance.
eng.SelectPriorityMessage3_1=Low Priority
eng.SelectPriorityMessage3_2=Below Normal Priority
eng.SelectPriorityMessage3_3=Normal Priority
eng.SelectPriorityMessage3_4=Above Normal Priority
eng.SelectPriorityMessage3_5=High Priority
eng.SelectPriorityMessage3_6=Realtime Priority
eng.SelectTaskMessage1_1=Tasks
eng.SelectTaskMessage2_1=Select the additional tasks you would like Setup to perform while installing, then click Install.
eng.SelectTaskMesesge3=Install %1
eng.ReadyMessage1_1=Ready
eng.ReadyMessage2_1=Setup is now ready to begin installing %1 on your computer.%n%nClick Install to continue with the installation, or click Back if you want to review or change any settings.
eng.DownloadMessage1_1=Downloads
eng.DownloadMessage2_1=Please wait, while setup downloads additional files...
eng.InstallMessage1_1=Install
eng.InstallMessage2_1=Please wait while Setup installs %1 on your computer.
eng.InstallMessage2_2=Please insert disc: %1
eng.InstallMessage3_1=Elapsed:
eng.InstallMessage3_2=Remaining:
eng.InstallMessage3_3_1=Extracting %1
eng.InstallMessage3_3_2=Installing %1
eng.InstallMessage3_3_3=Rolling back changes...
eng.InstallMessage3_4=%1 Complete
eng.InstallMessage3_5=Please insert disc: %1
eng.FinishMessage1_1=Finish
eng.FinishMessage2_1=Setup has finished installing %1 on your computer.%n%nClick Finish to close Setup.
eng.FinishMessage2_2=Setup has encountered an error while installing, please re-run installation.
eng.UninstallMessage1_1=Uninstall
eng.UninstallMessage2_1=Please wait while Setup uninstalls %1 from your computer.
eng.UninstallMessage3_1=%1 Complete
eng.UninstallMessage3_2=Uninstalling...
eng.OtherMessage1_1=Setup failed to intialize.
eng.OtherMessage1_2=Error Code:
eng.OtherMessage1_3=Please wait while installer gathers installation files...
eng.OtherMessage1_4=Installation files are damaged or invalid, please contact publisher.
eng.OtherMessage2_1=Setup Initializing...
eng.OtherMessage2_2=Application:
eng.OtherMessage2_3=Publisher:
eng.OtherMessage3_1=%1 - Uninstallation
eng.OtherMessage3_2=%1 - Installation
eng.OtherMessage4_1=Music: Off
eng.OtherMessage4_2=Music: On
eng.OtherMessage4_3=Video: Off
eng.OtherMessage4_4=Video: On
eng.OtherMessage5_1=Quick%nInstallation
eng.OtherMessage5_2=Custom%nInstallation
eng.OtherMessage5_3=Install
eng.OtherMessage5_4=Configure
eng.OtherMessage6_1=Launcher
eng.OtherMessage6_2=Configuration
eng.OtherMessage6_3=Uninstall
eng.OtherMessage6_4=Play
eng.OtherMessage7_1=ATI/nVidia Graphics
eng.OtherMessage7_2=Intel Graphics
eng.OtherMessage7_3=SiS/VIA Graphics
eng.OtherMessage7_4=Memory
eng.ConversionUnit1_1=second
eng.ConversionUnit1_2=seconds
eng.ConversionUnit2_1=minute
eng.ConversionUnit2_2=minutes
eng.ConversionUnit3_1=hour
eng.ConversionUnit3_2=hours
eng.ConversionUnit4_1=MB
eng.ConversionUnit4_2=GB
eng.ConversionUnit4_3=TB
eng.ConversionUnit5_1=MHz
eng.ConversionUnit5_2=GHz
eng.ConversionUnit6_1=Bit
eng.CommonMessages1_1=Free
eng.CommonMessages1_2=Used
eng.CommonMessages1_3=Total
eng.CommonMessages2_1=of
eng.CommonMessages3_1=with %1
eng.CommonMessages3_2=Click Ok to continue or click cancel to abort installation.
eng.CreditsMessage1_1=Credits
eng.CreditsMessage2_1=This installation was built with %1.
eng.CreditsMessage2_2=%1 created by %2
eng.CreditsMessage2_3=Installation created by %1
eng.IDP_KBs=KB/s
eng.IDP_MBs=MB/s
eng.IDP_X_of_X=%.2f of %.2f
eng.IDP_KB=KB
eng.IDP_MB=MB
eng.IDP_GB=GB
eng.IDP_Initializing=Initializing...
eng.IDP_GettingFileInformation=Getting file information...
eng.IDP_StartingDownload=Starting download...
eng.IDP_Connecting=Connecting...
eng.IDP_Downloading=Downloading...
eng.IDP_DownloadComplete=Download complete
eng.IDP_DownloadFailed=Download failed
eng.IDP_CannotConnect=Cannot connect
eng.IDP_CancellingDownload=Cancelling download...
eng.IDP_Unknown=Unknown
eng.IDP_DownloadCancelled=Download cancelled
eng.IDP_RetryNext=Download failed, Please check your connection and restart setup wizard to try again.
eng.IDP_RetryCancel=Download failed, Please check your connection and restart setup wizard to try again.
eng.IDP_HTTPError_X=HTTP error %d
eng.IDP_400=Bad request (400)
eng.IDP_401=Access denied (401)
eng.IDP_404=File not found (404)
eng.IDP_500=Server internal error (500)
eng.IDP_502=Bad gateway (502)
eng.IDP_503=Service temporaily unavaible (503)
eng.Message1=Extracting %1...
eng.Message2=Merging %1...
eng.Message3=Decoding %1...
eng.Message4=%1 was not found.
eng.Message5=Please insert disc %1 with %2 file
eng.Message6=Browse for required file?
#endif

;Albanian
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "Albanian", "") == "1"
alb.AutorunMessage1_1=%1 - Instalimi
alb.AutorunMessage2_1=Nisja
alb.AutorunMessage2_2=Instalo
alb.AutorunMessage2_3=Ç'instalo
alb.AutorunMessage2_4=Konfigurimi
alb.AutorunMessage2_5=Dalje
alb.AutorunMessage2_6_1=Fike:Muziken
alb.AutorunMessage2_6_2=Ndize:Muziken
alb.AutorunMessage2_7=Shfleto Diskun
alb.AutorunMessage2_8=LEXOMË
alb.AutorunMessage2_9=Udhëzues
alb.AutorunMessage2_10=Faqja e internetit
alb.AutorunMessage2_11=Freskimin e
alb.WelcomeMessage1_1=Mirë se vini
alb.WelcomeMessage2_1=Mirë se vini në %1 Setup magjistar%n%nKjo do të instalojë %1 në kompjuterin tuaj.%n%nËshtë e keshilluar që ju të mbyllni të gjitha aplikimet e tjera para se të vazhdoni.%n%nPërzgjidhni llojin e instalimit për të vazhduar, ose Anulo për të dalë nga Setup
alb.SerialMessage1_1=Serial
alb.SerialMessage2_1=shkruani numrin serial te produktin tuaj %n%nThe %1 çelësi serial mund të gjenden në mbajtësin të diskut instalimi brenda në paketën e instalimit.%n%nCklikoni tjetër kur je gati për të vazhduar me instalimin.
alb.SerialMessage3_1=Serial që dhatë nuk është e saktë. Ju lutem provoni përsëri.
alb.LicenseMessage1_1=Licencë
alb.LicenseMessage2_1=Ju lutem lexoni kontratën e licencës ne vijim. Ju duhet të pranoni kushtet e kësaj kontratë para se të vazhdoni me instalimin.
alb.LicenseMessage3_1=Unë e pranoj kontratën e licencës
alb.SystemMessage1_1=Sistemi
alb.SystemMessage2_1=Hardware i mëposhtëm është zbuluar në sistemin tuaj% Përdorni Çelësin poshtë si një udhëzues për sistemin tuaj
alb.SystemMessage3_1=Procesor
alb.SystemMessage3_2=Video
alb.SystemMessage3_2_1=I padisponueshëm
alb.SystemMessage3_3=Memorie
alb.SystemMessage3_4=Tingulli
alb.SystemMessage3_4_1=I padisponueshëm
alb.SystemMessage3_5=Sistemi operativ
alb.SystemMessage3_5_1=E Panjohur
alb.SystemMessage3_6=Çelës
alb.SystemMessage3_6_1=Kritike
alb.SystemMessage3_6_2=Keq
alb.SystemMessage3_6_3=Mesatar
alb.SystemMessage3_6_4=Mirë
alb.SystemMessage3_6_5=Shkëlqyeshëm
alb.SystemMessage3_6_6=I nevojshëm
alb.SystemMessage3_7=Vlerësim Rezultati
alb.InformationMessage1_1=informatë
alb.InformationMessage2_1=Ju lutemi lexoni informatat në vijim të rëndësishëm përpara se të vazhdoni.
alb.SelectComponentMessage1_1=Përbërësit
alb.SelectComponentMessage2_1=Zgjidhni përbërësit që doni të instaloni, pastroni përbërësit që nuk doni ta instaloni.%n Klikoni Tjetra kur të jeni gati për të vazhduar.
alb.SelectComponentMesesge3=Instalo %1
alb.SelectDirMessage1_1=Destinacioni
alb.SelectDirMessage2_1=Setup do të instalojë%1 në dosjen vijuese. Për të vazhduar, kliko Vazhdo.%N Nëse dëshironi të zgjidhni një dosje tjetër, klikoni Shfletoni.
alb.SelectDirMessage4_1=Hapësirë gjithsej:
alb.SelectDirMessage4_2=Hapësirë e lirë:
alb.SelectDirMessage4_3=Hapësirë këshilluar:
alb.SelectDirMessage4_4=Hapësirë ??e nevojshme:
alb.SelectDirMessage5_1=Të paktën%1MB hapësirë ??të lirë në disk është e nevojshme.
alb.SelectDirMessage5_2=Setup do të instalojë%1 në dosjen e mëposhtme.
alb.SelectGroupMessage1_1=Grupi
alb.SelectGroupMessage2_1=Setup do të krijojë shkurtesat e programit në vijim në dosje Menu Start.% Nëse dëshironi të zgjidhni një dosje tjetër, klikoni Shfletoni.
alb.SelectGroupMessage4_1=Mos krijoni një dosje ne Menu Start
alb.SelectGroupMessage4_2=Krijo një ikonë desktop
alb.SelectGroupMessage5_1=Setup do të krijojë%1 shkurtesat në vijim në dosje Menu Start
alb.PreviewMessage1_1=Shikim paraprak
alb.PreviewMessage2_1=Shot
alb.SelectPriorityMessage1_1=Ecuria
alb.SelectPriorityMessage2_1=Zgjidhni prioritet që dëshironi Setup të përdorin gjatë instalimit n.% Përzgjedhja prioritet do të ndikojë në ecurinë e sistemit.
alb.SelectPriorityMessage3_1=Prioritetin i ulët
alb.SelectPriorityMessage3_2=Më poshtë Prioritetin Normal
alb.SelectPriorityMessage3_3=Prioritetin normal
alb.SelectPriorityMessage3_4=Mbi Prioritetin Normal
alb.SelectPriorityMessage3_5=Prioritet i lartë
alb.SelectPriorityMessage3_6=Prioritetkoh reale
alb.SelectTaskMessage1_1=Detyrat
alb.SelectTaskMessage2_1=Zgjidhni detyrat shtesë që ju doni ne Setup për të kryer gjatë instalimit, pastaj kliko Instalo.
alb.SelectTaskMesesge3=Instalo %1
alb.ReadyMessage1_1=Gatshme
alb.ReadyMessage2_1=Setup tani është gati për të filluar instalimin e%1 në kompjuterin tuaj.%N%nKlikoni Instalo për të vazhduar me instalimin, ose klikoni Mbrapsht në qoftë se ju doni të shqyrtuar ose të ndryshuar ndonjë Konfigurim.
alb.InstallMessage1_1=Instalo
alb.InstallMessage2_1=Ju lutem prisni ndërkohë Setup instalohet %1 në kompjuterin tuaj.
alb.InstallMessage2_2=Ju lutem fusni diskun: %1
alb.InstallMessage3_1=Kaluar:
alb.InstallMessage3_2=Mbesin:
alb.InstallMessage3_3_1=Duke nxjerr %1
alb.InstallMessage3_3_2=Duke instaluar %1
alb.InstallMessage3_3_3=Përsëritet prapa ndryshimet e...
alb.InstallMessage3_4=%1 Kompletuar
alb.InstallMessage3_5=Ju lutem fusni diskun: %1
alb.FinishMessage1_1=Mbaro
alb.FinishMessage2_1=Setup ka përfunduar instalimin e%1 në kompjuterin tuaj.%N%nKlikoni Mbaro për të mbyllur Setup.
alb.FinishMessage2_2=Setup ka ndeshur një gabim gjatë instalimit, ju lutem ripërsërisni instalimin.
alb.UninstallMessage1_1=Ç'instalo
alb.UninstallMessage2_1=Ju lutem prisni ndërkohë Setup instalohet %1 nga kompjuteri juaj.
alb.UninstallMessage3_1=%1 Kompletuar
alb.UninstallMessage3_2=Duke çinstaluar...
alb.OtherMessage1_1=Setup nuk arriti të nisja.
alb.OtherMessage1_2=Gabim Kodi:
alb.OtherMessage1_3=Please wait while installer gathers installation files...
alb.OtherMessage1_4=Installation files are damaged or invalid, please contact publisher.
alb.OtherMessage2_1=Setup duke u nisur...
alb.OtherMessage2_2=Aplikimi:
alb.OtherMessage2_3=Botuesi:
alb.OtherMessage3_1=%1 - çinstalimit
alb.OtherMessage3_2=%1 - instalimit
alb.OtherMessage4_1=Fike:Muziken
alb.OtherMessage4_2=Ndize:Muziken
alb.OtherMessage4_3=Fike:Videon
alb.OtherMessage4_4=Ndize:Videon
alb.OtherMessage5_1=Instalim%ni shpejtë
alb.OtherMessage5_2=Instalim%nnormal
alb.OtherMessage5_3=Instalo
alb.OtherMessage5_4=Konfiguro
alb.OtherMessage6_1=Nisja
alb.OtherMessage6_2=Konfigurimi
alb.OtherMessage6_3=Ç'instalo
alb.OtherMessage7_1=ATI/nVidia Grafika e dedikuar
alb.OtherMessage7_2=Intel Grafika e Integruar
alb.OtherMessage7_3=SiS/VIA Grafika e Integruar
alb.OtherMessage7_4=Memorie
alb.ConversionUnit1_1=sekond
alb.ConversionUnit1_2=sekonda
alb.ConversionUnit2_1=minut
alb.ConversionUnit2_2=minuta
alb.ConversionUnit3_1=orë
alb.ConversionUnit3_2=orë
alb.ConversionUnit4_1=MB
alb.ConversionUnit4_2=GB
alb.ConversionUnit4_3=TB
alb.ConversionUnit5_1=MHz
alb.ConversionUnit5_2=GHz
alb.ConversionUnit6_1=Bit
alb.CommonMessages1_1=falas
alb.CommonMessages1_2=Përdorur
alb.CommonMessages1_3=Total
alb.CommonMessages2_1=të
alb.CommonMessages3_1=me %1
alb.CommonMessages3_2=Kliko OK për të vazhduar ose klikoni anulojë të abortosh instalimin.
alb.CreditsMessage1_1=Listë e pjesëmarrësve
alb.CreditsMessage2_1=Ky instalim është ndërtuar me %1.
alb.CreditsMessage2_2=%1 Krijuar nga %2
alb.CreditsMessage2_3=Instalimi krijuar nga %1
#endif

;Bosnian
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "Bosnian", "") == "1"
bos.AutorunMessage1_1=%1 - Instalacija
bos.AutorunMessage2_1=Pokreni
bos.AutorunMessage2_2=Instaliraj
bos.AutorunMessage2_3=Obriši
bos.AutorunMessage2_4=Konfigurisati
bos.AutorunMessage2_5=Izlaz
bos.AutorunMessage2_6_1=Muzika: Isklj.
bos.AutorunMessage2_6_2=Muzika: Uklj.
bos.AutorunMessage2_7=Pretraži disk
bos.AutorunMessage2_8=Readme
bos.AutorunMessage2_9=Priručnik
bos.AutorunMessage2_10=Veb stranica
bos.AutorunMessage2_11=Nadogradnja
bos.AutorunMessage2_12=Pusti
bos.WelcomeMessage1_1=Dobro došli
bos.WelcomeMessage2_1=Dobro došli u %1 Instalaciju%n%n %1 će biti instaliran na vaš računar.%n%nPreporučeno je da zatvorite sve ostale aplikacije prije početka instalacije.%n%nIzaberite tip instalacije za nastavak, ili Prekid za izlaz.
bos.SerialMessage1_1=Serijski broj
bos.SerialMessage2_1=Ukucajte serijski broj%n%n %1 serijski broj možete pronaći na omotu.%n%nKliknite na Dalje za nastavak.
bos.SerialMessage3_1=Serijski broj koji ste unijeli nije važeći. Molim pokušajte ponovo.
bos.LicenseMessage1_1=Licenca
bos.LicenseMessage2_1=Molim pročitajte Licencu. Morate prihvatiti ugovor prije nastavka.
bos.LicenseMessage3_1=Prihvatam
bos.SystemMessage1_1=Sistem
bos.SystemMessage2_1=Instalacija je učitala slijedeće komponente%nKoristite osnovu ispod kao vodić
bos.SystemMessage3_1=Procesor
bos.SystemMessage3_2=Grafička
bos.SystemMessage3_2_1=Nedostupno
bos.SystemMessage3_3=Memorija
bos.SystemMessage3_4=Zvuk
bos.SystemMessage3_4_1=Nedostupno
bos.SystemMessage3_5=Operativni Sistem
bos.SystemMessage3_5_1=Nepoznat
bos.SystemMessage3_6=Osnova
bos.SystemMessage3_6_1=Kritično
bos.SystemMessage3_6_2=Loše
bos.SystemMessage3_6_3=Prosječno
bos.SystemMessage3_6_4=Dobro
bos.SystemMessage3_6_5=Odlično
bos.SystemMessage3_6_6=Potrebno
bos.SystemMessage3_7=Ocjena
bos.InformationMessage1_1=Informacija
bos.InformationMessage2_1=Molim pročitajte informacije prije nastavka.
bos.SelectComponentMessage1_1=Komponente
bos.SelectComponentMessage2_1=Izaberite komponente koje želite instalirati, a odznačite koje ne želite.%nKliknite na Dalje za nastavak.
bos.SelectComponentMesesge3=Instaliraj %1
bos.SelectDirMessage1_1=Destinacija
bos.SelectDirMessage2_1=%1 će se instalirati u slijedeći folder. Da nastavite, kliknite na Dalje.%nAko želite da izaberete drugi folder, kliknite na Pronađi.
bos.SelectDirMessage4_1=Totalni Prostor:
bos.SelectDirMessage4_2=Slobodni Prostor :
bos.SelectDirMessage4_3=Preporučen prostor:
bos.SelectDirMessage4_4=Potrebno Prostora:
bos.SelectDirMessage5_1=Najmanje %1 MB slobodnog prostora je potrebno.
bos.SelectDirMessage5_2=%1 će se instalirati u slijedeći folder.
bos.SelectGroupMessage1_1=Grupa
bos.SelectGroupMessage2_1=Ikone će biti napravljene u slijedećem Start Meni folderu.%nAko želite da odaberete drugi folder, kliknite na Pronađi.
bos.SelectGroupMessage4_1=Nemoj praviti Start Meni Folder
bos.SelectGroupMessage4_2=Napravi ikonu na Desktopu
bos.SelectGroupMessage5_1=Instalacija će napraviti %1 kratice u slijedećem Start Meni folderu.
bos.PreviewMessage1_1=Pregled
bos.PreviewMessage2_1=Snimak
bos.SelectPriorityMessage1_1=Performansa
bos.SelectPriorityMessage2_1=Izaberite prioritet za instalaciju.%nIzabiranjem prioriteta će se odraziti na performansu.
bos.SelectPriorityMessage3_1=Mali Prioritet
bos.SelectPriorityMessage3_2=Polu Normalni Prioritet
bos.SelectPriorityMessage3_3=Normalni Prioritet
bos.SelectPriorityMessage3_4=Polu veliki prioritet
bos.SelectPriorityMessage3_5=Veliki Prioritet
bos.SelectPriorityMessage3_6=Prioritet Realnog Vremena
bos.SelectTaskMessage1_1=Dodatci
bos.SelectTaskMessage2_1=Izaberite dodatke koje želite da se instaliraju, zatim kliknite na Instaliraj.
bos.SelectTaskMesesge3=Instalacija %1
bos.ReadyMessage1_1=Spreman
bos.ReadyMessage2_1=%1 je spreman da se instalira na vaš računar.%n%nKliknite na Instaliraj da nastavite, ili Nazad ako želite da promijenite neke opcije.
bos.DownloadMessage1_1=Downloads
bos.DownloadMessage2_1=Molim Sačekajte, dok se dodatne stvari skinu...
bos.InstallMessage1_1=Instaliraj
bos.InstallMessage2_1=Molim sačekajte dok se %1 ne instalira na vaš računar.
bos.InstallMessage2_2=Molim ubacite disk: %1
bos.InstallMessage3_1=Prošlo:
bos.InstallMessage3_2=Preostalo:
bos.InstallMessage3_3_1=Izdvajanje %1
bos.InstallMessage3_3_2=Instaliranje %1
bos.InstallMessage3_3_3=Vračanje promijena...
bos.InstallMessage3_4=%1 Završeno
bos.InstallMessage3_5=Molim ubacite disk: %1
bos.FinishMessage1_1=Završi
bos.FinishMessage2_1=%1 je instaliran.%n%nKliknite na Završi da zatvorite instalaciju.
bos.FinishMessage2_2=Dogodila se greška tijekom instalacije, molim ponovo pokrenite instalaciju.
bos.UninstallMessage1_1=Obriši
bos.UninstallMessage2_1=Molim sačekajte da se %1 obriše.
bos.UninstallMessage3_1=%1 Završeno
bos.UninstallMessage3_2=Brisanje...
bos.OtherMessage1_1=Instalacija se nije uspjela pokrenuti.
bos.OtherMessage1_2=Kod greške:
bos.OtherMessage1_3=Molim sačekajte dok instalacija prikupi podatke...
bos.OtherMessage1_4=Datoteke instalacije su oštečene, molim kontaktirajte izdavaća.
bos.OtherMessage2_1=Instalacija se pokreće...
bos.OtherMessage2_2=Aplikacija:
bos.OtherMessage2_3=Izdavać:
bos.OtherMessage3_1=%1 - Brisanje
bos.OtherMessage3_2=%1 - Instalacija
bos.OtherMessage4_1=Muzika: Isklj.
bos.OtherMessage4_2=Muzika: Uklj.
bos.OtherMessage4_3=Video: Isklj.
bos.OtherMessage4_4=Video: Uklj.
bos.OtherMessage5_1=Brza%nInstalcija
bos.OtherMessage5_2=Urediti%nInstalaciju
bos.OtherMessage5_3=Instaliraj
bos.OtherMessage5_4=Podesi
bos.OtherMessage6_1=Launcher
bos.OtherMessage6_2=Podešavanja
bos.OtherMessage6_3=Brisanje
bos.OtherMessage6_4=Pusti
bos.OtherMessage7_1=ATI/nVidia Grafičke
bos.OtherMessage7_2=Intel Grafičke
bos.OtherMessage7_3=SiS/VIA Grafičke
bos.OtherMessage7_4=Memorija
bos.ConversionUnit1_1=sekunda
bos.ConversionUnit1_2=sekunde
bos.ConversionUnit2_1=minuta
bos.ConversionUnit2_2=minute
bos.ConversionUnit3_1=sat
bos.ConversionUnit3_2=sati
bos.ConversionUnit4_1=MB
bos.ConversionUnit4_2=GB
bos.ConversionUnit4_3=TB
bos.ConversionUnit5_1=MHz
bos.ConversionUnit5_2=GHz
bos.ConversionUnit6_1=Bit
bos.CommonMessages1_1=Slobodno
bos.CommonMessages1_2=Iskorišteno
bos.CommonMessages1_3=Totalno
bos.CommonMessages2_1=od
bos.CommonMessages3_1=sa %1
bos.CommonMessages3_2=Kliknite na Uredu za nastavak ili na Prekid za prekid instalacije.
bos.CreditsMessage1_1=Zahvale
bos.CreditsMessage2_1=Instalacija napravljena sa %1.
bos.CreditsMessage2_2=%1 napravljen od %2
bos.CreditsMessage2_3=Instalaciju napravio %1
bos.IDP_KBs=KB/s
bos.IDP_MBs=MB/s
bos.IDP_X_of_X=%.2f of %.2f
bos.IDP_KB=KB
bos.IDP_MB=MB
bos.IDP_GB=GB
bos.IDP_Initializing=Pokretanje...
bos.IDP_GettingFileInformation=Primanje informacija...
bos.IDP_StartingDownload=Početak skidanja...
bos.IDP_Connecting=Konektovanje...
bos.IDP_Downloading=Skidanje...
bos.IDP_DownloadComplete=Skidanje završeno
bos.IDP_DownloadFailed=Skidanje neuspjelo
bos.IDP_CannotConnect=Nemogučnost konektovanja
bos.IDP_CancellingDownload=Prekidanje skidanja...
bos.IDP_Unknown=Nepoznato
bos.IDP_DownloadCancelled=Skidanje prekinuto
bos.IDP_RetryNext=Skidanje neuspješno, Molim provjerite konekciju i restartujte instalaciju.
bos.IDP_RetryCancel=Skidanje neuspješno, Molim provjerite konekciju i restartujte instalaciju.
bos.IDP_HTTPError_X=HTTP greška %d
bos.IDP_400=Loš upit (400)
bos.IDP_401=Pristup odbijen (401)
bos.IDP_404=Datoteka nije pronađena (404)
bos.IDP_500=Interna greška servera (500)
bos.IDP_502=Bad gateway (502)
bos.IDP_503=Servise trenutno nedostupan (503)
bos.Message1=Izdvajanje %1...
bos.Message2=Integrisanje %1...
bos.Message3=Dekodiranje %1...
bos.Message4=%1 nije pronađen.
bos.Message5=Molim ubacite disk %1 sa %2 datotekom
bos.Message6=Pronađite potrebnu datoteku?
#endif

;Czech
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "Czech", "") == "1"
cze.AutorunMessage1_1=%1 - Instalace
cze.AutorunMessage2_1=Spustit
cze.AutorunMessage2_2=Instalovat
cze.AutorunMessage2_3=Odinstalovat
cze.AutorunMessage2_4=Nastavení
cze.AutorunMessage2_5=Exit
cze.AutorunMessage2_6_1=Music: Off
cze.AutorunMessage2_6_2=Music: On
cze.AutorunMessage2_7=Browse Disc
cze.AutorunMessage2_8=Readme
cze.AutorunMessage2_9=Manual
cze.AutorunMessage2_10=Website
cze.AutorunMessage2_11=Update
cze.WelcomeMessage1_1=Vítejte
cze.WelcomeMessage2_1=Vítejte v %1 Průvodce Instalací%n%nNainstaluje se %1 na váš počítač.%n%nDoporučujeme aby ste před instalací zavřeli všechny ostatní aplikace.%n%nKlikněte na Typ instalace pro pokračování, nebo na Zrušit pro ukončení instalačního programu.
cze.SerialMessage1_1=Serial
cze.SerialMessage2_1=Type your product serial number%n%nThe %1 serial key can be found on installation disc holder inside the installation package.%n%nClick next when ready to continue with the installation.
cze.SerialMessage3_1=The serial you entered is not correct. Please try again.
cze.LicenseMessage1_1=Licence
cze.LicenseMessage2_1=Prosím, přečtěte si následující licenční smlouvu. Musíte souhlasit s podmínkami této smlouvy před pokračováním v instalaci.
cze.LicenseMessage3_1=Souhlasím s licenční smlouvou
cze.SystemMessage1_1=Systém
cze.SystemMessage2_1=Byl zjištěn následující hardware%nníže je doporučení pro Váš systém
cze.SystemMessage3_1=Procesor
cze.SystemMessage3_2=Grafika
cze.SystemMessage3_2_1=Nedostupné
cze.SystemMessage3_3=Paměť
cze.SystemMessage3_4=Sound
cze.SystemMessage3_4_1=Nedostupné
cze.SystemMessage3_5=Operační systém
cze.SystemMessage3_5_1=Neznámé
cze.SystemMessage3_6=klíč
cze.SystemMessage3_6_1=Zlé
cze.SystemMessage3_6_2=Zlé
cze.SystemMessage3_6_3=Průměrné
cze.SystemMessage3_6_4=dobré
cze.SystemMessage3_6_5=výborné
cze.SystemMessage3_6_6=Požadováno
cze.SystemMessage3_7=Hodnocení Přehled
cze.InformationMessage1_1=Informace
cze.InformationMessage2_1=Prosím, přečtěte si následující důležité informace před pokračováním.
cze.SelectComponentMessage1_1=Komponenty
cze.SelectComponentMessage2_1=Vyberte komponenty, které chcete nainstalovat, zrušte komponenty, které nechcete nainstalovat.%nKlikněte na Další, když jste připraveni pokračovat.
cze.SelectComponentMesesge3=Instalovat %1
cze.SelectDirMessage1_1=Umístění
cze.SelectDirMessage2_1=Instalační program nainstaluje %1 do následující složky. Chcete-li pokračovat, klikněte na tlačítko Další.%nPokud chcete vybrat jinou složku, klepněte na tlačítko Procházet.
cze.SelectDirMessage4_1=Celkové Místo:
cze.SelectDirMessage4_2=Volné Místo:
cze.SelectDirMessage4_3=Doporučené Místo:
cze.SelectDirMessage4_4=Požadované Místo:
cze.SelectDirMessage5_1=At least %1 MB of free disk space is required.
cze.SelectDirMessage5_2=Setup will install %1 into the following folder.
cze.SelectGroupMessage1_1=Skupina
cze.SelectGroupMessage2_1=Instalační program vytvoří nasledující složku s odkazy v nabídce Start.%nPokud chcete vybrat jinou složku, klikněte na tlačítko Procházet.
cze.SelectGroupMessage4_1=Nevytvářejte složku v nabídce Start
cze.SelectGroupMessage4_2=Vytvořit ikonu na ploše
cze.SelectGroupMessage5_1=Setup will create %1 shortcuts in the following Start Menu folder.
cze.PreviewMessage1_1=Preview
cze.PreviewMessage2_1=Shot
cze.SelectPriorityMessage1_1=Výkon
cze.SelectPriorityMessage2_1=Zvolte prioritu, kterou chcete, aby instalační program použil při instalaci.%nZvolená priorita bude mít vliv na výkon systému.
cze.SelectPriorityMessage3_1=Nízká Priorita
cze.SelectPriorityMessage3_2=Podnormální Priorita
cze.SelectPriorityMessage3_3=Normální Priorita
cze.SelectPriorityMessage3_4=Nadnormální Priorita
cze.SelectPriorityMessage3_5=Vysoká Priorita
cze.SelectPriorityMessage3_6=Reální čas
cze.SelectTaskMessage1_1=Úkoly
cze.SelectTaskMessage2_1=Zvolte další úkoly, které chcete provést při instalaci, klikněte na tlačítko Instalovat.
cze.SelectTaskMesesge3=Instalovat %1
cze.ReadyMessage1_1=Připraveno
cze.ReadyMessage2_1=Instalace %1 nyní může začít.%n%nKlikněte na Instalovat pro pokračování, nebo klikněte na tlačítko Zpět, pokud chcete zkontrolovat nebo změnit nastavení.
cze.InstallMessage1_1=Instalovat
cze.InstallMessage2_1=Počkejte prosím, než instalační program nainstaluje%1 na vašem počítači.
cze.InstallMessage2_2=Vložte prosím disk: %1
cze.InstallMessage3_1=Uplynulý:
cze.InstallMessage3_2=Zbývající:
cze.InstallMessage3_3_1=Kopírování %1
cze.InstallMessage3_3_2=Instalace %1
cze.InstallMessage3_3_3=Vracím změny ...
cze.InstallMessage3_4=%1 Kompletní
cze.InstallMessage3_5=Vložte prosím disk: %1
cze.FinishMessage1_1=Dokončit
cze.FinishMessage2_1=Instalační program dokončil instalaci %1 na vašem počítači.%n%nKlikněte na Dokončit pro ukončení instalačního programu.
cze.FinishMessage2_2=Instalační program zjistil chybu při instalaci, prosím o opětovní spuštění instalace.
cze.UninstallMessage1_1=Odinstalovat
cze.UninstallMessage2_1=Čekejte prosím, instalační rpogram odinstaluje%1z vašeho počítače.
cze.UninstallMessage3_1=%1 Kompletní
cze.UninstallMessage3_2=Odinstalování ...
cze.OtherMessage1_1=Inicializace Instalátoru se nezdařila.
cze.OtherMessage1_2=Kód chyby:
cze.OtherMessage1_3=Please wait while installer gathers installation files...
cze.OtherMessage1_4=Installation files are damaged or invalid, please contact publisher.
cze.OtherMessage2_1=Nastavení Inicializace ...
cze.OtherMessage2_2=Aplikace:
cze.OtherMessage2_3=Vydavatel:
cze.OtherMessage3_1=%1 - odinstalace
cze.OtherMessage3_2=%1 - Instalace
cze.OtherMessage4_1=Hudba: Vyp
cze.OtherMessage4_2=Hudba: Zap
cze.OtherMessage5_1=Rychlá%ninstalace
cze.OtherMessage5_2=Vlastní%ninstalace
cze.OtherMessage5_3=Install
cze.OtherMessage5_4=Configure
cze.OtherMessage6_1=Launcher
cze.OtherMessage6_2=Konfigurace
cze.OtherMessage6_3=Odinstalovat
cze.OtherMessage7_1=ATI/nVidia Dedicated Graphics
cze.OtherMessage7_2=Intel Integrated Graphics
cze.OtherMessage7_3=SiS/VIA Integrated Graphics
cze.OtherMessage7_4=Memory
cze.ConversionUnit1_1=druhý
cze.ConversionUnit1_2=sekund
cze.ConversionUnit2_1=minuta
cze.ConversionUnit2_2=zápis
cze.ConversionUnit3_1=hodina
cze.ConversionUnit3_2=hodin
cze.ConversionUnit4_1=MB
cze.ConversionUnit4_2=GB
cze.ConversionUnit4_3=TB
cze.ConversionUnit5_1=MHz
cze.ConversionUnit5_2=GHz
cze.ConversionUnit6_1=Bit
cze.CommonMessages1_1=Free
cze.CommonMessages1_2=Used
cze.CommonMessages1_3=Total
cze.CommonMessages2_1=of
cze.CommonMessages3_1=with %1
cze.CommonMessages3_2=Click Ok to continue or click cancel to abort installation.
cze.CreditsMessage1_1=Credits
cze.CreditsMessage2_1=This installation was built with %1.
cze.CreditsMessage2_2=%1 created by %2
cze.CreditsMessage2_3=Installation created by %1
#endif

;French
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "French", "") == "1"
fre.AutorunMessage1_1=%1 - Installation
fre.AutorunMessage2_1=Lanceur
fre.AutorunMessage2_2=Installer
fre.AutorunMessage2_3=Désinstaller
fre.AutorunMessage2_4=Configuration
fre.AutorunMessage2_5=Quitter
fre.AutorunMessage2_6_1=Musique: Off
fre.AutorunMessage2_6_2=Musique: On
fre.AutorunMessage2_7=Explorer Disque
fre.AutorunMessage2_8=Lisez-moi
fre.AutorunMessage2_9=Manuel
fre.AutorunMessage2_10=Site Web
fre.AutorunMessage2_11=Mise à Jour
fre.WelcomeMessage1_1=Bienvenu
fre.WelcomeMessage2_1=Bienvenu dans l'assistant d'installation de %1. %n%n %1 est sur le point d'être installé sur votre ordinateur.%n%nIl vous est recommandé de fermer les autres applications en cours avant de continuer.%n%nSélectionnez le type d'installation pour continuer, ou Annuler pour quitter l'installation.
fre.SerialMessage1_1=Numéro de série
fre.SerialMessage2_1=Entrez le numéro de série du produit%n%nLe numéro de série de %1 peut être inclus sur le boîtier du disque situé à l'intérieur du package d'installation.%n%nCliquez sur suivant pour poursuivre l'installation une fois prêt.
fre.SerialMessage3_1=Le numéro de série entré est incorrect. Veuillez recommencer
fre.LicenseMessage1_1=License
fre.LicenseMessage2_1=Merci de lire le contrat de Licence suivant. Vous devez accepter les termes du contrat avant de poursuivre l'installation.
fre.LicenseMessage3_1=J'accepte le contrat de licence
fre.SystemMessage1_1=Système
fre.SystemMessage2_1=Le matériel suivant a été détecté sur votre système%nUtilisez ces informations comme une indication de compatibilité de votre système
fre.SystemMessage3_1=Processeur
fre.SystemMessage3_2=Carte Graphique
fre.SystemMessage3_2_1=Non disponible
fre.SystemMessage3_3=Mémoire
fre.SystemMessage3_4=Son
fre.SystemMessage3_4_1=Non disponible
fre.SystemMessage3_5=Système d'exploitation
fre.SystemMessage3_5_1=Inconnu
fre.SystemMessage3_6=Indicateur
fre.SystemMessage3_6_1=Critique
fre.SystemMessage3_6_2=Faible
fre.SystemMessage3_6_3=Moyen
fre.SystemMessage3_6_4=Bon
fre.SystemMessage3_6_5=Excellent
fre.SystemMessage3_6_6=Requis
fre.SystemMessage3_7=Score d'évaluation
fre.InformationMessage1_1=Information
fre.InformationMessage2_1=Merci de lire les instructions suivantes avant de poursuivre.
fre.SelectComponentMessage1_1=Composants
fre.SelectComponentMessage2_1=Sélectionnez les composants à installer, décochez les composants que vous ne souhaitez pas voir installer.%nCliquez sur suivant pour continuer.
fre.SelectComponentMesesge3=Installer %1
fre.SelectDirMessage1_1=Destination
fre.SelectDirMessage2_1=%1 sera installé dans le dossier suivant. Pour continuer, cliquez sur Suivant%nSi vous souhaitez opter pour un autre dossier, cliquez sur Parcourir.
fre.SelectDirMessage4_1=Espace Total:
fre.SelectDirMessage4_2=Espace disponible:
fre.SelectDirMessage4_3=Espace recommandé:
fre.SelectDirMessage4_4=Espace requis:
fre.SelectDirMessage5_1=Un minimum de %1 MB d'espace disque est nécessaire.
fre.SelectDirMessage5_2=%1 sera installé dans le dossier suivant.
fre.SelectGroupMessage1_1=Groupe
fre.SelectGroupMessage2_1=L'installation créera les raccourcis programme dans le répertoire du menu démarrer suivant.%nSi vous souhaitez sélectionner un autre répertoire, cliquez sur Parcourir.
fre.SelectGroupMessage4_1=Ne pas créer de raccourcis dans le menu démarrer
fre.SelectGroupMessage4_2=Créer un raccourci Bureau
fre.SelectGroupMessage5_1=L'installation créera %1 raccourcis dans le répertoire du menu démarrer suivant.
fre.PreviewMessage1_1=Aperçu
fre.PreviewMessage2_1=Cliché
fre.SelectPriorityMessage1_1=Performance
fre.SelectPriorityMessage2_1=Sélectionnez le niveau de priorité à accorder à l'installation.%nLe niveau de priorité affectera les performances système.
fre.SelectPriorityMessage3_1=Faible Priorité
fre.SelectPriorityMessage3_2=Priorité au-dessous de la normale
fre.SelectPriorityMessage3_3=Priorité Normale
fre.SelectPriorityMessage3_4=Priorité au-dessus de la normale
fre.SelectPriorityMessage3_5=Haute priorité
fre.SelectPriorityMessage3_6=Priorité Temps Réel
fre.SelectTaskMessage1_1=Taches
fre.SelectTaskMessage2_1=Sélectionnez les taches supplémentaires à réaliser pendant l'installation, puis cliquez sur Suivant.
fre.SelectTaskMesesge3=Installer %1
fre.ReadyMessage1_1=Prêt
fre.ReadyMessage2_1=L'installation de %1 sur votre ordinateur peut maintenant commencer.%n%nCliquez sur Installer pour poursuivre l'installation ou cliquez sur retour si vous souhaitez modifier l'installation.
fre.InstallMessage1_1=Installation en cours ...
fre.InstallMessage2_1=Merci de patienter pendant l'installation de %1 sur votre ordinateur.
fre.InstallMessage2_2=Merci d'insérer le disque : %1
fre.InstallMessage3_1=Ecoulé:
fre.InstallMessage3_2=Restant:
fre.InstallMessage3_3_1=Extraction de %1
fre.InstallMessage3_3_2=Installation de %1
fre.InstallMessage3_3_3=Revenir sur les changements réalisés...
fre.InstallMessage3_4=%1 Terminé
fre.InstallMessage3_5=Merci d'insérer le disque : %1
fre.FinishMessage1_1=Terminer
fre.FinishMessage2_1=Installation de %1 terminé.%n%nCliquez sur terminer pour fermer l'installeur.
fre.FinishMessage2_2=Une erreur est survenues pendant l'installation, merci de relancé l'installation.
fre.UninstallMessage1_1=Désinstaller
fre.UninstallMessage2_1=Merci de patienter pendant que %1 est d'installer de votre ordinateur.
fre.UninstallMessage3_1=%1 Terminé
fre.UninstallMessage3_2=Désinstallation...
fre.OtherMessage1_1=L'initialisation de l'installation a échouée.
fre.OtherMessage1_2=Code d'erreur:
fre.OtherMessage1_3=Please wait while installer gathers installation files...
fre.OtherMessage1_4=Installation files are damaged or invalid, please contact publisher.
fre.OtherMessage2_1=Initialisation de l'installation...
fre.OtherMessage2_2=Application:
fre.OtherMessage2_3=Editeur:
fre.OtherMessage3_1=%1 - Désinstallation
fre.OtherMessage3_2=%1 - Installation
fre.OtherMessage4_1=Musique: Off
fre.OtherMessage4_2=Musique: On
fre.OtherMessage4_3=Vidéo: Off
fre.OtherMessage4_4=Vidéo: On
fre.OtherMessage5_1=Installation%nRapide
fre.OtherMessage5_2=Installation%nPersonnalisée
fre.OtherMessage5_3=Installation
fre.OtherMessage5_4=Configurer
fre.OtherMessage6_1=Lanceur
fre.OtherMessage6_2=Configuration
fre.OtherMessage6_3=Désinstallation
fre.OtherMessage7_1=Cartes graphiques dédiées ATI/nVidia
fre.OtherMessage7_2=Processeur graphique intégré Intel
fre.OtherMessage7_3=Processeur graphique intégré SiS/VIA
fre.OtherMessage7_4=Mémoire
fre.ConversionUnit1_1=seconde
fre.ConversionUnit1_2=secondes
fre.ConversionUnit2_1=minute
fre.ConversionUnit2_2=minutes
fre.ConversionUnit3_1=heure
fre.ConversionUnit3_2=heures
fre.ConversionUnit4_1=MB
fre.ConversionUnit4_2=GB
fre.ConversionUnit4_3=TB
fre.ConversionUnit5_1=MHz
fre.ConversionUnit5_2=GHz
fre.ConversionUnit6_1=Bit
fre.CommonMessages1_1=Disponible
fre.CommonMessages1_2=Utilisé
fre.CommonMessages1_3=Total
fre.CommonMessages2_1=de
fre.CommonMessages3_1=avec %1
fre.CommonMessages3_2=Cliquez sur Ok pour poursuivre l'installation ou annuler pour interrompre l'installation.
fre.CreditsMessage1_1=Credits
fre.CreditsMessage2_1=Cette installation a été réalisée avec %1.
fre.CreditsMessage2_2=%1 créé par %2
fre.CreditsMessage2_3=Installation créée par %1
#endif

;German
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "German", "") == "1"
ger.AutorunMessage1_1=%1 - Installation
ger.AutorunMessage2_1=Start
ger.AutorunMessage2_2=Installieren
ger.AutorunMessage2_3=Deinstallieren
ger.AutorunMessage2_4=Anpassen
ger.AutorunMessage2_5=Beenden
ger.AutorunMessage2_6_1=Musik: Aus
ger.AutorunMessage2_6_2=Musik: An
ger.AutorunMessage2_7=Durchsuchen
ger.AutorunMessage2_8=Liesmich
ger.AutorunMessage2_9=Handbuch
ger.AutorunMessage2_10=Website
ger.AutorunMessage2_11=Update
ger.AutorunMessage2_12=Spielen
ger.WelcomeMessage1_1=Willkommen
ger.WelcomeMessage2_1=Willkommen zum %1 Setup-Assistenten%n%nDieser Assistent wird jetzt %1 auf Ihrem Computer installieren.%n%nSie sollten alle anderen Anwendungen beenden, bevor Sie mit dem Setup fortfahren.%n%nWählen Sie den Installationstyp, um fortzufahren, oder Abbrechen, um Setup zu beenden.
ger.SerialMessage1_1=Seriennummer
ger.SerialMessage2_1=Geben Sie die Seriennummer ein%n%nDie Seriennummer %1 kann auf Installationsdatenträgers im Installationspaket gefunden werden.%n%nKlicken Sie auf Weiter, wenn Sie bereit sind, um mit der Installation fortzufahren.
ger.SerialMessage3_1=Die eingegebene Seriennummer ist nicht korrekt. Bitte versuchen Sie es erneut.
ger.LicenseMessage1_1=Lizenz
ger.LicenseMessage2_1=Bitte lesen Sie die folgende Lizenzvereinbarung. Sie müssen die Bedingungen dieser Vereinbarung akzeptieren,bevor Sie mit der Installation fortfahren.
ger.LicenseMessage3_1=Ich akzeptiere die Lizenzvereinbarung
ger.SystemMessage1_1=System
ger.SystemMessage2_1=Folgende Hardware wurde auf Ihrem System erkannt%nVerwenden Sie die Legende darunter als Leitfaden für Ihr System
ger.SystemMessage3_1=Prozessor
ger.SystemMessage3_2=Video
ger.SystemMessage3_2_1=nicht verfügbar
ger.SystemMessage3_3=Speicher
ger.SystemMessage3_4=Audio
ger.SystemMessage3_4_1=nicht verfügbar
ger.SystemMessage3_5=Betriebssystem
ger.SystemMessage3_5_1=unbekannt
ger.SystemMessage3_6=Legende
ger.SystemMessage3_6_1=Kritisch
ger.SystemMessage3_6_2=Schlecht
ger.SystemMessage3_6_3=Mittelwert
ger.SystemMessage3_6_4=Gut
ger.SystemMessage3_6_5=Ausgezeichnet
ger.SystemMessage3_6_6=Notwendig
ger.SystemMessage3_7=Bewertung Ergebnis
ger.InformationMessage1_1=Information
ger.InformationMessage2_1=Lesen Sie bitte folgende, wichtige Informationen bevor Sie fortfahren.
ger.SelectComponentMessage1_1=Komponenten auswählen
ger.SelectComponentMessage2_1=Wählen Sie die Komponenten aus, die Sie installieren möchten,%ndeaktivieren Sie die Komponenten, die Sie nicht installieren möchten.%nKlicken Sie auf "Weiter", wenn sie bereit sind fortzufahren.
ger.SelectComponentMesesge3=Installiere %1
ger.SelectDirMessage1_1=Ziel Ordner
ger.SelectDirMessage2_1=Setup wird %1 in den folgenden Ordner installieren. Um fortzufahren, klicken Sie auf Weiter.%nWenn Sie einen anderen Ordner auszuwählen möchten, klicken Sie auf Durchsuchen.
ger.SelectDirMessage4_1=Gesamtgrösse:
ger.SelectDirMessage4_2=Freier Speicherplatz:
ger.SelectDirMessage4_3=Empfohlener Speicherplatz:
ger.SelectDirMessage4_4=Benötigter Speicherplatz:
ger.SelectDirMessage5_1=Die aktuelle Auswahl erfordert min. %1 MB Speicherplatz.
ger.SelectDirMessage5_2=Setup wird %1 in den folgenden Ordner installieren.
ger.SelectGroupMessage1_1=Gruppe
ger.SelectGroupMessage2_1=etup wird die Programm-Verknüpfungen im folgenden Startmenü-Ordner anlegen.%nWenn Sie einen anderen Ordner wählen möchten, klicken Sie auf Durchsuchen.
ger.SelectGroupMessage4_1=Erstelle keinen Ordner im Startmenü
ger.SelectGroupMessage4_2=Erstelle Desktop-Symbol
ger.SelectGroupMessage5_1=Setup erstellt die %1 Verknüpfung im folgenden Startmenü-Ordner.
ger.PreviewMessage1_1=Vorschau
ger.PreviewMessage2_1=Schnappschuss
ger.SelectPriorityMessage1_1=Leistung
ger.SelectPriorityMessage2_1=Wählen Sie die Priorität, die das Setup während der Installation verwendet werden soll..%nPriorität wird sich auf die Systemleistung auswirken.
ger.SelectPriorityMessage3_1=Niedrig
ger.SelectPriorityMessage3_2=Niedriger als Normal
ger.SelectPriorityMessage3_3=Normal
ger.SelectPriorityMessage3_4=Höher als Normal
ger.SelectPriorityMessage3_5=Hoch
ger.SelectPriorityMessage3_6=Echtzeit
ger.SelectTaskMessage1_1=Zusätzliche Aufgaben
ger.SelectTaskMessage2_1=Wählen Sie die zusätzlichen Aufgaben, die das Setup während der Installation durchführen soll, dann klicken Sie auf Installieren.
ger.SelectTaskMesesge3=Installiere %1
ger.ReadyMessage1_1=Fertig
ger.ReadyMessage2_1=Setup ist jetzt bereit, die Installation von %1 auf Ihrem Computer zu beginnen.%n%nKlicken Sie auf "Installieren", um mit der Installation zu beginnen, oder auf "Zurück", um Ihre Einstellungen zu ändern.
ger.DownloadMessage1_1=Downloads
ger.DownloadMessage2_1=Bitte warten Sie, während Setup zusätzliche Dateien herunterlädt...
ger.InstallMessage1_1=Installiere
ger.InstallMessage2_1=Warten Sie bitte während %1 auf Ihrem Computer installiert wird.
ger.InstallMessage2_2=Bitte legen Sie die CD: %1 ein
ger.InstallMessage3_1=Verstrichen:
ger.InstallMessage3_2=Verbleibend:
ger.InstallMessage3_3_1=Extrahiere %1
ger.InstallMessage3_3_2=Installiere %1
ger.InstallMessage3_3_3=Änderungen werden rückgängig gemacht...
ger.InstallMessage3_4=%1 fertig stellen
ger.InstallMessage3_5=Bitte legen Sie die CD: %1 ein
ger.FinishMessage1_1=Fertig
ger.FinishMessage2_1=Das Setup hat die Installation von %1 auf Ihrem Computer abgeschlossen.%n%nKlicken Sie auf "Fertigstellen", um das Setup zu beenden.
ger.FinishMessage2_2=Setup hat einen Fehler festgestellt, während der Installation, bitte Installation erneut starten.
ger.UninstallMessage1_1=Deinstallieren
ger.UninstallMessage2_1=Warten Sie bitte während %1 von Ihrem Computer entfernt wird.
ger.UninstallMessage3_1=%1 fertig stellen
ger.UninstallMessage3_2=Deinstallieren...
ger.OtherMessage1_1=Setup konnte nicht initialisiert werden.
ger.OtherMessage1_2=Fehler Code:
ger.OtherMessage1_3=Bitte warten Installer sammelt Installationsdateien...
ger.OtherMessage1_4=Installationsdateien beschädigt oder ungültig, wenden Sie sich bitte an den Herausgeber.
ger.OtherMessage2_1=Setup Initialisierung...
ger.OtherMessage2_2=Anwendung:
ger.OtherMessage2_3=Publisher:
ger.OtherMessage3_1=%1 - Deinstallation
ger.OtherMessage3_2=%1 - Installation
ger.OtherMessage4_1=Musik: Aus
ger.OtherMessage4_2=Musik: An
ger.OtherMessage4_3=Video: Aus
ger.OtherMessage4_4=Video: An
ger.OtherMessage5_1=Schnell%nInstallation
ger.OtherMessage5_2=Anpassen
ger.OtherMessage5_3=Installieren
ger.OtherMessage5_4=Anpassen
ger.OtherMessage6_1=Launcher
ger.OtherMessage6_2=Anpassen
ger.OtherMessage6_3=Deinstallieren
ger.OtherMessage6_4=Spielen
ger.OtherMessage7_1=ATI/nVidia Graphics
ger.OtherMessage7_2=Intel Graphics
ger.OtherMessage7_3=SiS/VIA Graphics
ger.OtherMessage7_4=Speicher
ger.ConversionUnit1_1=sekunde
ger.ConversionUnit1_2=sekunden
ger.ConversionUnit2_1=minute
ger.ConversionUnit2_2=minuten
ger.ConversionUnit3_1=Stunde
ger.ConversionUnit3_2=Stunden
ger.ConversionUnit4_1=MB
ger.ConversionUnit4_2=GB
ger.ConversionUnit4_3=TB
ger.ConversionUnit5_1=MHz
ger.ConversionUnit5_2=GHz
ger.ConversionUnit6_1=Bit
ger.CommonMessages1_1=Frei
ger.CommonMessages1_2=Verwendet
ger.CommonMessages1_3=Gesamt
ger.CommonMessages2_1=von
ger.CommonMessages3_1=mit %1
ger.CommonMessages3_2=Klicken Sie auf OK, um fortzufahren, oder auf Abbrechen, um die Installation abzubrechen.
ger.CreditsMessage1_1=Danksagung
ger.CreditsMessage2_1=Diese Installation wurde mit %1 erstellt.
ger.CreditsMessage2_2=%1 erstellt von %2
ger.CreditsMessage2_3=Installation erstellt von %1
ger.IDP_KBs=KB/s
ger.IDP_MBs=MB/s
ger.IDP_X_of_X=%.2f von %.2f
ger.IDP_KB=KB
ger.IDP_MB=MB
ger.IDP_GB=GB
ger.IDP_Initializing=Initialisieren...
ger.IDP_GettingFileInformation=Hole Dateiinformationen...
ger.IDP_StartingDownload=Download wird gestartet...
ger.IDP_Connecting=Verbinde...
ger.IDP_Downloading=Downloade...
ger.IDP_DownloadComplete=Download fertig
ger.IDP_DownloadFailed=Download fehlgeschlagen
ger.IDP_CannotConnect=Verbindung nicht möglich
ger.IDP_CancellingDownload=Download wird abgebrochen...
ger.IDP_Unknown=unbekannt
ger.IDP_DownloadCancelled=Download abgebrochen
ger.IDP_RetryNext=Download fehlgeschlagen, bitte überprüfen Sie die Verbindung und starten Sie Setup-Assistenten, um es erneut zu versuchen.
ger.IDP_RetryCancel=Download fehlgeschlagen, bitte überprüfen Sie die Verbindung und starten Sie Setup-Assistenten, um es erneut zu versuchen.
ger.IDP_HTTPError_X=HTTP error %d
ger.IDP_400=Bad request (400)
ger.IDP_401=Access denied (401)
ger.IDP_404=File not found (404)
ger.IDP_500=Server internal error (500)
ger.IDP_502=Bad gateway (502)
ger.IDP_503=Service temporaily unavaible (503)
ger.Message1=Extrahiere %1...
ger.Message2=Zusammenführen %1...
ger.Message3=Dekodierung %1...
ger.Message4=%1 wurde nicht gefunden.
ger.Message5=Bitte legen Sie die CD %1 mit Datei %2 ein
ger.Message6=Datei suchen?
#endif

;Hungarian
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "Hungarian", "") == "1"
hun.AutorunMessage1_1=%1 - Telepítés
hun.AutorunMessage2_1=Indítás
hun.AutorunMessage2_2=Telepítés
hun.AutorunMessage2_3=Eltávolítás
hun.AutorunMessage2_4=Konfigurálás
hun.AutorunMessage2_5=Kilépés
hun.AutorunMessage2_6_1=Zene: Ki
hun.AutorunMessage2_6_2=Zene: Be
hun.AutorunMessage2_7=Lemez kiválasztása
hun.AutorunMessage2_8=Olvass el
hun.AutorunMessage2_9=Kézikönyv
hun.AutorunMessage2_10=Weboldal
hun.AutorunMessage2_11=Update
hun.WelcomeMessage1_1=Üdvözöllek
hun.WelcomeMessage2_1=Üdvözöllek a(z) %1 telepítőjében%n%nEz feltelepíti a(z) %1-t a számítógépedre.%n%nAjánlott minden futó alkalmazást bezárni a telepítés folytatása előtt!%n%nVálaszd ki a telepítés típusát a folytatáshoz, vagy kattints a Mégse gombra a kilépéshez.
hun.SerialMessage1_1=Sorozatszám
hun.SerialMessage2_1=Írd be a sorozatszámot%n%nA(z) %1 sorozatszáma megtalálható a telepítő bozoában.%n%nKattints a Tovább gombra, amior kész vagy a folytatásra.
hun.SerialMessage3_1=A sorozatszám nem érvényes! Kérlek, próbáld újra!
hun.LicenseMessage1_1=Licensz
hun.LicenseMessage2_1=Kérlek, olvasd el a következő licenszszerződést! El kell fogadnod a feltételeket a folytatás előtt!
hun.LicenseMessage3_1=Elfogadom a licenszszerződést
hun.SystemMessage1_1=Rendszer
hun.SystemMessage2_1=A következő hardvereket észleltük a gépedben%nHasználd a lenti "kulcsokat" a teljesítmény megítéléséhez!
hun.SystemMessage3_1=Processzor
hun.SystemMessage3_2=Video
hun.SystemMessage3_2_1=Nem elérhető
hun.SystemMessage3_3=Memória
hun.SystemMessage3_4=Hang
hun.SystemMessage3_4_1=Nem elérhető
hun.SystemMessage3_5=Operációs rendszer
hun.SystemMessage3_5_1=Ismeretlen
hun.SystemMessage3_6=Kulcs
hun.SystemMessage3_6_1=Kritikus
hun.SystemMessage3_6_2=Rossz
hun.SystemMessage3_6_3=Átlagos
hun.SystemMessage3_6_4=Jó
hun.SystemMessage3_6_5=Kiváló
hun.SystemMessage3_6_6=Szükséges
hun.SystemMessage3_7=Pontszám
hun.InformationMessage1_1=Információ
hun.InformationMessage2_1=Kérlek, olvasd el a következő fontos információkat a folytatás előtt!
hun.SelectComponentMessage1_1=Összetevők
hun.SelectComponentMessage2_1=Válaszd ki azokat az összetevőket amiket telepíteni szeretnél, és vedd ki azok elől a jelölést, amiket pedig nem.%nKattints a Tovább gombra, mikor kész vagy a folytatásra!
hun.SelectComponentMesesge3=%1 Telepítés
hun.SelectDirMessage1_1=Útvonal
hun.SelectDirMessage2_1=A telepítő fel fogja telepíteni a(z) %1-t a következő mappába. Folytatáshoz kattints a Tovább gombra.%nHa másik mappát szeretnél kiváalsztani, akkor kattints a Tallózás gombra.
hun.SelectDirMessage4_1=Összes hely:
hun.SelectDirMessage4_2=Szabadterület:
hun.SelectDirMessage4_3=Ajánlott terület:
hun.SelectDirMessage4_4=Szükséges terület:
hun.SelectDirMessage5_1=At least %1 MB of free disk space is required.
hun.SelectDirMessage5_2=Setup will install %1 into the following folder.
hun.SelectGroupMessage1_1=Csoport
hun.SelectGroupMessage2_1=A telepítő el fogja készíteni a program parancsikonját a Start Menüben.%nHa másik mappát szeretnél kiválasztani, akkor kattints a Tallózás gombra.
hun.SelectGroupMessage4_1=Ne készítsen Start menü mappát
hun.SelectGroupMessage4_2=Asztali parancsikon készítése
hun.SelectGroupMessage5_1=Setup will create %1 shortcuts in the following Start Menu folder.
hun.PreviewMessage1_1=Előnézet
hun.PreviewMessage2_1=Képernyőlövés
hun.SelectPriorityMessage1_1=Teljesítmény
hun.SelectPriorityMessage2_1=Válaszd ki azt a prioritást, amit a telepítés során használni szeretnél.%nA prioritás kiváalsztása hatással van a számítógép teljesítményére!
hun.SelectPriorityMessage3_1=Alacsony prioritás
hun.SelectPriorityMessage3_2=Normál prioritás alatt
hun.SelectPriorityMessage3_3=Normál prioritás
hun.SelectPriorityMessage3_4=Normál prioritás felett
hun.SelectPriorityMessage3_5=Magas prioritás
hun.SelectPriorityMessage3_6=Valósidejű prioritás
hun.SelectTaskMessage1_1=Egyebek
hun.SelectTaskMessage2_1=Válaszd ki a azokat az egyéb összetevőket, amiket a Telepítés alatt el szeretnél végezni, madj kattints a Telepítés gombra.
hun.SelectTaskMesesge3=%1 telepítése
hun.ReadyMessage1_1=Kész
hun.ReadyMessage2_1=A telepítő felkészült a(z) %1 telepítésére.%n%nKattints a Telepítés gombra a folytatáshoz, vagy kattints a Vissza gombra néhány beállítás megváltoztatásához.
hun.InstallMessage1_1=Telepítés
hun.InstallMessage2_1=Kérlek, várj, amíg a(z) %1 feltelepítődik a számítógépedre.
hun.InstallMessage2_2=Kérlek, helyezd be a következő lemezt: %1
hun.InstallMessage3_1=Eltelt:
hun.InstallMessage3_2=Maradt:
hun.InstallMessage3_3_1=%1 kicsomagolása
hun.InstallMessage3_3_2=%1 telepítése
hun.InstallMessage3_3_3=Változások visszaállítása...
hun.InstallMessage3_4=%1 Kész
hun.InstallMessage3_5=Kérlek, helyezd be a következő lemezt: %1
hun.FinishMessage1_1=Befejezés
hun.FinishMessage2_1=A telepítő befejezte a(z) %1 telepítését.%n%nKattints a Befejezés gombra a telepítő bezárásához.
hun.FinishMessage2_2=A telepítő hibát észlelt telepítés közben, kérlek, futtasd újra a telepítőt.
hun.UninstallMessage1_1=Eltávolítás
hun.UninstallMessage2_1=Kérlek, várj, amíg a telepítő eltávolítja a(z) %1-t a számítógépedről.
hun.UninstallMessage3_1=%1 Kész
hun.UninstallMessage3_2=Eltávolítás...
hun.OtherMessage1_1=Nem sikerült betölteni!
hun.OtherMessage1_2=Hibakód:
hun.OtherMessage1_3=Please wait while installer gathers installation files...
hun.OtherMessage1_4=Installation files are damaged or invalid, please contact publisher.
hun.OtherMessage2_1=Telepítő betöltése...
hun.OtherMessage2_2=Alkalmazás:
hun.OtherMessage2_3=Kiadó:
hun.OtherMessage3_1=%1 - Eltávolítás
hun.OtherMessage3_2=%1 - Telepítés
hun.OtherMessage4_1=Zene: Ki
hun.OtherMessage4_2=Zene: Be
hun.OtherMessage5_1=Gyors%ntelepítés
hun.OtherMessage5_2=Egyedi%ntelepítés
hun.OtherMessage5_3=Telepítés
hun.OtherMessage5_4=Konfigurálás
hun.OtherMessage6_1=Indító
hun.OtherMessage6_2=Konfigurálás
hun.OtherMessage6_3=Eltávolítás
hun.OtherMessage7_1=ATI/nVidia Dedicated Graphics
hun.OtherMessage7_2=Intel Integrated Graphics
hun.OtherMessage7_3=SiS/VIA Integrated Graphics
hun.OtherMessage7_4=Memória
hun.ConversionUnit1_1=másodperc
hun.ConversionUnit1_2=másodperc
hun.ConversionUnit2_1=perc
hun.ConversionUnit2_2=perc
hun.ConversionUnit3_1=óra
hun.ConversionUnit3_2=óra
hun.ConversionUnit4_1=MB
hun.ConversionUnit4_2=GB
hun.ConversionUnit4_3=TB
hun.ConversionUnit5_1=MHz
hun.ConversionUnit5_2=GHz
hun.ConversionUnit6_1=Bit
hun.CommonMessages1_1=Szabad
hun.CommonMessages1_2=Használt
hun.CommonMessages1_3=Összesen
hun.CommonMessages2_1=ebből
hun.CommonMessages3_1=with %1
hun.CommonMessages3_2=Click Ok to continue or click cancel to abort installation.
hun.CreditsMessage1_1=Credits
hun.CreditsMessage2_1=This installation was built with %1.
hun.CreditsMessage2_2=%1 created by %2
hun.CreditsMessage2_3=Installation created by %1
#endif

;Italian
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "Italian", "") == "1"
ita.AutorunMessage1_1=%1 - Installazione
ita.AutorunMessage2_1=Launch
ita.AutorunMessage2_2=Installa
ita.AutorunMessage2_3=Disinstalla
ita.AutorunMessage2_4=Configura
ita.AutorunMessage2_5=Esci
ita.AutorunMessage2_6_1=Music: Disattivata
ita.AutorunMessage2_6_2=Music: Attivata
ita.AutorunMessage2_7=Sfoglia Disco
ita.AutorunMessage2_8=Leggimi
ita.AutorunMessage2_9=Manuale
ita.AutorunMessage2_10=Sito internet
ita.AutorunMessage2_11=Aggiorna
ita.AutorunMessage2_12=Gioca
ita.WelcomeMessage1_1=Benvenuti
ita.WelcomeMessage2_1=Benvenuti al %1 Installazione Guidata di%n%nQuesto installerà %1 sul vostro computer.%n%nSi consiglia di chiudere tutte le applicazioni prima di continuare.%n%nSelezionare il tipo di installazione per continuare, o Annulla per uscire dall'installazione.
ita.SerialMessage1_1=Seriale
ita.SerialMessage2_1=Digitare il numero del seriale del prodotto%n%nIl codice seriale%1 si trova sul supporto disco di installazione all'interno del pacchetto di installazione.%n%nClicca Avanti per proseguire con l'installazione.
ita.SerialMessage3_1=Il seriale che hai inserito non è corretto. Riprovare per favore.
ita.LicenseMessage1_1=Licenza
ita.LicenseMessage2_1=Si prega di leggere il seguente Contratto di licenza. È necessario accettare i termini di questo accordo prima di proseguire con l'installazione.
ita.LicenseMessage3_1=Accetto il contratto di licenza
ita.SystemMessage1_1=Sistema
ita.SystemMessage2_1=È stato rilevato il seguente hardware sul sistema%nUtilizzare il tasto qui sotto come guida per il vostro sistema
ita.SystemMessage3_1=Processore
ita.SystemMessage3_2=Video
ita.SystemMessage3_2_1=Non disponibile
ita.SystemMessage3_3=Memoria
ita.SystemMessage3_4=Suono
ita.SystemMessage3_4_1=Non disponibile
ita.SystemMessage3_5=Sistema Operativo
ita.SystemMessage3_5_1=Sconosciuto
ita.SystemMessage3_6=Chiave
ita.SystemMessage3_6_1=Critica
ita.SystemMessage3_6_2=Cattiva
ita.SystemMessage3_6_3=Media
ita.SystemMessage3_6_4=Buona
ita.SystemMessage3_6_5=Eccellente
ita.SystemMessage3_6_6=Richiesto
ita.SystemMessage3_7=Valutazione
ita.InformationMessage1_1=Informazioni
ita.InformationMessage2_1=Si prega di leggere le seguenti importanti informazioni prima di continuare.
ita.SelectComponentMessage1_1=Componenti
ita.SelectComponentMessage2_1=Selezionare i componenti che si desidera installare, deselezionare i componenti che non si desidera installare.%nFare clic su Avanti quando si è pronti per continuare.
ita.SelectComponentMesesge3=Installa %1
ita.SelectDirMessage1_1=Destinazione
ita.SelectDirMessage2_1=Il Setup installerà %1 nella seguente cartella. Per continuare, fare clic su Avanti.%nSe si desidera selezionare una cartella diversa, fare clic su Sfoglia.
ita.SelectDirMessage4_1=Spazio totale:
ita.SelectDirMessage4_2=Spazio libero:
ita.SelectDirMessage4_3=Spazio raccomandato:
ita.SelectDirMessage4_4=Spazio richiesto:
ita.SelectDirMessage5_1=E richiesto Almeno%1 MB di spazio libero su disco.
ita.SelectDirMessage5_2=Il Setup installerà %1 nella seguente cartella.
ita.SelectGroupMessage1_1=Gruppo
ita.SelectGroupMessage2_1=Il Setup creerà i collegamenti del programma nella seguente cartella del Menu Start.%nSe si desidera selezionare una cartella diversa, fare clic su Sfoglia.
ita.SelectGroupMessage4_1=Non creare una cartella Menu Start
ita.SelectGroupMessage4_2=Creare un icona sul Desktop
ita.SelectGroupMessage5_1=Il Setup creerà%1 collegamenti nella seguente cartella Menu Start.
ita.PreviewMessage1_1=Anteprima
ita.PreviewMessage2_1=Shot
ita.SelectPriorityMessage1_1=Prestazioni
ita.SelectPriorityMessage2_1=Selezionare la priorità che il Setup utilizzera durante l'installazione.%nSelezionando la priorità influenzerà le prestazioni del vostro sistema.
ita.SelectPriorityMessage3_1=Priorità bassa
ita.SelectPriorityMessage3_2=Sotto la Priorità normale
ita.SelectPriorityMessage3_3=Priorità normale
ita.SelectPriorityMessage3_4=Sopra Priorità normale
ita.SelectPriorityMessage3_5=Priorità alta
ita.SelectPriorityMessage3_6=Priorità tempo reale
ita.SelectTaskMessage1_1=Attività
ita.SelectTaskMessage2_1=Selezionare le attività aggiuntive che desiderate eseguire durante l'installazione, quindi fare clic su Installa.
ita.SelectTaskMesesge3=Installa %1
ita.ReadyMessage1_1=Pronto
ita.ReadyMessage2_1=Il Setup adesso è pronto per iniziare l'installazione %1 sul vostro computer.%n%nFare clic su Installa per continuare l'installazione, oppure su Indietro se si desidera rivedere o modificare le impostazioni.
ita.DownloadMessage1_1=Scaricati
ita.DownloadMessage2_1=Attendere prego, mentre l'installazione scarica i file aggiuntivi...
ita.InstallMessage1_1=Installa
ita.InstallMessage2_1=Per favore attendi che il Setup installa %1 sul vostro computer.
ita.InstallMessage2_2=Si prega di inserire il disco: %1
ita.InstallMessage3_1=trascorsi:
ita.InstallMessage3_2=Rimanenti:
ita.InstallMessage3_3_1=Estrazione %1
ita.InstallMessage3_3_2=Installazione %1
ita.InstallMessage3_3_3=Recupero delle modifiche...
ita.InstallMessage3_4=%1 Completo
ita.InstallMessage3_5=Si prega di inserire il disco: %1
ita.FinishMessage1_1=Fine
ita.FinishMessage2_1=Il Setup ha terminato l'installazione %1 sul vostro computer.%n%nFare clic su Fine per chiudere Il Setup.
ita.FinishMessage2_2=Il Setup ha rilevato un errore durante l'installazione, si prega di eseguire nuovamente l'installazione.
ita.UninstallMessage1_1=Disinstalla
ita.UninstallMessage2_1=Per favore attendi che il Il Setup disinstalla%1 dal vostro computer.
ita.UninstallMessage3_1=%1 Completo
ita.UninstallMessage3_2=La disinstallazione...
ita.OtherMessage1_1=Il Setup non riuscito a inizializzare.
ita.OtherMessage1_2=Codice errore:
ita.OtherMessage1_3=Per favore attendi che il programma di installazione riunisce i file di installazione...
ita.OtherMessage1_4=I file di installazione sono danneggiati o non validi, si prega di contattare l'editore.
ita.OtherMessage2_1=Inizializzazione in corso del Setup...
ita.OtherMessage2_2=Applicazione:
ita.OtherMessage2_3=Editore:
ita.OtherMessage3_1=%1 - Disinstallazione
ita.OtherMessage3_2=%1 - Installazione
ita.OtherMessage4_1=Music: Disattivata
ita.OtherMessage4_2=Music: Attivata
ita.OtherMessage4_3=Video: Disattivata
ita.OtherMessage4_4=Video: Attivata
ita.OtherMessage5_1=Installazione% nRapida
ita.OtherMessage5_2=Installazione% nPersonalizzata
ita.OtherMessage5_3=Installa
ita.OtherMessage5_4=Configura
ita.OtherMessage6_1=Launcher
ita.OtherMessage6_2=Configurazione
ita.OtherMessage6_3=Disinstalla
ita.OtherMessage6_4=Gioca
ita.OtherMessage7_1=ATI/nVidia Graphics
ita.OtherMessage7_2=Intel Graphics
ita.OtherMessage7_3=SiS/VIA Graphics
ita.OtherMessage7_4=Memoria
ita.ConversionUnit1_1=secondo
ita.ConversionUnit1_2=secondi
ita.ConversionUnit2_1=minuto
ita.ConversionUnit2_2=minuti
ita.ConversionUnit3_1=ora
ita.ConversionUnit3_2=ore
ita.ConversionUnit4_1=MB
ita.ConversionUnit4_2=GB
ita.ConversionUnit4_3=TB
ita.ConversionUnit5_1=MHz
ita.ConversionUnit5_2=GHz
ita.ConversionUnit6_1=Bit
ita.CommonMessages1_1=Liberi
ita.CommonMessages1_2=Usato
ita.CommonMessages1_3=Totale
ita.CommonMessages2_1=di
ita.CommonMessages3_1=con %1
ita.CommonMessages3_2=Clicca Ok per continuare o su Annulla per interrompere l'installazione.
ita.CreditsMessage1_1=Riconoscimenti
ita.CreditsMessage2_1=Questa installazione è stata costruita con %1.
ita.CreditsMessage2_2=%1 creato da %2
ita.CreditsMessage2_3=Installazione creata da %1
ita.IDP_KBs=KB/s
ita.IDP_MBs=MB/s
ita.IDP_X_of_X=%.2f of %.2f
ita.IDP_KB=KB
ita.IDP_MB=MB
ita.IDP_GB=GB
ita.IDP_Initializing=Inizializzazione in corso...
ita.IDP_GettingFileInformation=Acquisizione informazioni sul file...
ita.IDP_StartingDownload=Avvio download...
ita.IDP_Connecting= In Collegamento...
ita.IDP_Downloading=Downloading...
ita.IDP_DownloadComplete=Download completato
ita.IDP_DownloadFailed=Download non riuscito
ita.IDP_CannotConnect=Non può connettersi
ita.IDP_CancellingDownload=Cancellazione download...
ita.IDP_Unknown=Sconosciute
ita.IDP_DownloadCancelled=Download annullato
ita.IDP_RetryNext=Download non riuscito, Si prega di verificare la connessione e configurazione riavviare procedura guidata per provare di nuovo.
ita.IDP_RetryCancel=Download non riuscito, Si prega di verificare la connessione e configurazione riavviare procedura guidata per provare di nuovo.
ita.IDP_HTTPError_X=HTTP error %d
ita.IDP_400=Bad request (400)
ita.IDP_401=Access denied (401)
ita.IDP_404=File not found (404)
ita.IDP_500=Server internal error (500)
ita.IDP_502=Bad gateway (502)
ita.IDP_503=Servizio temporaneamente non disponibile (503)
ita.Message1=Estrazione di %1...
ita.Message2=Unione di %1...
ita.Message3=Decodifica %1...
ita.Message4=%1 was not found.
ita.Message5=Si prega di inserire il disco %1 con %2 file
ita.Message6=Sfoglia per il file richiesto?
#endif

;Malaysian
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "Malaysian", "") == "1"
mas.AutorunMessage1_1=%1 - Pemasangan ??
mas.AutorunMessage2_1=Pelancaran
mas.AutorunMessage2_2=Pasang ??
mas.AutorunMessage2_3=Uninstall
mas.AutorunMessage2_4=Konfigurasi
mas.AutorunMessage2_5=Keluar
mas.AutorunMessage2_6_1=Muzik: Off
mas.AutorunMessage2_6_2=Muzik: Pada
mas.AutorunMessage2_7=Browse Disc
mas.AutorunMessage2_8=readme
mas.AutorunMessage2_9=Manual
mas.AutorunMessage2_10=Laman Web
mas.AutorunMessage2_11=Kemaskini
mas.AutorunMessage2_12=Play
mas.WelcomeMessage1_1=Selamat Datang
mas.WelcomeMessage2_1=Selamat datang ke %1 Setup Wizard%n%nIni akan memasang %1 pada komputer anda.%n%n Nit adalah disyorkan bahawa anda menutup semua aplikasi yang lain sebelum meneruskan.%n%nPilih jenis pemasangan untuk meneruskan, atau Batal untuk Persediaan keluar.
mas.SerialMessage1_1=Serial
mas.SerialMessage2_1=Taipkan nombor siri produk%n%nFail %1 utama siri anda boleh didapati di pemegang cakera pemasangan di dalam pakej pemasangan.%n%nKlik depan apabila bersedia untuk meneruskan pemasangan.
mas.SerialMessage3_1=The bersiri yang anda masukkan tidak betul. Sila cuba sekali lagi.
mas.LicenseMessage1_1=Lesen
mas.LicenseMessage2_1=Sila baca Perjanjian Lesen berikut. Anda mesti menerima syarat-syarat perjanjian ini sebelum meneruskan dengan pemasangan.
mas.LicenseMessage3_1=saya menerima perjanjian lesen
mas.SystemMessage1_1=Sistem
mas.SystemMessage2_1=Perkakasan berikut telah dikesan pada sistem.%nUse anda Key di bawah sebagai panduan untuk sistem anda.
mas.SystemMessage3_1=Pemproses
mas.SystemMessage3_2=Video
mas.SystemMessage3_2_1=Unavaliable
mas.SystemMessage3_3=Memory
mas.SystemMessage3_4=Bunyi
mas.SystemMessage3_4_1=Unavaliable
mas.SystemMessage3_5=Sistem Operasi
mas.SystemMessage3_5_1=Tidak diketahui
mas.SystemMessage3_6=Utama
mas.SystemMessage3_6_1=Kritikal
mas.SystemMessage3_6_2=Bad
mas.SystemMessage3_6_3=Purata
mas.SystemMessage3_6_4=Baik
mas.SystemMessage3_6_5=Cemerlang
mas.SystemMessage3_6_6=Diperlukan
mas.SystemMessage3_7=Rating Score
mas.InformationMessage1_1=Maklumat
mas.InformationMessage2_1=Sila baca maklumat penting berikut sebelum meneruskan.
mas.SelectComponentMessage1_1=Komponen
mas.SelectComponentMessage2_1=Pilih komponen yang anda hendak pasang, membersihkan komponen anda tidak mahu untuk dipasang.%nKlik Seterusnya apabila anda sudah bersedia untuk meneruskan.
mas.SelectComponentMesesge3=Pasang %1
mas.SelectDirMessage1_1=Destinasi
mas.SelectDirMessage2_1=Setup akan memasang %1 ke dalam folder berikut. Untuk meneruskan, klik Seterusnya.%n Jika anda ingin untuk memilih folder yang berbeza, klik Browse.
mas.SelectDirMessage4_1=Jumlah Ruang:
mas.SelectDirMessage4_2=Space Percuma:
mas.SelectDirMessage4_3=Recommeneded Space:
mas.SelectDirMessage4_4=Diperlukan Space:
mas.SelectDirMessage5_1=Sekurang-kurangnya %1 MB ruang cakera bebas diperlukan.
mas.SelectDirMessage5_2=Setup akan memasang %1 ke dalam folder berikut.
mas.SelectGroupMessage1_1=Kumpulan
mas.SelectGroupMessage2_1=Setup akan membuat pintasan program ini dalam folder berikut Menu Permulaan.%n Jika anda ingin untuk memilih folder yang berbeza, klik Browse.
mas.SelectGroupMessage4_1=Jangan menghasilkan folder Start Menu
mas.SelectGroupMessage4_2=Buat icon desktop
mas.SelectGroupMessage5_1=Setup akan mewujudkan %1 pintasan dalam folder berikut Menu Permulaan.
mas.PreviewMessage1_1=Preview
mas.PreviewMessage2_1=Tembakan
mas.SelectPriorityMessage1_1=Prestasi
mas.SelectPriorityMessage2_1=Pilih keutamaan anda ingin Persediaan untuk digunakan semasa memasang. keutamaan%nSelecting akan memberi kesan kepada sistem Berhad di.
mas.SelectPriorityMessage3_1=Keutamaan Rendah
mas.SelectPriorityMessage3_2=Di bawah Keutamaan Normal
mas.SelectPriorityMessage3_3=Keutamaan Normal
mas.SelectPriorityMessage3_4=Di atas Keutamaan Normal
mas.SelectPriorityMessage3_5=Keutamaan tinggi
mas.SelectPriorityMessage3_6=Nyata Keutamaan
mas.SelectTaskMessage1_1=Tugas
mas.SelectTaskMessage2_1=Pilih tugas-tugas tambahan yang anda ingin Persediaan untuk melaksanakan semasa memasang, kemudian klik Pasang.
mas.SelectTaskMesesge3=Pasang %1
mas.ReadyMessage1_1=Sedia
mas.ReadyMessage2_1=Persediaan kini bersedia untuk mula memasang %1 pada komputer anda.%n%nKlik Pasang untuk meneruskan dengan pemasangan, atau klik Kembali jika anda mahu untuk mengkaji semula atau mengubah sebarang tetapan.
mas.DownloadMessage1_1=Muat turun
mas.DownloadMessage2_1=Sila tunggu, manakala persediaan memuat turun fail tambahan ...
mas.InstallMessage1_1=Pasang
mas.InstallMessage2_1=Sila tunggu sementara Persediaan memasang %1 pada komputer anda.
mas.InstallMessage2_2=Sila masukkan cakera: %1
mas.InstallMessage3_1=Berlalu:
mas.InstallMessage3_2=Baki:
mas.InstallMessage3_3_1=Mengekstrak %1
mas.InstallMessage3_3_2=Memasang %1
mas.InstallMessage3_3_3=Rolling kembali perubahan ...
mas.InstallMessage3_4=%1 Lengkap
mas.InstallMessage3_5=Sila masukkan cakera: %1
mas.FinishMessage1_1=Selesai
mas.FinishMessage2_1=Setup telah selesai memasang %1 pada komputer anda.%n%nKlik Selesai untuk menutup Setup.
mas.FinishMessage2_2=Persediaan menghadapi ralat semasa memasang, pemasangan sila jalankan semula.
mas.UninstallMessage1_1=Uninstall
mas.UninstallMessage2_1=Sila tunggu sementara Persediaan dinyahpasang dengan %1 dari komputer anda.
mas.UninstallMessage3_1=%1 Lengkap
mas.UninstallMessage3_2=Membuang pemasangan ...
mas.OtherMessage1_1=Persediaan gagal intialize.
mas.OtherMessage1_2=Kod=Ralat:
mas.OtherMessage1_3=Sila tunggu sementara Pemasang mengumpulkan fail pemasangan ...
mas.OtherMessage1_4=Pemasangan rosak atau tidak sah, sila hubungi penerbit.
mas.OtherMessage2_1=Memulakan Persediaan ...
mas.OtherMessage2_2=Permohonan:
mas.OtherMessage2_3=Penerbit:
mas.OtherMessage3_1=%1 - Nyahpasang
mas.OtherMessage3_2=%1 - Pemasangan
mas.OtherMessage4_1=Muzik: Off
mas.OtherMessage4_2=Muzik: Pada
mas.OtherMessage4_3=Video: Off
mas.OtherMessage4_4=Video: Pada
mas.OtherMessage5_1=% Pantas nInstallation
mas.OtherMessage5_2=Custom%nInstallation
mas.OtherMessage5_3=Pasang
mas.OtherMessage5_4=Konfigurasi
mas.OtherMessage6_1=Pelancar
mas.OtherMessage6_2=Konfigurasi
mas.OtherMessage6_3=Uninstall
mas.OtherMessage6_4=Play
mas.OtherMessage7_1=ATI / nVidia Grafik
mas.OtherMessage7_2=Intel Graphics
mas.OtherMessage7_3=SiS / VIA Grafik
mas.OtherMessage7_4=Memory
mas.ConversionUnit1_1=kedua
mas.ConversionUnit1_2=saat
mas.ConversionUnit2_1=minit
mas.ConversionUnit2_2=minit
mas.ConversionUnit3_1=jam
mas.ConversionUnit3_2=jam
mas.ConversionUnit4_1=MB
mas.ConversionUnit4_2=GB
mas.ConversionUnit4_3=TB
mas.ConversionUnit5_1=MHz
mas.ConversionUnit5_2=GHz
mas.ConversionUnit6_1=Bit
mas.CommonMessages1_1=Percuma
mas.CommonMessages1_2=Digunakan
mas.CommonMessages1_3=Jumlah
mas.CommonMessages2_1=daripada
mas.CommonMessages3_1=dengan %1
mas.CommonMessages3_2=Klik Ok untuk meneruskan atau klik batal untuk membatalkan pemasangan.
mas.CreditsMessage1_1=Kredit
mas.CreditsMessage2_1=Pemasangan ini dibina dengan %1.
mas.CreditsMessage2_2=%1 yang dicipta oleh %2
mas.CreditsMessage2_3=Pemasangan dicipta oleh %1
mas.IDP_KBs=KB/s
mas.IDP_MBs=MB/s
mas.IDP_X_of_X=%.2f daripada %.2f
mas.IDP_KB=KB
mas.IDP_MB=MB
mas.IDP_GB=GB
mas.IDP_Initializing=Memulakan ...
mas.IDP_GettingFileInformation=Mendapatkan maklumat fail ...
mas.IDP_StartingDownload=Memulakan muat turun ...
mas.IDP_Connecting=Menyambung ...
mas.IDP_Downloading=Memuat turun ...
mas.IDP_DownloadComplete=Muat lengkap
mas.IDP_DownloadFailed=Muat gagal
mas.IDP_CannotConnect=Tidak boleh menyambung
mas.IDP_CancellingDownload=Membatalkan muat turun ...
mas.IDP_Unknown=Tidak diketahui
mas.IDP_DownloadCancelled=Muat dibatalkan
mas.IDP_RetryNext=Muat turun gagal, Sila semak sambungan anda dan memulakan semula wizard persediaan untuk mencuba lagi.
mas.IDP_RetryCancel=Muat turun gagal, Sila semak sambungan anda dan memulakan semula wizard persediaan untuk mencuba lagi.
mas.IDP_HTTPError_X=HTTP ralat %d
mas.IDP_400=permintaan Bad (400)
mas.IDP_401=Akses ditolak (401)
mas.IDP_404=Fail tidak dijumpai (404)
mas.IDP_500=Server ralat dalaman (500)
mas.IDP_502=gerbang Bad (502)
mas.IDP_503=Perkhidmatan temporaily unavaible (503)
mas.Message1=Mengekstrak %1 ...
mas.Message2=Menghimpunkan %1 ...
mas.Message3=Mentafsirkan %1 ...
mas.Message4=%1 tidak ditemui.
mas.Message5=Sila masukkan cakera %1 dengan %2 fail
mas.Message6=Browse untuk fail yang diperlukan?
#endif

;Polish
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "Polish", "") == "1"
pol.AutorunMessage1_1=%1 - Instalacja
pol.AutorunMessage2_1=Uruchom
pol.AutorunMessage2_2=Instaluj
pol.AutorunMessage2_3=Odinstaluj
pol.AutorunMessage2_4=Konfiguruj
pol.AutorunMessage2_5=Zamknij
pol.AutorunMessage2_6_1=Muzyka: Nie
pol.AutorunMessage2_6_2=Muzyka: Tak
pol.AutorunMessage2_7=Eksploruj dysk
pol.AutorunMessage2_8=Instrukcja
pol.AutorunMessage2_9=Podrêcznik
pol.AutorunMessage2_10=Strona internetowa
pol.AutorunMessage2_11=Aktualizuj
pol.AutorunMessage2_12=Graj
pol.WelcomeMessage1_1=Witamy
pol.WelcomeMessage2_1=Witamy w instalatorze aplikacji %1.%n%nAplikacja %1 zostanie zainstalowana na twoim komputerze.%n%nZaleca siê zamkn¹æ wszystkie uruchomione aplikacje przed przejciem do dalszych czynnoci.%n%nAby kontynuowaæ wybierz rodzaj instalacji. Kliknij [Anuluj] by zakoñczyæ instalacjê.
pol.SerialMessage1_1=Klucz produktu
pol.SerialMessage2_1=Wpisz swój klucz produktu.%n%nKlucz do %1 znajduje siê na pude³ku zawieraj¹cym p³ytê instalacyjn¹.%n%nKliknij [Dalej] aby kontynuowaæ.
pol.SerialMessage3_1=Wpisany klucz produktu jest nieprawid³owy. Proszê spróbowaæ ponownie.
pol.LicenseMessage1_1=Licencja
pol.LicenseMessage2_1=Proszê zapoznaæ siê z poni¿sz¹ licencj¹. Aby proces instalacji móg³ byæ kontynuowany konieczna jest akceptacja jej postanowieñ.
pol.LicenseMessage3_1=Akceptujê warunki umowy
pol.SystemMessage1_1=System
pol.SystemMessage2_1=Wykryto nastêpuj¹cy sprzêt.%nU¿yj poni¿szej legendy jako wskazówki.
pol.SystemMessage3_1=Procesor
pol.SystemMessage3_2=Karta graficzna
pol.SystemMessage3_2_1=Niedostêpne
pol.SystemMessage3_3=Pamiêæ RAM
pol.SystemMessage3_4=SKarta Dwiêkowa
pol.SystemMessage3_4_1=Niedostêpne
pol.SystemMessage3_5=System operacyjny
pol.SystemMessage3_5_1=Nieznane
pol.SystemMessage3_6=Legenda
pol.SystemMessage3_6_1=Krytyczny
pol.SystemMessage3_6_2=Z³y
pol.SystemMessage3_6_3=Przeciêtny
pol.SystemMessage3_6_4=Dobry
pol.SystemMessage3_6_5=Wymienity
pol.SystemMessage3_6_6=Wymagany
pol.SystemMessage3_7=Ocena
pol.InformationMessage1_1=Informacja
pol.InformationMessage2_1=Przed kontynuowaniem proszê zapoznaæ siê z wa¿nymi informacjami poni¿ej.
pol.SelectComponentMessage1_1=Komponenty
pol.SelectComponentMessage2_1=Wybierz komponenty, które chcesz zainstalowaæ.%nKliknij [Dalej] aby rozpocz¹æ instalacjê.
pol.SelectComponentMesesge3=Zainstaluj %1
pol.SelectDirMessage1_1=Miejsce instalacji
pol.SelectDirMessage2_1=Aplikacja %1 zostanie zainstalowana w poni¿szym folderze. Aby kontynuowaæ kliknij [Dalej].%nAby zmieniæ miejsce docelowe instalacji kliknij [Przegl¹daj].
pol.SelectDirMessage4_1=ùczna przestrzeñ:
pol.SelectDirMessage4_2=Wolna przestrzeñ:
pol.SelectDirMessage4_3=Zalecana przestrzeñ:
pol.SelectDirMessage4_4=Wymagana przestrzeñ:
pol.SelectDirMessage5_1=Wymagane jest przynajmniej %1 MB wolnego miejsca na dysku.
pol.SelectDirMessage5_2=Instalator zainstaluje %1 w nastêpuj¹cym folderze.
pol.SelectGroupMessage1_1=Grupa Menu Start
pol.SelectGroupMessage2_1=Instalator utworzy grupê programu w Menu Start.%nAby wybraæ inny folder kliknij [Przegl¹daj].
pol.SelectGroupMessage4_1=Nie twórz grupy w Menu Start
pol.SelectGroupMessage4_2=Utwórz ikonê na pulpicie
pol.SelectGroupMessage5_1=Instalator utworzy skróty %1 w nastêpuj¹cym folderze Menu Start.
pol.PreviewMessage1_1=Podgl¹d
pol.PreviewMessage2_1=Zdjêcie
pol.SelectPriorityMessage1_1=Wydajnoæ
pol.SelectPriorityMessage2_1=Wybierz priorytet procesu instalacji.%nMa on wp³yw na ogóln¹ wydajnoæ systemu.
pol.SelectPriorityMessage3_1=Niski
pol.SelectPriorityMessage3_2=Poni¿ej normalnego
pol.SelectPriorityMessage3_3=Normalny
pol.SelectPriorityMessage3_4=Powy¿ej normalnego
pol.SelectPriorityMessage3_5=Wysoki
pol.SelectPriorityMessage3_6=Czasu rzeczywistego
pol.SelectTaskMessage1_1=Zadania
pol.SelectTaskMessage2_1=Wybierz dodatkowe zadania dla procesu instalacji, nastêpnie kliknij [Dalej].
pol.SelectTaskMesesge3=Instaluj %1
pol.ReadyMessage1_1=Gotowe
pol.ReadyMessage2_1=Instalator jest gotowy do zainstalowania aplikacji %1 na twoim komputerze.%n%nKliknij [Instaluj] aby kontynuowaæ, lub [Wstecz] by powróciæ do wczeniejszych ustawieñ.
pol.DownloadMessage1_1=Pobieranie
pol.DownloadMessage2_1=Proszê czekaæ, instalator pobiera dodatkowe pliki...
pol.InstallMessage1_1=Instalowanie
pol.InstallMessage2_1=Proszê czekaæ, trwa instalowanie aplikacji %1 na twoim komputerze.
pol.InstallMessage2_2=Proszê w³o¿yæ dysk: %1
pol.InstallMessage3_1=Up³ynʳo:
pol.InstallMessage3_2=Pozosta³o:
pol.InstallMessage3_3_1=Wypakowywanie %1
pol.InstallMessage3_3_2=Instalowanie %1
pol.InstallMessage3_3_3=Cofanie dokonanych zmian...
pol.InstallMessage3_4=%1 Wykonano
pol.InstallMessage3_5=Proszê w³o¿yæ dysk: %1
pol.FinishMessage1_1=Koniec
pol.FinishMessage2_1=Instalator zakoñczy³ instalowanie aplikacji %1 na twoim komputerze.%n%nKliknij [Zakoñcz] aby opuciæ instalator.
pol.FinishMessage2_2=Instalator napotka³ bӹd, proszê uruchomiæ instalacjê ponownie.
pol.UninstallMessage1_1=Deinstalacja
pol.UninstallMessage2_1=Proszê czekaæ, trwa deinstalacja aplikacji %1 z twojego kompuera.
pol.UninstallMessage3_1=%1 Wykonano
pol.UninstallMessage3_2=Deinstalacja...
pol.OtherMessage1_1=Instalator nie móg³ zostaæ zainicjowany.
pol.OtherMessage1_2=Kod b³êdu:
pol.OtherMessage1_3=Proszê czekaæ, instalator zbiera wymagane pliki...
pol.OtherMessage1_4=Pliki instalacyjne s¹ uszkodzone lub niewa¿ne, prosimy o kontakt z wydawc¹.
pol.OtherMessage2_1=Inicjowanie instalatora...
pol.OtherMessage2_2=Aplikacja:
pol.OtherMessage2_3=Wydawca:
pol.OtherMessage3_1=%1 - Deinstalacja
pol.OtherMessage3_2=%1 - Instalacja
pol.OtherMessage4_1=Muzyka: Nie
pol.OtherMessage4_2=Muzyka: Tak
pol.OtherMessage4_3=Wideo: Nie
pol.OtherMessage4_4=Wideo: Tak
pol.OtherMessage5_1=Szybka%ninstalacja
pol.OtherMessage5_2=Instalacja%nniestandardowa
pol.OtherMessage5_3=Instaluj
pol.OtherMessage5_4=Konfiguruj
pol.OtherMessage6_1=Launcher
pol.OtherMessage6_2=Konfiguracja
pol.OtherMessage6_3=Deinstalacja
pol.OtherMessage6_4=Graj
pol.OtherMessage7_1=Karty graficzne ATI/nVidia
pol.OtherMessage7_2=Karty graficzne Intel
pol.OtherMessage7_3=Karty graficzne SiS/VIA
pol.OtherMessage7_4=Pamiêæ
pol.ConversionUnit1_1=sekunda
pol.ConversionUnit1_2=sekund
pol.ConversionUnit2_1=minuta
pol.ConversionUnit2_2=minut
pol.ConversionUnit3_1=godzina
pol.ConversionUnit3_2=godzin
pol.ConversionUnit4_1=MB
pol.ConversionUnit4_2=GB
pol.ConversionUnit4_3=TB
pol.ConversionUnit5_1=MHz
pol.ConversionUnit5_2=GHz
pol.ConversionUnit6_1=Bit
pol.CommonMessages1_1=Wolna
pol.CommonMessages1_2=U¿yta
pol.CommonMessages1_3=Ca³kowita
pol.CommonMessages2_1=z
pol.CommonMessages3_1=z %1
pol.CommonMessages3_2=Kliknij [Ok] aby kontynuowaæ, lub [Anuluj] aby przerwaæ instalacjê.
pol.CreditsMessage1_1=Autorzy
pol.CreditsMessage2_1=Instalacja zbudowana przy u¿yciu %1.
pol.CreditsMessage2_2=%1 utworzony przez %2
pol.CreditsMessage2_3=Instalacja utworzona przez %1
pol.IDP_KBs=KB/s
pol.IDP_MBs=MB/s
pol.IDP_X_of_X=%.2f z %.2f
pol.IDP_KB=KB
pol.IDP_MB=MB
pol.IDP_GB=GB
pol.IDP_Initializing=Inicjowanie...
pol.IDP_GettingFileInformation=Uzyskiwanie informacji o pliku...
pol.IDP_StartingDownload=Rozpoczynanie pobierania...
pol.IDP_Connecting=ùczenie...
pol.IDP_Downloading=Pobieranie...
pol.IDP_DownloadComplete=Pobieranie zakoñczone
pol.IDP_DownloadFailed=Pobieranie nie powiod³o siê
pol.IDP_CannotConnect=Brak poӹczenia
pol.IDP_CancellingDownload=Anulowanie pobierania...
pol.IDP_Unknown=Nieznany
pol.IDP_DownloadCancelled=Pobieranie anulowane
pol.IDP_RetryNext=Bӹd pobierania, sprawd swoje poӹczenie i uruchom ponownie instalator.
pol.IDP_RetryCancel=Bӹd pobierania, sprawd swoje poӹczenie i uruchom ponownie instalator.
pol.IDP_HTTPError_X=bӹd HTTP %d
pol.IDP_400=Nieprawid³owe zapytanie (400)
pol.IDP_401=Nieautoryzowany dostêp (401)
pol.IDP_404=Nie znaleziono pliku (404)
pol.IDP_500=Wewnêtrzny bӹd serwera (500)
pol.IDP_502=Bӹd bramy (502)
pol.IDP_503=Serwer czasowo niedostêpny (503)
pol.Message1=Wypakowywanie %1...
pol.Message2=ùczenie %1...
pol.Message3=Dekodowanie %1...
pol.Message4=%1 nie zosta³ znaleziony.
pol.Message5=Proszê umieciæ dysk %1 zawieraj¹cy plik %2
pol.Message6=Przegl¹danie w poszukiwaniu wymaganego pliku?
#endif

;Portuguese
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "Portuguese", "") == "1"
por.AutorunMessage1_1=%1 - Instalação
por.AutorunMessage2_1=Iniciar
por.AutorunMessage2_2=Instalar
por.AutorunMessage2_3=Desinstalar
por.AutorunMessage2_4=Configurar
por.AutorunMessage2_5=Sair
por.AutorunMessage2_6_1=Ligar
por.AutorunMessage2_6_2=Desligar
por.AutorunMessage2_7=Disco
por.AutorunMessage2_8=Leia-me
por.AutorunMessage2_9=Manual
por.AutorunMessage2_10=Website
por.AutorunMessage2_11=Atualização
por.AutorunMessage2_12=Jogar
por.WelcomeMessage1_1=Bem-vindo
por.WelcomeMessage2_1=Bem-vindo. %1 Este assistente de Configuração%n%n irá instalar %1 no seu computador.%n%nÉ recomendado que você feche todos os aplicativos antes de continuar.%n%nSelecione o tipo de instalação para continuar, ou clique em Cancelar para sair da instalação.
por.SerialMessage3_1=O serial que você digitou não está correto. Por favor, tente novamente.
por.SerialMessage1_1=Serial
por.SerialMessage2_1=Digite o seu número de série do produto%n%nA %1 a chave de série pode ser encontrado no disco de instalação.%n%nClique em Avançar quando estiver pronto para continuar com a instalação.
por.LicenseMessage1_1=Licença
por.LicenseMessage2_1=Por favor, leia o seguinte Acordo de Licença. Você deve aceitar os termos deste acordo, antes de continuar com a instalação.
por.LicenseMessage3_1=Eu aceito o contrato de licença
por.SystemMessage1_1=Sistema
por.SystemMessage2_1=O seguinte hardware foi detectado em seu sistema%nUse a chave abaixo como um guia do seu sistema
por.SystemMessage3_1=Processador
por.SystemMessage3_2=Vídeo
por.SystemMessage3_2_1=Indisponível
por.SystemMessage3_3=Memória
por.SystemMessage3_4=Som
por.SystemMessage3_4_1=Indisponível
por.SystemMessage3_5=Sistema Operacional
por.SystemMessage3_5_1=Desconhecido
por.SystemMessage3_6=Chave
por.SystemMessage3_6_1=Crítico
por.SystemMessage3_6_2=Ruim
por.SystemMessage3_6_3=Médio
por.SystemMessage3_6_4=Bom
por.SystemMessage3_6_5=Ótimo
por.SystemMessage3_6_6=Necessário
por.SystemMessage3_7=Pontuação
por.InformationMessage1_1=Informação
por.InformationMessage2_1=Por favor, leia as seguintes informações antes de continuar.
por.SelectComponentMessage1_1=Componentes
por.SelectComponentMessage2_1=Selecione os componentes que deseja instalar, ou limpe os componentes que você não deseja instalar.%nClique em Avançar quando estiver pronto para continuar.
por.SelectComponentMesesge3=Instalar %1
por.SelectDirMessage1_1=Destino
por.SelectDirMessage2_1=O programa irá instalar %1 na seguinte pasta. Para continuar, clique em Avançar.%nSe você gostaria de selecionar uma pasta diferente, clique em Procurar.
por.SelectDirMessage4_1=Espaço Total:
por.SelectDirMessage4_2=Espaço Livre:
por.SelectDirMessage4_3=Espaço Recomendado:
por.SelectDirMessage4_4=Espaço Necessário:
por.SelectDirMessage5_1=Ao menos %1 MB de espaço livre no disco é necessário.
por.SelectDirMessage5_2=O Setup irá instalar %1 na seguinte pasta.
por.SelectGroupMessage1_1=Atalhos
por.SelectGroupMessage2_1=A instalação irá criar os atalhos do programa na seguinte pasta do Menu Iniciar.%nSe você gostaria de selecionar uma pasta diferente, clique em Procurar.
por.SelectGroupMessage4_1=Não criar uma pasta no Menu Iniciar
por.SelectGroupMessage4_2=Criar um atalho na Área de Trabalho
por.SelectGroupMessage5_1=A instalação %1 irá criar um atalho na seguinte pasta do Menu Iniciar.
por.PreviewMessage1_1=Visualização
por.PreviewMessage2_1=Plano
por.SelectPriorityMessage1_1=Desempenho
por.SelectPriorityMessage2_1=Selecione o tipo de prioridade que você gostaria que o programa utilize durante a instalação.%n isso vai afetar o desempenho do sistema de acordo com as opções.
por.SelectPriorityMessage3_1=Prioridade Baixa
por.SelectPriorityMessage3_2=Prioridade Abaixo do Normal
por.SelectPriorityMessage3_3=Prioridade Normal
por.SelectPriorityMessage3_4=Prioridade Acima do Normal
por.SelectPriorityMessage3_5=Prioridade Alta
por.SelectPriorityMessage3_6=Prioridade em Tempo Real
por.SelectTaskMessage1_1=Programas
por.SelectTaskMessage2_1=Selecione os programas adicionais que você gostaria que seja executador durante a instalação, e clique em Instalar.
por.SelectTaskMesesge3=Instalar %1
por.ReadyMessage1_1=Tudo Pronto
por.ReadyMessage2_1=O programa está pronto para começar a instalar%1 no seu computador.%n%nClique em Instalar para continuar com a instalação, ou clique em Voltar se você quiser rever ou alterar as configurações.
por.DownloadMessage1_1=Downloads
por.DownloadMessage2_1=Espere, enquanto baixa os arquivos adicionais ...
por.InstallMessage1_1=Instalando...
por.InstallMessage2_1=Por favor aguarde enquanto o programa instala %1 em seu computador.
por.InstallMessage2_2=Por favor, insira o disco: %1
por.InstallMessage3_1=Decorrido:
por.InstallMessage3_2=Restante:
por.InstallMessage3_3_1=Extraindo %1
por.InstallMessage3_3_2=Instalando %1
por.InstallMessage3_3_3=Revertendo alterações...
por.InstallMessage3_4=%1 Completo
por.InstallMessage3_5=Por favor, insira o disco: %1
por.FinishMessage1_1=Concluido.
por.FinishMessage2_1=O programa concluiu a instalação do%1 no seu computador.%n%nClique em Concluir para fechar o programa de configuração.
por.FinishMessage2_2=O Programa encontrou um erro durante a instalação, por favor, execute novamente a instalação.
por.UninstallMessage1_1=Desinstalar
por.UninstallMessage2_1=Por favor aguarde enquanto o programa instala %1 no seu PC
por.UninstallMessage3_1=%1 Completo
por.UninstallMessage3_2=Desinstalando...
por.OtherMessage1_1=A instalação falhou ao inicializar.
por.OtherMessage1_2=Código de erro:
por.OtherMessage1_3=Por favor aguarde enquanto instalador reúne os arquivos da instalação...
por.OtherMessage1_4=Os arquivos de instalação estão danificados ou é inválido, por favor, entre em contato com programador.
por.OtherMessage2_1=Inicializando o Programa...
por.OtherMessage2_2=Aplicação:
por.OtherMessage2_3=Editor:
por.OtherMessage3_1=%1 - Desinstalar
por.OtherMessage3_2=%1 - Instalação
por.OtherMessage4_1=Ligar: música
por.OtherMessage4_2=Desligar: música:
por.OtherMessage4_3=Ligar: Vídeo
por.OtherMessage4_4=Desligar: Vídeo:
por.OtherMessage5_1=Instalação%nRápida
por.OtherMessage5_2=Instalação%nPersonalizado
por.OtherMessage5_3=Instalar
por.OtherMessage5_4=Configurar
por.OtherMessage6_1=Launcher
por.OtherMessage6_2=Configuração
por.OtherMessage6_3=Desinstalar
por.OtherMessage6_4=Jogar
por.OtherMessage7_1=ATI/nVidia Gráficos
por.OtherMessage7_2=Intel Gráficos
por.OtherMessage7_3=SiS/VIA Gráficos
por.OtherMessage7_4=Memória
por.ConversionUnit1_1=segundo
por.ConversionUnit1_2=segundos
por.ConversionUnit2_1=minuto
por.ConversionUnit2_2=minutos
por.ConversionUnit3_1=hora
por.ConversionUnit3_2=horas
por.ConversionUnit4_1=MB
por.ConversionUnit4_2=GB
por.ConversionUnit4_3=TB
por.ConversionUnit5_1=MHz
por.ConversionUnit5_2=GHz
por.ConversionUnit6_1=Bit
por.CommonMessages1_1=Livre
por.CommonMessages1_2=Usado
por.CommonMessages1_3=Total
por.CommonMessages2_1=de
por.CommonMessages3_1=com %1
por.CommonMessages3_2=Clique em OK para continuar ou Cancelar para abortar a instalação.
por.CreditsMessage1_1=Créditos
por.CreditsMessage2_1=Este instalador foi construído por %1.
por.CreditsMessage2_2=%1 criado por %2
por.CreditsMessage2_3=programa de Instalação criado por %1
por.IDP_KBs=KB/s
por.IDP_MBs=MB/s
por.IDP_X_of_X=%.2f of %.2f
por.IDP_KB=KB
por.IDP_MB=MB
por.IDP_GB=GB
por.IDP_Initializing=Iniciando...
por.IDP_GettingFileInformation=Pegando informações do arquivo...
por.IDP_StartingDownload=Iniciando o download...
por.IDP_Connecting=Conectando...
por.IDP_Downloading=Baixando...
por.IDP_DownloadComplete=Download completo
por.IDP_DownloadFailed=Falha no download
por.IDP_CannotConnect=Não é possível conectar
por.IDP_CancellingDownload=Cancelando download...
por.IDP_Unknown= Desconhecido
por.IDP_DownloadCancelled=Download cancelado
por.IDP_RetryNext=O Download falhou, por favor, verifique sua conexão e reinicie o assistente de configuração para tentar novamente.
por.IDP_RetryCancel=O Download falhou, por favor, verifique sua conexão e reinicie o assistente de configuração para tentar novamente.
por.IDP_HTTPError_X=HTTP erro% d
por.IDP_400=Solicitação ruim (400)
por.IDP_401=Acesso negado (401)
por.IDP_404=Arquivo não encontrado (404)
por.IDP_500=Erro interno do servidor (500)
por.IDP_502=Bad gateway (502)
por.IDP_503=Serviço temporariamente indisponível (503)
por.Message1=Extraindo% 1...
por.Message2=Juntando% 1...
por.Message3=Descodificando% 1...
por.Message4=% 1 não foi encontrado.
por.Message5=Por favor, insira o disco %1 %2 com o arquivo
por.Message6=Procurar arquivo necessário?
#endif

;Russian
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "Russian", "") == "1"
rus.AutorunMessage1_1=%1 - Установка
rus.AutorunMessage2_1=Запустить
rus.AutorunMessage2_2=Установить
rus.AutorunMessage2_3=Удалить
rus.AutorunMessage2_4=Настройки
rus.AutorunMessage2_5=Выход
rus.AutorunMessage2_6_1=Музыка: Выкл
rus.AutorunMessage2_6_2=Музыка: Вкл
rus.AutorunMessage2_7=Обзор диска
rus.AutorunMessage2_8=Readme
rus.AutorunMessage2_9=Руководство
rus.AutorunMessage2_10=Сайт
rus.AutorunMessage2_11=Обновить
rus.AutorunMessage2_12=Играть
rus.WelcomeMessage1_1=Приветствие
rus.WelcomeMessage2_1=Добро пожаловать в мастер установки %1%n%nОн установит %1 на ваш компьютер.%n%nСоветуем зыкрыть все запущенные приложения перед продолжением установки.%n%nВыберите тип установки для продолжения, или нажмите «Отмена» для выхода из установки.
rus.SerialMessage1_1=Серийный номер
rus.SerialMessage2_1=Введите серийный номер%n%nСерийный номер %1 может быть найден на установочном диске либо в его упаковке.%n%nНажмите «Далее» для продолжения установки.
rus.SerialMessage3_1=Введен неверный серийный номер. Попробуйте ещё раз.
rus.LicenseMessage1_1=Лицензионное соглашение
rus.LicenseMessage2_1=Пожалуйста, прочтите следующее лицензионное соглашение. Вы должны принять условия данного соглашения, чтобы продолжить.
rus.LicenseMessage3_1=Я принимаю условия лицензионного соглашения
rus.SystemMessage1_1=Системные требования
rus.SystemMessage2_1=Следующее оборудование было обнаружено в вашей системе%nИспользуйте подсказки ниже, чтобы установить соответствие вашей системы
rus.SystemMessage3_1=Процессор
rus.SystemMessage3_2=Видеоадаптер
rus.SystemMessage3_2_1=Недоступен
rus.SystemMessage3_3=ОЗУ
rus.SystemMessage3_4=Зауковая карта
rus.SystemMessage3_4_1=Недоступна
rus.SystemMessage3_5=Операционная система
rus.SystemMessage3_5_1=Неизвестна
rus.SystemMessage3_6=Состояние
rus.SystemMessage3_6_1=Критическое
rus.SystemMessage3_6_2=Плохое
rus.SystemMessage3_6_3=Нормальное
rus.SystemMessage3_6_4=Хорошее
rus.SystemMessage3_6_5=Превосходное
rus.SystemMessage3_6_6=Необходимое
rus.SystemMessage3_7=Оценка
rus.InformationMessage1_1=Информация
rus.InformationMessage2_1=Пожалуйста, преед продолжением прочтите следующаую важную информацию.
rus.SelectComponentMessage1_1=Компоненты
rus.SelectComponentMessage2_1=Выберите компаненты для установки.%nНажмите «Далее» для продолжения установки.
rus.SelectComponentMesesge3=Установка %1
rus.SelectDirMessage1_1=Место назначения
rus.SelectDirMessage2_1=Программа установит %1 в следующую папку. Для продолжения нажмите «Далее».%nЕсли вы х отите выбрать другую папку, Нажмите «Обзор».
rus.SelectDirMessage4_1=Всего места на диске:
rus.SelectDirMessage4_2=Свободно места на диске:
rus.SelectDirMessage4_3=Рекомендуется места на диске:
rus.SelectDirMessage4_4=Необходимо места на диске:
rus.SelectDirMessage5_1=Как минимум %1 Мб свободного места необходимо на диске.
rus.SelectDirMessage5_2=Программа установит %1 в следующую папку.
rus.SelectGroupMessage1_1=Меню «Пуск»
rus.SelectGroupMessage2_1=Программа создаст ярлыки в следующей папке меню «Пуск».%nДля выбора другого месторасположения, нажмите «Обзор».
rus.SelectGroupMessage4_1=Не создавать ярылки в меню «Пуск»
rus.SelectGroupMessage4_2=Создать ярлык на рабочем столе
rus.SelectGroupMessage5_1=Установщик %1 создаст ярылки в следующей папке меню «Пуск».
rus.PreviewMessage1_1=Предварительный просмотр
rus.PreviewMessage2_1=Скриншот
rus.SelectPriorityMessage1_1=Производительность
rus.SelectPriorityMessage2_1=Выберите желаемый приоритет программы установки. Это может отразиться на производительности системы
rus.SelectPriorityMessage3_1=Низкий
rus.SelectPriorityMessage3_2=Ниже среднего
rus.SelectPriorityMessage3_3=Средний
rus.SelectPriorityMessage3_4=Выше среднего
rus.SelectPriorityMessage3_5=Высокий
rus.SelectPriorityMessage3_6=Реального времени
rus.SelectTaskMessage1_1=Задачи
rus.SelectTaskMessage2_1=Выберите дополнительные задачи установщика, а затем нажминет «Установить».
rus.SelectTaskMesesge3=Установка %1
rus.ReadyMessage1_1=Готово
rus.ReadyMessage2_1=Программа установки готова установить %1 на ваш компьютер.%n%nНажминет «Установить» для начала установки, Или нажмите «Назад», если хотите внести какие-либо изменения.
rus.DownloadMessage1_1=Загрузка
rus.DownloadMessage2_1=Пожалуйста, подождите, пока установщик загрузит необходимые файлы...
rus.InstallMessage1_1=Установка
rus.InstallMessage2_1=Подождите, пока программа укстановки установит %1 на вашем компьютере.
rus.InstallMessage2_2=Вставьте диск: %1
rus.InstallMessage3_1=Прошло времени:
rus.InstallMessage3_2=Осталось времени:
rus.InstallMessage3_3_1=Распаковка %1
rus.InstallMessage3_3_2=Установка %1
rus.InstallMessage3_3_3=Отмена изменений...
rus.InstallMessage3_4=%1 Завершено
rus.InstallMessage3_5=Вставьте диск: %1
rus.FinishMessage1_1=Завершение
rus.FinishMessage2_1=Программа установки %1 завершила свою работу.%n%nНажмите «Завершить», чтобоы закрыть программу установки.
rus.FinishMessage2_2=Во время установки возникли ошибки, пожалуйста, запустите установку заново.
rus.UninstallMessage1_1=Удаление
rus.UninstallMessage2_1=Пожалуйста, подождите пока программа установки удалит %1 с вашего уомпьютера.
rus.UninstallMessage3_1=%1 Завершено
rus.UninstallMessage3_2=Удаление...
rus.OtherMessage1_1=Ошибка запуска установки.
rus.OtherMessage1_2=Код ошибки:
rus.OtherMessage1_3=Пожалуйста, подождите, пока уставщик соберет необходимые файлы...
rus.OtherMessage1_4=Файлы установки повреждены или неверны, пожалуйста, свяжитесь с издателем.
rus.OtherMessage2_1=Запуск установки...
rus.OtherMessage2_2=Приложение:
rus.OtherMessage2_3=Издатель:
rus.OtherMessage3_1=%1 - Удаление
rus.OtherMessage3_2=%1 - Установка
rus.OtherMessage4_1=Музыка: Выкл
rus.OtherMessage4_2=Музыка: Вкл
rus.OtherMessage4_3=Видео: Выкл
rus.OtherMessage4_4=Видео: Вкл
rus.OtherMessage5_1=Быстрая%nУстановка
rus.OtherMessage5_2=Выборочная%nУстановка
rus.OtherMessage5_3=Установка
rus.OtherMessage5_4=Настройки
rus.OtherMessage6_1=Launcher
rus.OtherMessage6_2=Конфигурация
rus.OtherMessage6_3=Удаление
rus.OtherMessage6_4=Играть
rus.OtherMessage7_1=Графика ATI/nVidia
rus.OtherMessage7_2=Графика Intel
rus.OtherMessage7_3=Графика SiS/VIA
rus.OtherMessage7_4=Память
rus.ConversionUnit1_1=секунда
rus.ConversionUnit1_2=секунд
rus.ConversionUnit2_1=минута
rus.ConversionUnit2_2=минут
rus.ConversionUnit3_1=час
rus.ConversionUnit3_2=часов
rus.ConversionUnit4_1=МБ
rus.ConversionUnit4_2=ГБ
rus.ConversionUnit4_3=ТБ
rus.ConversionUnit5_1=МГц
rus.ConversionUnit5_2=ГГц
rus.ConversionUnit6_1=Бит
rus.CommonMessages1_1=Доступно
rus.CommonMessages1_2=Использовано
rus.CommonMessages1_3=Всего
rus.CommonMessages2_1=из
rus.CommonMessages3_1=с %1
rus.CommonMessages3_2=Нажмите «Далее» для продолжения, или «Отмена» для завершения установки.
rus.CreditsMessage1_1=Благодарности
rus.CreditsMessage2_1=Этот установщик был собран с помощью %1.
rus.CreditsMessage2_2=%1 создал %2
rus.CreditsMessage2_3=Установщик создал %1
rus.IDP_KBs=КБ/с
rus.IDP_MBs=МБ/с
rus.IDP_X_of_X=%.2f из %.2f
rus.IDP_KB=КБ
rus.IDP_MB=МБ
rus.IDP_GB=ГБ
rus.IDP_Initializing=Запуск...
rus.IDP_GettingFileInformation=Получение информации о файле...
rus.IDP_StartingDownload=Начало загрузки...
rus.IDP_Connecting=Соединение...
rus.IDP_Downloading=Загрузка...
rus.IDP_DownloadComplete=Загрузка завершена
rus.IDP_DownloadFailed=Загрузка не удалась
rus.IDP_CannotConnect=Невозможно подключиться
rus.IDP_CancellingDownload=Отмена загрузки...
rus.IDP_Unknown=Неизвестно
rus.IDP_DownloadCancelled=Загрузка отменена
rus.IDP_RetryNext=Загрузка не удалась, Пожалуйста, проверьте соединение и перезапустите установку.
rus.IDP_RetryCancel=Загрузка не удалась, Пожалуйста, проверьте соединение и перезапустите установку.
rus.IDP_HTTPError_X=Ошибка HTTP %d
rus.IDP_400=Неверный запрос (400)
rus.IDP_401=В доступе отказано (401)
rus.IDP_404=Файл не найден (404)
rus.IDP_500=Внутренняя ошибка сервера (500)
rus.IDP_502=Неверный шлюз (502)
rus.IDP_503=Сервис временно недоступен (503)
rus.Message1=Распаковка %1...
rus.Message2=Объединение %1...
rus.Message3=Расшифровка %1...
rus.Message4=%1 не найден.
rus.Message5=Пожалуйста, вставьте диск %1 с файлом %2
rus.Message6=Открыть «обзор» для поиска недостающего файла?
#endif

;Spanish
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "Spanish", "") == "1"
esp.AutorunMessage1_1=%1 - Instalaciòn
esp.AutorunMessage2_1=Iniciar
esp.AutorunMessage2_2=Instalar
esp.AutorunMessage2_3=Desinstalar
esp.AutorunMessage2_4=Configurar
esp.AutorunMessage2_5=Salir
esp.AutorunMessage2_6_1=Musica: Apagar
esp.AutorunMessage2_6_2=Musica: Encender
esp.AutorunMessage2_7=Explorar Disco
esp.AutorunMessage2_8=Leeme
esp.AutorunMessage2_9=Manual
esp.AutorunMessage2_10=Pàgina Web
esp.AutorunMessage2_11=Actualizaciòn
esp.AutorunMessage2_12=Jugar
esp.WelcomeMessage1_1=Bienvenido
esp.WelcomeMessage2_1=Bienvenido al asistente de instalaciòn de %1 %n%n Este asistente instalarà %1 en su computadora.%n%nSe recomienda cerrar todas las aplicaciones antes de continuar.%n%nHaga clic en Tipo de instalaciòn para continuar, o en Cancelar para salir de la instalaciòn.
esp.SerialMessage1_1=Serial
esp.SerialMessage2_1=Escriba el número de serie del producto%n%nThe %1 El número de serie se puede encontrar en el interior del disco de instalación o en la portada de la caja.%n%nHaga clic en Siguiente cuando esté listo para continuar con la instalación.
esp.SerialMessage3_1=El serial introducido no es correcto. Por favor, inténtalo de nuevo.
esp.LicenseMessage1_1=Licencia
esp.LicenseMessage2_1=Por favor, lea el siguiente Acuerdo de Licencia. Debe aceptar los términos de este acuerdo antes de continuar con la instalación.
esp.LicenseMessage3_1=Acepto el acuerdo
esp.SystemMessage1_1=Sistema
esp.SystemMessage2_1=El hardware que se ha detectado en su sistema es el siguiente%nUse la casilla de abajo como guía para su sistema
esp.SystemMessage3_1=Procesador
esp.SystemMessage3_2=Video
esp.SystemMessage3_2_1=No disponible
esp.SystemMessage3_3=Memoria
esp.SystemMessage3_4=Sonido
esp.SystemMessage3_4_1=No disponible
esp.SystemMessage3_5=Sistema operativo
esp.SystemMessage3_5_1=Desconocido
esp.SystemMessage3_6=Clave
esp.SystemMessage3_6_1=Crítico
esp.SystemMessage3_6_2=Malo
esp.SystemMessage3_6_3=Promedio
esp.SystemMessage3_6_4=Bueno
esp.SystemMessage3_6_5=Excelente
esp.SystemMessage3_6_6=Requerido
esp.SystemMessage3_7=Calificación Puntuación
esp.InformationMessage1_1=Informaciòn
esp.InformationMessage2_1=Por favor lea la siguiente información antes de continuar.
esp.SelectComponentMessage1_1=Componentes
esp.SelectComponentMessage2_1=Seleccione los componentes que desea instalar, Elimina los componentes que no desea instalar.%nHaga clic en Siguiente cuando esté listo para continuar.
esp.SelectComponentMesesge3=Instalar %1
esp.SelectDirMessage1_1=Destino
esp.SelectDirMessage2_1=El asistente instalará %1 en la carpeta siguiente. Para continuar, haga clic en Siguiente.%nSi desea seleccionar una carpeta diferente, haga clic en Examinar.
esp.SelectDirMessage4_1=Espacio total:
esp.SelectDirMessage4_2=Espacio libre:
esp.SelectDirMessage4_3=Espacio recomendado:
esp.SelectDirMessage4_4=Espacio requerido:
esp.SelectDirMessage5_1=Al menos %1 MB Se requiere de espacio libre en el disco.
esp.SelectDirMessage5_2=El asistente instalarà %1 en la siguiente carpeta .
esp.SelectGroupMessage1_1=Grupo
esp.SelectGroupMessage2_1=El asistente creará los accesos directos del juego en la siguiente carpeta del menú de Inicio.%nSi desea seleccionar una carpeta diferente, haga clic en Examinar.
esp.SelectGroupMessage4_1=No cree una carpeta del menú Inicio
esp.SelectGroupMessage4_2=Crear un icono en el escritorio
esp.SelectGroupMessage5_1=El asistente crearà los accesos directos de %1 en la siguiente carpeta del menú de Inicio.
esp.PreviewMessage1_1=vista previa
esp.PreviewMessage2_1=Captura
esp.SelectPriorityMessage1_1=Rendimiento
esp.SelectPriorityMessage2_1=Seleccione la prioridad que le gustaría usar durante la instalación.%nLa selecciòn de prioridad afectarà el rendimiento del sistema.
esp.SelectPriorityMessage3_1=Baja prioridad
esp.SelectPriorityMessage3_2=Por debajo de la prioridad normal
esp.SelectPriorityMessage3_3=Prioridad normal
esp.SelectPriorityMessage3_4=Por encima de la Prioridad Normal
esp.SelectPriorityMessage3_5=Alta prioridad
esp.SelectPriorityMessage3_6=Prioridad en tiempo real
esp.SelectTaskMessage1_1=Tareas
esp.SelectTaskMessage2_1=Seleccione las tareas adicionales que le gustaría que se realicen durante la instalación, a continuación, haga clic en Instalar.
esp.SelectTaskMesesge3=Instalar %1
esp.ReadyMessage1_1=Listo
esp.ReadyMessage2_1=El asistente ya está listo para comenzar a instalar %1 en su ordenador.%n%nHaga clic en Instalar para continuar con la instalación, o haga clic en Atrás si desea revisar o cambiar cualquier configuración.
esp.DownloadMessage1_1=Descarga
esp.DownloadMessage2_1=Por favor espera, mientras que la configuración descarga archivos adicionales...
esp.InstallMessage1_1=Instalar
esp.InstallMessage2_1=Por favor, espere mientras se instala %1 en su ordenador.
esp.InstallMessage2_2=Por favor inserta el disco: %1
esp.InstallMessage3_1=Transcurrido:
esp.InstallMessage3_2=Restante:
esp.InstallMessage3_3_1=Extrayendo %1
esp.InstallMessage3_3_2=Instalando %1
esp.InstallMessage3_3_3=Deshaciendo cambios...
esp.InstallMessage3_4=%1 Completo
esp.InstallMessage3_5=Por favor inserta el disco: %1
esp.FinishMessage1_1=Finalizado
esp.FinishMessage2_1=El asistente de instalación ha terminado de instalar %1 en su ordenador.%n%nHaga clic en Finalizar para cerrar el asistente de instalación.
esp.FinishMessage2_2=El asistente ha encontrado un error en el proceso de instalaciòn, por favor vuelva a iniciar el asistente.
esp.UninstallMessage1_1=Desinstalar
esp.UninstallMessage2_1=Espere mientras el asistente desinstala %1 desde el ordenador.
esp.UninstallMessage3_1=%1 Completo
esp.UninstallMessage3_2=Desinstalando...
esp.OtherMessage1_1=El asistente no pudo iniciar.
esp.OtherMessage1_2=Còdigo de error:
esp.OtherMessage1_3=Por favor espere mientras el instalador ubica los archivos de instalación...
esp.OtherMessage1_4=Los archivos de instalación están dañados o no son válidos, por favor contacta con el publicador.
esp.OtherMessage2_1=Inicializando asistente...
esp.OtherMessage2_2=Aplicaciòn:
esp.OtherMessage2_3=Publicador:
esp.OtherMessage3_1=%1 - Desinstalaciòn
esp.OtherMessage3_2=%1 - Instalaciòn
esp.OtherMessage4_1=Music: Apagado
esp.OtherMessage4_2=Music: Encendido
esp.OtherMessage4_3=Video: Apagado
esp.OtherMessage4_4=Video: Encendido
esp.OtherMessage5_1=Quick%nInstallation
esp.OtherMessage5_2=Custom%nInstallation
esp.OtherMessage5_3=Instalar
esp.OtherMessage5_4=Configurar
esp.OtherMessage6_1=Iniciar
esp.OtherMessage6_2=Configuraciòn
esp.OtherMessage6_3=Desinstalar
esp.OtherMessage6_4=Jugar
esp.OtherMessage7_1=Gráficos de ATI/nVidia
esp.OtherMessage7_2=Gráficos de Intel
esp.OtherMessage7_3=Gráficos de SiS/VIA
esp.OtherMessage7_4=Memoria
esp.ConversionUnit1_1=segundo
esp.ConversionUnit1_2=segundos
esp.ConversionUnit2_1=minuto
esp.ConversionUnit2_2=minutos
esp.ConversionUnit3_1=hora
esp.ConversionUnit3_2=horas
esp.ConversionUnit4_1=MB
esp.ConversionUnit4_2=GB
esp.ConversionUnit4_3=TB
esp.ConversionUnit5_1=MHz
esp.ConversionUnit5_2=GHz
esp.ConversionUnit6_1=Bit
esp.CommonMessages1_1=libre
esp.CommonMessages1_2=Usado
esp.CommonMessages1_3=Total
esp.CommonMessages2_1=de
esp.CommonMessages3_1=con %1
esp.CommonMessages3_2=Haga clic en Aceptar para continuar o en Cancelar para salir de la instalación.
esp.CreditsMessage1_1=Crèditos
esp.CreditsMessage2_1=Esta instalaciòn fuè creada por %1.
esp.CreditsMessage2_2=%1 Creado por %2
esp.CreditsMessage2_3=Instalaciòn creada por %1
esp.IDP_KBs=KB/s
esp.IDP_MBs=MB/s
esp.IDP_X_of_X=%.2f of %.2f
esp.IDP_KB=KB
esp.IDP_MB=MB
esp.IDP_GB=GB
esp.IDP_Initializing=Inicializando...
esp.IDP_GettingFileInformation=Obteniendo informacion de archivos...
esp.IDP_StartingDownload=Iniciando descarga...
esp.IDP_Connecting=Conectando...
esp.IDP_Downloading=Descargando...
esp.IDP_DownloadComplete=Descarga completa
esp.IDP_DownloadFailed=Descarga fallida
esp.IDP_CannotConnect=No se puede conectar
esp.IDP_CancellingDownload=Cancelando descarga...
esp.IDP_Unknown=Desconocido
esp.IDP_DownloadCancelled=Descarga cancelada
esp.IDP_RetryNext=Descarga fallida, Por favor chequea tu conexiòn y reinicia el asistente de instalaciòn para continuar.
esp.IDP_RetryCancel=Descarga fallida, Por favor chequea tu conexiòn y reinicia el asistente de instalaciòn para continuar.
esp.IDP_HTTPError_X=HTTP error %d
esp.IDP_400=solicitud incorrecta (400)
esp.IDP_401=Acceso denegado (401)
esp.IDP_404=Archivo no encontrado (404)
esp.IDP_500=Error interno del servidor (500)
esp.IDP_502=Puerta de enlace no válida (502)
esp.IDP_503=Servicio no disponible temporalmente (503)
esp.Message1=Extrayendo %1...
esp.Message2=Fusionando %1...
esp.Message3=Decodificando %1...
esp.Message4=%1 No se ha encontrado.
esp.Message5=Por favor, inserte el disco %1 con %2 archivo
esp.Message6=Buscar archivo requerido?
#endif

;Turkish
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "Turkish", "") == "1"
tur.AutorunMessage1_1=%1 - Kurulum
tur.AutorunMessage2_1=Başlat
tur.AutorunMessage2_2=Kur
tur.AutorunMessage2_3=Kaldır
tur.AutorunMessage2_4=Yapılandırma
tur.AutorunMessage2_5=Exit
tur.AutorunMessage2_6_1=Music: Off
tur.AutorunMessage2_6_2=Music: On
tur.AutorunMessage2_7=Browse Disc
tur.AutorunMessage2_8=Readme
tur.AutorunMessage2_9=Manual
tur.AutorunMessage2_10=Website
tur.AutorunMessage2_11=Update
tur.WelcomeMessage1_1=Hoşgeldiniz.
tur.WelcomeMessage2_1=%1 Kurulum Sihirbazına Hoşgeldiniz%n%nBu kurulum %1 programını yükleyecektir.%n%nDevam etmeden önce diğer tüm uygulamaları kapatmanız önerilir.%n%nDevam etmek için Yükleme türü'ne, çıkmak için İptal'e basın.
tur.SerialMessage1_1=Serial
tur.SerialMessage2_1=Type your product serial number%n%nThe %1 serial key can be found on installation disc holder inside the installation package.%n%nClick next when ready to continue with the installation.
tur.SerialMessage3_1=The serial you entered is not correct. Please try again.
tur.LicenseMessage1_1=Lisans
tur.LicenseMessage2_1=Aşağıdaki Lisans Anlaşmasını okuyunuz. Kuruluma devam etmeden önce bu sözleşmenin şartlarını kabul etmeniz gerekir.
tur.LicenseMessage3_1=Şartları kabul ediyorum.
tur.SystemMessage1_1=Sistem
tur.SystemMessage2_1=Aşağıdaki donanım sisteminizde algılandı%nSisteminiz için bir kılavuz olarak aşağıdaki anahtarı kullanın.
tur.SystemMessage3_1=İşlemci
tur.SystemMessage3_2=Video
tur.SystemMessage3_2_1=Yok
tur.SystemMessage3_3=Hafıza
tur.SystemMessage3_4=Sound
tur.SystemMessage3_4_1=Yok
tur.SystemMessage3_5=İşletim Sistemi
tur.SystemMessage3_5_1=Bilinmiyor
tur.SystemMessage3_6=Anahtar
tur.SystemMessage3_6_1=Kritik
tur.SystemMessage3_6_2=Kötü
tur.SystemMessage3_6_3=Ortalama
tur.SystemMessage3_6_4=Güzel
tur.SystemMessage3_6_5=Mükemmel
tur.SystemMessage3_6_6=Gereken
tur.SystemMessage3_7=Değerlendirme Puanı
tur.InformationMessage1_1=Bilgi
tur.InformationMessage2_1=Devam etmeden önce aşağıdaki önemli bilgileri okuyunuz.
tur.SelectComponentMessage1_1=Bileşenler
tur.SelectComponentMessage2_1=Yüklemek istediğiniz bileşenleri seçin, yüklemek istemediğiniz bileşenleri temizleyin.%nDevam etmeye hazır olduğunuzda İleri'ye basın.
tur.SelectComponentMesesge3=Kur %1
tur.SelectDirMessage1_1=Hedef
tur.SelectDirMessage2_1=%1 aşağıdaki dizine kurulacaktır. Devam etmek için İleri'ye basın.%nEğer farklı bir dizin seçmek isterseniz, Gözat'ı tıklatın.
tur.SelectDirMessage4_1=Toplam Alan:
tur.SelectDirMessage4_2=Boş Alan:
tur.SelectDirMessage4_3=Önerilen Alan:
tur.SelectDirMessage4_4=Gerekli Alan:
tur.SelectDirMessage5_1=At least %1 MB of free disk space is required.
tur.SelectDirMessage5_2=Setup will install %1 into the following folder.
tur.SelectGroupMessage1_1=Grup
tur.SelectGroupMessage2_1=Kur, Başlat Menüsü'ne programın kısayolları yaratacak.%nEğer farklı bir dizin seçmek isterseniz, Gözat'ı tıklatın.
tur.SelectGroupMessage4_1=Başlat Menüsü klasörü oluştur
tur.SelectGroupMessage4_2=Masaüstü simgesi oluştur
tur.SelectGroupMessage5_1=Setup will create %1 shortcuts in the following Start Menu folder.
tur.PreviewMessage1_1=Preview
tur.PreviewMessage2_1=Shot
tur.SelectPriorityMessage1_1=Performans
tur.SelectPriorityMessage2_1=Kurulum önceliğini seçin.%nÖncelikli seçim sistem performansını etkileyecektir.
tur.SelectPriorityMessage3_1=Düşük Öncelik
tur.SelectPriorityMessage3_2=Normal Altı Öncelik
tur.SelectPriorityMessage3_3=Normal Öncelik
tur.SelectPriorityMessage3_4=Normal Üstü Öncelik
tur.SelectPriorityMessage3_5=Yüksek Öncelik
tur.SelectPriorityMessage3_6=Gerçek Zamanlı
tur.SelectTaskMessage1_1=Görevler
tur.SelectTaskMessage2_1=Ek kurulum görevi seçip ardından Kur'a basın.
tur.SelectTaskMesesge3=Kur %1
tur.ReadyMessage1_1=Hazır
tur.ReadyMessage2_1=%1 kurulumu hazır.%n%nKurulumu başlatmak için Kur'a, veya seçenekleri değiştirmek için Geri'ye basın.
tur.InstallMessage1_1=Kur
tur.InstallMessage2_1=Lütfen %1 bilgisayarınıza kurulurken bekleyiniz.
tur.InstallMessage2_2=Diski takın: %1
tur.InstallMessage3_1=Geçen süre:
tur.InstallMessage3_2=Kalan süre:
tur.InstallMessage3_3_1=Extracting %1
tur.InstallMessage3_3_2=Kuruluyor %1
tur.InstallMessage3_3_3=Değişiklikler geri alınıyor...
tur.InstallMessage3_4=%1 Tamamlandı
tur.InstallMessage3_5=Diski takın: %1
tur.FinishMessage1_1=Son
tur.FinishMessage2_1=%1 kurulumu tamamlandı.%n%nKur'u kapatmak için Son'u tıklatın.
tur.FinishMessage2_2=Kurulum sırasında hata oluştu. Lütfen kurulumu yeniden çalıştırın.
tur.UninstallMessage1_1=Kaldır
tur.UninstallMessage2_1=Lütfen %1 bilgisayarınızdan kaldırılırken beleyiniz.
tur.UninstallMessage3_1=%1 Tamamlandı
tur.UninstallMessage3_2=Kaldırılıyor...
tur.OtherMessage1_1=Kur başlatılamadı.
tur.OtherMessage1_2=Hata kodu:
tur.OtherMessage1_3=Please wait while installer gathers installation files...
tur.OtherMessage1_4=Installation files are damaged or invalid, please contact publisher.
tur.OtherMessage2_1=Kur başlatılıyor...
tur.OtherMessage2_2=Uygulama:
tur.OtherMessage2_3=Yayımcı:
tur.OtherMessage3_1=%1 - Kaldırma
tur.OtherMessage3_2=%1 - Yükleme
tur.OtherMessage4_1=Müzik: Kapalı
tur.OtherMessage4_2=Müzik: Açık
tur.OtherMessage5_1=Hızlı%nKurulum
tur.OtherMessage5_2=Özel%nKurulum
tur.OtherMessage5_3=Install
tur.OtherMessage5_4=Configure
tur.OtherMessage6_1=Başlat
tur.OtherMessage6_2=Yapılandırma
tur.OtherMessage6_3=Kaldır
tur.OtherMessage7_1=ATI/nVidia Dedicated Graphics
tur.OtherMessage7_2=Intel Integrated Graphics
tur.OtherMessage7_3=SiS/VIA Integrated Graphics
tur.OtherMessage7_4=Memory
tur.ConversionUnit1_1=saniye
tur.ConversionUnit1_2=saniye
tur.ConversionUnit2_1=dakika
tur.ConversionUnit2_2=dakika
tur.ConversionUnit3_1=saat
tur.ConversionUnit3_2=saat
tur.ConversionUnit4_1=MB
tur.ConversionUnit4_2=GB
tur.ConversionUnit4_3=TB
tur.ConversionUnit5_1=MHz
tur.ConversionUnit5_2=GHz
tur.ConversionUnit6_1=Bit
tur.CommonMessages1_1=Free
tur.CommonMessages1_2=Used
tur.CommonMessages1_3=Total
tur.CommonMessages2_1=of
tur.CommonMessages3_1=with %1
tur.CommonMessages3_2=Click Ok to continue or click cancel to abort installation.
tur.CreditsMessage1_1=Credits
tur.CreditsMessage2_1=This installation was built with %1.
tur.CreditsMessage2_2=%1 created by %2
tur.CreditsMessage2_3=Installation created by %1
#endif

;Ukrainian
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "Ukrainian", "") == "1"
ukr.AutorunMessage1_1=%1 - Встановлення
ukr.AutorunMessage2_1=Запустити
ukr.AutorunMessage2_2=Встановити
ukr.AutorunMessage2_3=Видалити
ukr.AutorunMessage2_4=Налаштування
ukr.AutorunMessage2_5=Вихід
ukr.AutorunMessage2_6_1=Музика: Увім.
ukr.AutorunMessage2_6_2=Музика: Вимк.
ukr.AutorunMessage2_7=Огляд диску
ukr.AutorunMessage2_8=Прочитай
ukr.AutorunMessage2_9=Інструкції
ukr.AutorunMessage2_10=Сайт
ukr.AutorunMessage2_11=Update
ukr.WelcomeMessage1_1=Привітання
ukr.WelcomeMessage2_1=Ласкаво просимо до Майстру встановлення %1%n%nМайстер встановить %1 на комп'ютер.%n%nРекомендується закрити всі інші програми, перш ніж продовжити.%n%nВиберіть тип встановлення, щоб продовжити, або натисніть Скасувати, щоб вийти з програми встановлення.
ukr.SerialMessage1_1=Ключ продукту
ukr.SerialMessage2_1=Введіть Ключ продукту%n%nКлюч %1 можна знайти на інсталяційному диску всередині упаковки.%n%nНатисніть кнопку Далі, коли будете готові продовжити встановлення.
ukr.SerialMessage3_1=Ви неправильно ввели Ключ продукту. Будь ласка, спробуйте ще раз.
ukr.LicenseMessage1_1=Ліцензійна угода
ukr.LicenseMessage2_1=Будь ласка, прочитайте ліцензійну угоду. Ви повинні прийняти умови цієї угоди, перш ніж продовжити встановлення.
ukr.LicenseMessage3_1=Я приймаю умови угоди
ukr.SystemMessage1_1=Системні вимоги
ukr.SystemMessage2_1=Програма встановлення виявила наступні необхідні компоненти%Використовуйте інструкцію, для того щоб дізнатися наскільки Ваша система відповідає вимогам.
ukr.SystemMessage3_1=Процесор
ukr.SystemMessage3_2=Відеокарта
ukr.SystemMessage3_2_1=Неможливо виявити пристрій
ukr.SystemMessage3_3=Оперативна пам'ять
ukr.SystemMessage3_4=Звук
ukr.SystemMessage3_4_1=Неможливо виявити пристрій
ukr.SystemMessage3_5=Операційна система
ukr.SystemMessage3_5_1=Неможливо виявити пристрій
ukr.SystemMessage3_6=Інструкція
ukr.SystemMessage3_6_1=Критично
ukr.SystemMessage3_6_2=Погано
ukr.SystemMessage3_6_3=Непогано
ukr.SystemMessage3_6_4=Добре
ukr.SystemMessage3_6_5=Пречудово
ukr.SystemMessage3_6_6=Необхідно
ukr.SystemMessage3_7=Оцінка
ukr.InformationMessage1_1=Інформація
ukr.InformationMessage2_1=Будь ласка, прочитайте наступну важливу інформацію, перш ніж продовжити.
ukr.SelectComponentMessage1_1=Компоненти
ukr.SelectComponentMessage2_1=Виберіть компоненти які ви бажаєте встановити, зніміть відмітку з компонентів які ви не бажаєте встановлювати.%nНатисніть Далі, щоб продовжити.
ukr.SelectComponentMesesge3=Встановлення %1
ukr.SelectDirMessage1_1=Папка установки
ukr.SelectDirMessage2_1=Програма встановить %1 у наступну папку. Натисніть Далі, щоб продовжити.%nЯкщо ви бажаєте вибрати іншу папку, натисніть Огляд.
ukr.SelectDirMessage4_1=Повний дисковий простір:
ukr.SelectDirMessage4_2=Доступний дисковий простір:
ukr.SelectDirMessage4_3=Рекомендований дисковий простір:
ukr.SelectDirMessage4_4=Необхідний дисковий простір:
ukr.SelectDirMessage5_1=At least %1 MB of free disk space is required.
ukr.SelectDirMessage5_2=Setup will install %1 into the following folder.
ukr.SelectGroupMessage1_1=Пуск
ukr.SelectGroupMessage2_1=Програма встановлення створить ярлики у наступній папці меню Пуск.%nЯкщо ви бажаєте вибрати іншу папку, натисніть Огляд.
ukr.SelectGroupMessage4_1=Не створювати папку в меню Пуск
ukr.SelectGroupMessage4_2=Створити ярлики на Робочому столі
ukr.SelectGroupMessage5_1=Setup will create %1 shortcuts in the following Start Menu folder.
ukr.PreviewMessage1_1=Попередній перегляд
ukr.PreviewMessage2_1=Знімок екрану
ukr.SelectPriorityMessage1_1=Продуктивність
ukr.SelectPriorityMessage2_1=Виберіть пріорітет встановлення.%nВибір пріорітета відобразиться на продуктивності системи.
ukr.SelectPriorityMessage3_1=Низький Пріорітет
ukr.SelectPriorityMessage3_2=Нижче Середнього
ukr.SelectPriorityMessage3_3=Середній Пріорітет
ukr.SelectPriorityMessage3_4=Вижче Середнього
ukr.SelectPriorityMessage3_5=Високий Пріорітет
ukr.SelectPriorityMessage3_6=Реального Часу
ukr.SelectTaskMessage1_1=Завдання
ukr.SelectTaskMessage2_1=Виберіть додаткові завдання які програма встановлення повинна виконати, потім натисніть Встановити.
ukr.SelectTaskMesesge3=Встановити %1
ukr.ReadyMessage1_1= Все готово
ukr.ReadyMessage2_1=Програма готова розпочати встановлення %1 на ваш комп’ютер.%n%nНатисніть Встановити для продовження встановлення, або Назад, якщо ви бажаєте переглянути або змінити налаштування встановлення.
ukr.InstallMessage1_1=Встановлення
ukr.InstallMessage2_1=Будь ласка, зачекайте, поки %1 встановиться на ваш комп'ютер.
ukr.InstallMessage2_2=Будь ласка, вставте диск: %1
ukr.InstallMessage3_1=Пройшло:
ukr.InstallMessage3_2=Залишилось:
ukr.InstallMessage3_3_1=Розпакування %1
ukr.InstallMessage3_3_2=Встановлення %1
ukr.InstallMessage3_3_3=Скасування змін...
ukr.InstallMessage3_4=%1 Виконано
ukr.InstallMessage3_5=Будь ласка, вставте диск: %1
ukr.FinishMessage1_1=Завершення
ukr.FinishMessage2_1=Встановлення %1 на ваш комп’ютер закінчено.%n%nНатисніть Готово для виходу з програми встановлення.
ukr.FinishMessage2_2=Встановлення не завершено. Будь ласка, усуньте проблему і відкрийте програму встановлення знову.
ukr.UninstallMessage1_1=Видалення
ukr.UninstallMessage2_1=Будь ласка, зачекайте, поки %1 видалиться з вашого комп'ютера.
ukr.UninstallMessage3_1=%1 Виконано
ukr.UninstallMessage3_2=Видалення...
ukr.OtherMessage1_1=Програма встановлення не змогла ініціалізуватися.
ukr.OtherMessage1_2=Код помилки:
ukr.OtherMessage1_3=Please wait while installer gathers installation files...
ukr.OtherMessage1_4=Installation files are damaged or invalid, please contact publisher.
ukr.OtherMessage2_1=Програма встановлення ініціалізується...
ukr.OtherMessage2_2=Прилаштунок:
ukr.OtherMessage2_3=Видавець:
ukr.OtherMessage3_1=%1 - Видалення
ukr.OtherMessage3_2=%1 - Встановлення
ukr.OtherMessage4_1=Музика: Вимк.
ukr.OtherMessage4_2=Музика: Увім.
ukr.OtherMessage5_1=Стандартне%nвстановлення
ukr.OtherMessage5_2=Вибіркове%nвстановлення
ukr.OtherMessage5_3=Install
ukr.OtherMessage5_4=Configure
ukr.OtherMessage6_1=Завантажувач
ukr.OtherMessage6_2=Конфігурація
ukr.OtherMessage6_3=Видалення
ukr.OtherMessage7_1=ATI/nVidia Дискретна Графіка
ukr.OtherMessage7_2=Intel Інтегрована Графіка
ukr.OtherMessage7_3=SiS/VIA Інтегрована Графіка
ukr.OtherMessage7_4=Пам'ять
ukr.ConversionUnit1_1=секунда
ukr.ConversionUnit1_2=секунд
ukr.ConversionUnit2_1=хвилина
ukr.ConversionUnit2_2=хвилин
ukr.ConversionUnit3_1=година
ukr.ConversionUnit3_2=годин
ukr.ConversionUnit4_1=МБ
ukr.ConversionUnit4_2=ГБ
ukr.ConversionUnit4_3=ТБ
ukr.ConversionUnit5_1=МГц
ukr.ConversionUnit5_2=ГГц
ukr.ConversionUnit6_1=Біт
ukr.CommonMessages1_1=Вільно
ukr.CommonMessages1_2=Використано
ukr.CommonMessages1_3=Всього
ukr.CommonMessages2_1=з
ukr.CommonMessages3_1=with %1
ukr.CommonMessages3_2=Click Ok to continue or click cancel to abort installation.
ukr.CreditsMessage1_1=Credits
ukr.CreditsMessage2_1=This installation was built with %1.
ukr.CreditsMessage2_2=%1 created by %2
ukr.CreditsMessage2_3=Installation created by %1
#endif

;Vietnamese
#if ReadIni(SourcePath + "\Temp\Setup.ini", "Languages", "Vietnamese", "") == "1"
vit.AutorunMessage1_1=%1 - Tiến trình cài đặt
vit.AutorunMessage2_1=Khởi chạy
vit.AutorunMessage2_2=Cài đặt
vit.AutorunMessage2_3=Gỡ bỏ
vit.AutorunMessage2_4=Thiết lập
vit.AutorunMessage2_5=Thoát
vit.AutorunMessage2_6_1=Nhạc: Tắt
vit.AutorunMessage2_6_2=Nhạc: Mở
vit.AutorunMessage2_7=Duyệt đĩa
vit.AutorunMessage2_8=Đọc nội dung
vit.AutorunMessage2_9=Sổ tay
vit.AutorunMessage2_10=Trang web
vit.AutorunMessage2_11=Nâng cấp
vit.WelcomeMessage1_1=Chào mừng
vit.WelcomeMessage2_1=Chào mừng đến với tiến trình cài đặt %1 %n%nTiến trình này sẽ cài đặt %1 trên máy tính của bạn.%n%nBạn nên đóng tất cả các ứng dụng khác trước khi tiếp tục.%n%nChọn kiểu cài đặt để tiếp tục, hoặc chọn Hủy bỏ để thoát cài đặt.
vit.SerialMessage1_1=Số Sêri
vit.SerialMessage2_1=Nhập vào dòng số sản phẩm của bạn%n%nMã số của %1 có thể được tìm thấy trên đĩa cài đặt hoặc được giữ bên trong các gói cài đặt.%n%nNhấn vào Đi tới khi đã sẳn sàng đễ tiếp tục cài đặt.
vit.SerialMessage3_1=Số Sêri mà bạn đã nhập vào là không đúng. Hãy cố gắng thử lại.
vit.LicenseMessage1_1=Giấy phép
vit.LicenseMessage2_1=Xin vui lòng đọc các thỏa thuận cấp phép sau đây. Bạn phải chấp nhận các điều khoản của các thỏa thuận này trước khi tiếp tục cài đặt.
vit.LicenseMessage3_1=Tôi chấp nhận các thỏa thuận cấp phép
vit.SystemMessage1_1=Hệ thống
vit.SystemMessage2_1=Những phần cứng sau đây được phát hiện trên hệ thống của bạn%nSử dụng các đánh giá dưới đây như là một hướg dẫn cho hệ thống của bạn
vit.SystemMessage3_1=Bộ xử lý
vit.SystemMessage3_2=Đồ họa
vit.SystemMessage3_2_1=Không khả dụng
vit.SystemMessage3_3=Bộ nhớ
vit.SystemMessage3_4=Âm thanh
vit.SystemMessage3_4_1=Không khả dụng
vit.SystemMessage3_5=Hệ điều hành
vit.SystemMessage3_5_1=Chưa biết
vit.SystemMessage3_6=Đánh giá
vit.SystemMessage3_6_1=Không đạt
vit.SystemMessage3_6_2=Quá tệ
vit.SystemMessage3_6_3=Trung bình
vit.SystemMessage3_6_4=Tốt
vit.SystemMessage3_6_5=Xuất sắc
vit.SystemMessage3_6_6=Được yêu cầu
vit.SystemMessage3_7=Điểm đánh giá
vit.SelectDirMessage1_1=Điểm đến
vit.InformationMessage1_1=Thông tin
vit.InformationMessage2_1=Xin vui lòng đọc các thông tin quan trọng sau đây trước khi tiếp tục.
vit.SelectComponentMessage1_1=Các thành phần
vit.SelectComponentMessage2_1=Chọn các thành phần bạn muốn cài đặt, xóa các thành phần bạn không muốn cài đặt.%nNhấn Đi tới khi đã sẵn sàng để tiếp tục.
vit.SelectComponentMesesge3=Cài đặt %1
vit.SelectDirMessage2_1=Trình cài đặt sẽ cài %1 vào thư mục sau đây. Đễ tiếp tục, nhấn Đi tới.%nNếu bạn muốn chọn một thư mục khác, nhấn nút Duyệt.
vit.SelectDirMessage4_1=Tổng dung lương:
vit.SelectDirMessage4_2=Dung lượng còn trống:
vit.SelectDirMessage4_3=Dung lượng đề nghị:
vit.SelectDirMessage4_4=Dung lượng yêu cầu:
vit.SelectDirMessage5_1=Tối thiểu %1 MB của dung lượng ổ đĩa còn trống.
vit.SelectDirMessage5_2=Trình cài đặt sẽ cài %1 vào thư mục sau đây.
vit.SelectGroupMessage1_1=Nhóm
vit.SelectGroupMessage2_1=Trình cài đặt sẽ tạo các biểu tượng chạy tắt của chương trình vào thư mục Star Menu.%nNếu bạn muốn chọn thư mục khác, Nhấn nút Duyệt.
vit.SelectGroupMessage4_1=Không tạo trong thư mục Star Menu
vit.SelectGroupMessage4_2=Tạo biểu tượng trên Desktop
vit.SelectGroupMessage5_1=Trình cài đặt sẽ tạo biểu tượng chạy tắt của %1 trong thư mục Start Menu sau đây.
vit.PreviewMessage1_1=Xem trước
vit.PreviewMessage2_1=Bắn
vit.SelectPriorityMessage1_1=Thực hiện
vit.SelectPriorityMessage2_1=Chọn độ ưu tiên bạn muốn thiết lập để sử dụng trong quá trình cài đặt.%nLựa chọn độ ưu tiên sẽ ảnh hưởng đến tốc độ thực thi của hệ thống.
vit.SelectPriorityMessage3_1=Ưu tiên thấp
vit.SelectPriorityMessage3_2=Ưu tiên dưới mức bình thường
vit.SelectPriorityMessage3_3=Ưu tiên bình thường
vit.SelectPriorityMessage3_4=Ưu tiên trên mức bình thường
vit.SelectPriorityMessage3_5=Ưu tiên cao
vit.SelectPriorityMessage3_6=Ưu tiên thời gian thực
vit.SelectTaskMessage1_1=Các tác vụ
vit.SelectTaskMessage2_1=Chọn các tác vụ bổ sung mà bạn muốn cài đặt để thực hiện trong quá trình cài, sau đó nhấn Cài đặt.
vit.SelectTaskMesesge3=Cài đặt %1
vit.ReadyMessage1_1=Sẵn sàng
vit.ReadyMessage2_1=Trình cài đặt đã sẵn sàng để bắt đầu tiến trình cài đặt %1 trên máy tính của bạn.%n%nNhấn vào Cài đặt để tiếp tục, hoặc nhấn vào Trở lại nếu bạn muốn xem lại hoặc thay đổi bất kỳ các thiết lập nào.
vit.InstallMessage1_1=Cài đặt
vit.InstallMessage2_1=Xin vui lòng chờ trong khi cài %1 trên máy tính của bạn.
vit.InstallMessage2_2=Xin hãy chèn đĩa: %1
vit.InstallMessage3_1=Đã trôi qua:
vit.InstallMessage3_2=Còn lại:
vit.InstallMessage3_3_1=Giải nén %1
vit.InstallMessage3_3_2=Đang cài đặt %1
vit.InstallMessage3_3_3=Đang trả về các sự thay đổi...
vit.InstallMessage3_4=%1 Hoàn thành
vit.InstallMessage3_5=Xin hãy chèn đĩa: %1
vit.FinishMessage1_1=Hoàn tất
vit.FinishMessage2_1=Đã hoàn tất quá trình cài đặt %1 trên máy tính của bạn.%n%nNhấn vào Hoàn tất để đóng trình cài đặt.
vit.FinishMessage2_2=Đã gặp lỗi trong khi cài đặt, Xin hãy cài đặt lại.
vit.UninstallMessage1_1=Gỡ bỏ cài đặt
vit.UninstallMessage2_1=Xin hãy chờ trong khi gỡ bỏ cài đặt %1 từ máy tính của bạn.
vit.UninstallMessage3_1=%1 Hoàn thành
vit.UninstallMessage3_2=Đang gỡ bỏ cài đặt...
vit.OtherMessage1_1=Đã thất bại khởi động tiến trình cài đặt.
vit.OtherMessage1_2=Mã lỗi:
vit.OtherMessage2_1=Đang khởi tạo trình cài đặt...
vit.OtherMessage2_2=Ứng dụng:
vit.OtherMessage2_3=Nhà phát hành:
vit.OtherMessage3_1=%1 - Gỡ bỏ cài đặt
vit.OtherMessage3_2=%1 - Cài đặt
vit.OtherMessage4_1=Nhạc: Tắt
vit.OtherMessage4_2=Nhạc: Mở
vit.OtherMessage4_3=Video: Tắt
vit.OtherMessage4_4=Video: Mở
vit.OtherMessage5_1=Cài nhanh%n
vit.OtherMessage5_2=Tùy chỉnh%ncàiđặt
vit.OtherMessage5_3=Cài đặt
vit.OtherMessage5_4=Cấu hình
vit.OtherMessage6_1=Khởi chạy
vit.OtherMessage6_2=Thiết lập
vit.OtherMessage6_3=Gỡ bỏ
vit.OtherMessage7_1=Card đồ họa chuyên dụng ATI/nVidia
vit.OtherMessage7_2=Đã tích hợp Card đồ họa Intel
vit.OtherMessage7_3=Đã tích hợp Card đồ họa SiS/VIA
vit.OtherMessage7_4=Bộ nhớ
vit.ConversionUnit1_1=giây
vit.ConversionUnit1_2=giây
vit.ConversionUnit2_1=phút
vit.ConversionUnit2_2=phút
vit.ConversionUnit3_1=giờ
vit.ConversionUnit3_2=giờ
vit.ConversionUnit4_1=MB
vit.ConversionUnit4_2=GB
vit.ConversionUnit4_3=TB
vit.ConversionUnit5_1=MHz
vit.ConversionUnit5_2=GHz
vit.ConversionUnit6_1=Bit
vit.CommonMessages1_1=Còn trống
vit.CommonMessages1_2=Đã dùng
vit.CommonMessages1_3=Tổng cộng
vit.CommonMessages2_1=của
vit.CommonMessages3_1=với %1
vit.CommonMessages3_2=Nhấn vào Ok đễ tiếp tục hoặc nhấn Hủy bỏ để hủy bỏ cài đặt.
vit.CreditsMessage1_1=Lời Cảm ơn
vit.CreditsMessage2_1=Trình cài đặt này được xây dựng bằng %1.
vit.CreditsMessage2_2=%1 được tạo ra bởi %2
vit.CreditsMessage2_3=Trình cài đặt được tạo bởi %1
#endif
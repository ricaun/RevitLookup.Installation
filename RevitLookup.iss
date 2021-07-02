; RevitLookup.iss
; 
; RevitLookup - Plugin Revit.
;
; created 26 06 2021
; by Luiz Henrique Cassettari 

#define AppId "{356CDA5A-E6C5-4c2f-A9EF-B3222116B8C8}"
#define AppName "RevitLookup"
#define AppVersion "2022.0.0.14"
#define AppPublisher "ricaun"
#define AppComments "RevitLookup - Plugin Revit"
#define AppBundle "RevitLookup.bundle"
#define AppURL "https://github.com/jeremytammik/RevitLookup"
#define AppEmail ""

[Setup]
SignTool=MySign $f
SignedUninstaller=yes

AppId={{#AppId}}
AppName={#AppName}
AppVersion={#AppVersion}
AppPublisher={#AppPublisher}
AppComments={#AppComments}

VersionInfoVersion={#AppVersion}

AppPublisherURL={#AppURL}
AppSupportURL={#AppURL}
AppUpdatesURL={#AppURL}

DefaultDirName="C:\ProgramData\Autodesk\ApplicationPlugins\{#AppBundle}"
DisableWelcomePage=no
DisableDirPage=yes
DisableProgramGroupPage=yes
OutputBaseFilename="{#AppName} {#AppVersion}"
UninstallDisplayName="{#AppName}"

LicenseFile=License.rtf

; ICON CONFIGURATION
SetupIconFile=icon.ico
UninstallDisplayIcon={app}\unins000.exe

; Size: 55x55
WizardSmallImageFile=icon55.bmp   
; Size: 164x314
WizardImageFile = icon164.bmp

; Languages
ShowLanguageDialog=no

[UninstallDelete]
Type: filesandordirs; Name: "{app}\*.*"

[Dirs]
Name: {app}; Permissions: users-full

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl";

[Files]
 Source: "{#AppBundle}\*"; Excludes: "*.pdb,*.dll"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs
 Source: "{#AppBundle}\*.dll"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs signonce


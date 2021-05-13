# dotNetFx35Windows10
Install .NET Framework 3.5 offline on Windows 10 using sources extracted from the Windows 10 build specific installation media

## Preparation
- Copy the repo to a suitable folder on your PC
- Copy contents of sources\sxs folder from Windows 10 build specific installation media into "Win10SourcesSxs" folder
- For example to install .Net Framework 3.5 on "Windows 10 IoT Enterprise 2019 LTSC"
  - Download the "Windows 10 IoT Enterprise 2019 LTSC" installation media iso file
  - Extract the iso file into a suitable folder (using 7-zip or similar)
  - From extracted location copy the contents of sources\sxs folder and paste it into the "Win10SourcesSxs" folder
  - Once the files are available the DISM command used in the dotNetFx35Windows10.ps1 script will pick up the necessary files during installation.

## Running as Script
Type `.\dotNetFx35Windows10.ps1` in Powershell

## Running as EXE
The "dotNetFx35Windows10.ps1" script and the dependant "Win10SourcesSxs" folder can be converted into an EXE that can be executed without needing to run the script in Powershell.

Type `.\ConvertToExe.ps1` in Powershell. This will create "dotNetFx35Windows10.exe"

Execute "dotNetFx35Windows10.exe"

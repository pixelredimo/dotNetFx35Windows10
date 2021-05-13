<#
  .SYNOPSIS
    Script to install .Net Framework 3.5 offline on Windows 10
  
  .DESCRIPTION
    Install .NET Fx 3.5 from files extracted from Windows 10 build specific installation media source\sxs
    
    For example to install .Net 3.5 on "Windows 10 IoT Enterprise 2019 LTSC"
      - Download the "Windows 10 IoT Enterprise 2019 LTSC" installation media iso file
      - Extract the iso file into a suitable folder (using 7-zip or similar)
      - From extracted location copy the contents of sources\sxs folder and paste it into the "Win10SourcesSxs" folder
      - Once the files are available DISM command will pick up the necessary files during installation.

  .EXAMPLE
    .\dotNetFx35Windows10.ps1

	.NOTES
    - Requires Administrator privileges
    - To set execution policy to be able to run scripts only in the current PowerShell session use the following:
      Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force

#>

DISM /Online /Enable-Feature /FeatureName:NetFx3 /All /Source:$PSScriptRoot\Win10SourcesSxs /LimitAccess

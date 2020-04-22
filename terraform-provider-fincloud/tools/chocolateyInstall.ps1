# Stop on all errors.
$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Import-Module -Force "$toolsDir\helpers.psm1"

$checksum64 = '2079c6b841ff32a9d6b6b377ddc27c58ba082d4832a987ee920c96b6d5ac4918'
$version = '1.0.0'
$url64bit = "https://github.com/samjegal/terraform-provider-fincloud/releases/download/v$($version)/terraform-provider-fincloud.windows.zip"

$terraformPluginDirectory = Get-TerraformPluginDirectory

$packageParams = @{
    PackageName   = "terraform-provider-fincloud"
    UnzipLocation = $terraformPluginDirectory
    Url64         = $url64bit
    Checksum64    = $checksum64
    ChecksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageParams

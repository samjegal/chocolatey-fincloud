# Stop on all errors.
$ErrorActionPreference = 'Stop';

$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Import-Module -Force "$toolsDir\helpers.psm1"

$checksum64 = '0d102439524c5de530e30b21aadd049d843c353a88bbe565aa65834200962eaf'
$version = '1.0.1'
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

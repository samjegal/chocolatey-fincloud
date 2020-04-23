$localAppData = [Environment]::GetFolderPath('ApplicationData')

Function Get-TerraformPluginDirectory {
    Join-Path $localAppData 'terraform.d\plugins'
}
$localAppData = [Environment]::GetFolderPath('LocalApplicationData')

Function Get-TerraformPluginDirectory {
    Join-Path $localAppData 'terraform.d\plugins'
}
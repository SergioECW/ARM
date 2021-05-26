$resourceGroupName = Read-Host -Prompt "arm-API"
$location = Read-Host -Prompt "northeurope"

New-AzResourceGroup -Name $resourceGroupName -Location $location

New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateUri "API.json"

Write-Host "Press [ENTER] to continue ..."
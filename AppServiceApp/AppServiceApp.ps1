$rg = 'arm-resourcegroup'
New-AzResourceGroup -Name $rg Location northeurope -force

New-AzResourceGroupDeployment 
-Name 'arm-resourcegroup'
-ResourceGroup $rg
-TemplateField 'AppServiceApp.json'

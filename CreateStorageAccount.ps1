#
# Command from the bicep tutorials to create a storage account using bicep
#
# This is meant to be run from the Azure CommandShell Window


$resourceGroupName = Read-Host -Prompt "Enter the Resource Group name"
$location = Read-Host -Prompt "Enter the location (i.e. centralus)"

New-AzResourceGroup -Name $resourceGroupName -Location "$location"
New-AzResourceGroupDeployment -ResourceGroupName $resourceGroupName -TemplateFile "main.bicep"

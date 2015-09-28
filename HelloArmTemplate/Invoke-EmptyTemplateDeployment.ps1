#Requires -Version 3.0

Add-AzureAccount
Switch-AzureMode AzureResourceManager

Select-AzureSubscription -SubscriptionName 'Visual Studio Enterprise with MSDN'

# Will perform the deployment but will return the ResourceGroup object, not the deployment object
New-AzureResourceGroup -Name 'Collab365-HelloArmTemplate' -DeploymentName 'EmptyTemplateDeployment' -Location 'East US 2' -TemplateFile "$PSScriptRoot\empty-template.json"
#Get-AzureResourceGroupDeployment -ResourceGroupName Collab365-HelloArmTemplate

# You can also do...
#New-AzureResourceGroup -Name 'Collab365-HelloArmTemplate' -Location 'East US 2'
#New-AzureResourceGroupDeployment -ResourceGroupName 'Collab365-HelloArmTemplate' -Name 'EmptyTemplateDeployment' -TemplateFile "$PSScriptRoot\empty-template.json"
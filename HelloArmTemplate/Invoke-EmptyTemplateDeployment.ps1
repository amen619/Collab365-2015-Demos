#Requires -Version 3.0

Add-AzureAccount
Switch-AzureMode AzureResourceManager

Select-AzureSubscription -SubscriptionName 'Visual Studio Enterprise with MSDN'
New-AzureResourceGroup -Name 'Collab365-HelloArmTemplate' -DeploymentName 'EmptyTemplateDeployment' -Location 'East US 2' -TemplateFile "$PSScriptRoot\empty-template.json"
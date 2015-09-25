Add-AzureAccount
Switch-AzureMode AzureResourceManager

Select-AzureSubscription -SubscriptionName 'Visual Studio Enterprise with MSDN'
New-AzureResourceGroup -Name 'Collab365ArmDemos' -DeploymentName 'EmptyTemplateDeployment' -Location 'East US' -TemplateFile "$PSScriptRoot\empty-template.json"
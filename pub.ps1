$RG = "rg-204"
$APP = "RPAZ204"

az resource update --resource-group $RG --namespace Microsoft.Web --resource-type basicPublishingCredentialsPolicies --name scm --parent "sites/$APP" --set properties.allow=true

$p = az webapp deployment list-publishing-profiles --resource-group $RG --name $APP --xml

gh secret set AzureAppService_PublishProfile_9304dd6cd3434095b81ba458d8e814a4 --body "$p"
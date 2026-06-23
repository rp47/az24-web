$RG   = "rg-204"
$APP  = "RPAZ204"

# Enable SCM publishing credentials
az resource update `
  --resource-group $RG `
  --namespace Microsoft.Web `
  --resource-type basicPublishingCredentialsPolicies `
  --name scm `
  --parent "sites/$APP" `
  --set properties.allow=true

# Get publish profile
$p = az webapp deployment list-publishing-profiles `
  --resource-group $RG `
  --name $APP `
  --xml

# Set GitHub secret
gh secret set AzureAppService_PublishProfile_9304dd6cd3434095b81ba458d8e814a4 `
  --body "$p"
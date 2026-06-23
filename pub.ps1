$RG = "rg-204"
$APP = "RPAZ204"

$p = az webapp deployment list-publishing-profiles `
  --resource-group $RG `
  --name $APP `
  --slot staging `
  --xml

gh secret set AzureAppService_PublishProfile_9304dd6cd3434095b81ba458d8e814a4 --body "$p"
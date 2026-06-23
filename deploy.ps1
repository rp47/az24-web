$RG   = "rg-204"
$LOC  = "canadacentral"
$PLAN = "plan-az204"
$APP  = "RPAZ204"

az webapp deployment github-actions add `
  --resource-group $RG `
  --name $APP `
  --repo "rp47/az24-web" `
  --branch main `
  --runtime "NODE:22-lts" `
  --login-with-github
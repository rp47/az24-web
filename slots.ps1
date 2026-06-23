$RG   = "rg-204"
$APP  = "RPAZ204"
az webapp deployment slot create --resource-group $RG --name $APP --slot staging
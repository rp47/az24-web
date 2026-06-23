$RG   = "rg-204"
$LOC = "canada central"
$PLAN = "plan-az204"
$APP = "RPAZ204" 
az group create --name $RG --location $LOC
az appservice plan create --name $PLAN --resource-group $RG --sku S1 --is-linux
az webapp create --resource-group $RG --plan $PLAN --name $APP --runtime "NODE:22-lts"
 
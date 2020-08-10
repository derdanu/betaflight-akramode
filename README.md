# Betaflight Akramode Patchfiles 

## Create a Azure Build VM using the cloudinit file
```
az group create --name bfbuild --location westeurope
az vm create --resource-group bfbuild --name bfbuild --image UbuntuLTS --admin-username azureuser --admin-password Test123#123# --custom-data cloudinit.txt
az vm open-port --port 80 --resource-group bfbuild --name bfbuild 
```

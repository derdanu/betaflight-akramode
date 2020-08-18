# Betaflight Akramode Patchfiles 

## Create a Azure Build VM using the cloudinit file
```
git clone https://github.com/derdanu/betaflight-akramode.git
cd betaflight-akramode
az group create --name bfbuild --location westeurope
az vm create --size Standard_D4s_v3 --resource-group bfbuild --name bfbuild --image UbuntuLTS --admin-username azureuser --admin-password Test123#123# --custom-data cloudinit.txt
az vm open-port --port 80 --resource-group bfbuild --name bfbuild --output none
```
## Firmware
Wait a couple of minutes until all versions and targets are build. After that, point your Webbrowser to the IP of the created VM to Download the Unified Target. Please apply the default config for FC https://github.com/betaflight/unified-targets/tree/master/configs/default afterwards.

## Cleanup 
```
az group delete --name bfbuild
```

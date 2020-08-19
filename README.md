# Betaflight Akramode Patchfiles 

## Create a Azure Build VM using the cloudinit file
```
git clone https://github.com/derdanu/betaflight-akramode.git
cd betaflight-akramode
export GROUP=bfbuild
az group create --name $GROUP --location westeurope
az vm create --size Standard_D8s_v3 --resource-group $GROUP --name bfbuild --image UbuntuLTS --admin-username azureuser --admin-password Test123#123# --nsg "" --ephemeral-os-disk true --priority Spot --eviction-policy Delete --custom-data cloudinit.txt
```
## Firmware
Wait a couple of minutes until all versions and targets are build. After that, point your Webbrowser to the IP of the created VM to Download the Firmware file. Complete Zip File of all files is provided as well. 
For firmwae less than 4.2 all targets were built, starting with 4.2 only the unified targets were built.  Please apply the default config for FC https://github.com/betaflight/unified-targets/tree/master/configs/default afterwards.

## Cleanup 
```
az group delete --name $GROUP
```

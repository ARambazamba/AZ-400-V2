rnd=$RANDOM
loc=westeurope
grp=az-lab
vmname=labvm-$rnd
user=azlabadmin
pwd=Lab@dmin1233

az group create -n $grp -l $loc

az vm create -g $grp -n $vmname --admin-username $user --admin-password $pwd --image  MicrosoftWindowsDesktop:Windows-10:20h2-pron:19042.867.2103051748 --size Standard_E2s_v3

az vm auto-shutdown -g $grp -n $vmname --time 1830
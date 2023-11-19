#!/bin/bash
# vmware : https://docs.vmware.com/en/VMware-Workstation-Pro/17/com.vmware.ws.using.doc/GUID-AB5C80FE-9B8A-4899-8186-3DB8201B1758.html
# virtualbox : https://askubuntu.com/questions/161759/how-to-access-a-shared-folder-in-virtualbox

# first argument name (vmware, virtualbox)
args=$($1)

if [ -z "$args" ]; then
    echo -e "First missing argument, please enter what virtual machine is this (vmware, virtualbox)";
    exit 1;
fi

# VMWARE
if ["$args" == "vmware" ]; then
    echo "Creation of the 'shared' directory, on going..."
    mkdir -p $HOME/shared
    sleep 0.5
    echo "Mounting Shared folder, on going..."
    sleep 0.5
    sudo mount -t fuse.vmhgfs-fuse -o allow_other,uid=1000,gid=1000 .host:/shared $HOME/shared/ || echo "Some error, open the bash file"
    sleep 0.5
    echo "'~/shared/' folder mounted, It's OKAY."
fi

# VIRTUALBOX
if [ "$args" == "virtualbox" ]; then
    echo "Creation of the 'shared' directory, on going..."
    mkdir -p $HOME/shared
    sleep 0.5
    echo "Mounting Shared folder, on going..."
    sleep 0.5
    sudo mount -t vboxsf -o uid=1000,gid=1000 sharename $HOME/shared/ || echo "Some error, open the bash file"
    sleep 0.5
    echo "'~/shared/' folder mounted, It's OKAY."
fi

#!/bin/bash
# https://docs.vmware.com/en/VMware-Workstation-Pro/16.0/com.vmware.ws.using.doc/GUID-AB5C80FE-9B8A-4899-8186-3DB8201B1758.html
#


echo "Creation of the 'shared' directory, on going..."
mkdir -p $HOME/shared
sleep 0.5
echo "Mounting Shared folder, on going..."
sleep 0.5
sudo mount -t fuse.vmhgfs-fuse -o allow_other,uid=1000,gid=1000 .host:/shared ~/shared/ || echo "Some error, open the bash file"
sleep 0.5
echo "'~/shared/' folder mounted, It's OKAY."

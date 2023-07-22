#!/bin/bash

# Install 'cifs-utils' to your system

# Create dlink/volume_1 folder to /mnt directory
sudo mkdir /mnt/dlink/volume_1/

# Mount a filesystem
# - verbose : say what is being done
# - type : limit the set of filesystem types
# - options : comma-separated list of mount options
# - vers : define version of SMB
# - username : username for the NAS
sudo mount --verbose --type cifs --options vers=1.0,username=pspk //dlink-25730a/Volume_1 /mnt/dlink/volume_1

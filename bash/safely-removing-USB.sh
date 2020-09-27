#! /bin/bash


# Eject USB drive once buffer transfer has completed
echo "Flushing USB drive buffer"
sync

echo "Sync complete"

# Identify the device name for the SILICON16GB USB drive
# Extended command "lsblk -o NAME,RM,SIZE,TYPE,MOUNTPOINT,SERIAL,MODEL,UUID"
usblongname=$(lsblk -l | grep SILICON16GB)
usbname="${usblongname:0:4}"

# Show all drive status
echo ""
udisksctl status
echo ""

# Unmount the USB drive
udisksctl unmount -b /dev/$usbname
echo "Unmount complete"

# Power off the USB drive
udisksctl power-off -b /dev/$usbname
echo "Power off complete"

# Script complete
echo "Shell command complete"
read

# Note that the above-noted script has the name of my USB flash drive hard coded as “SILICON16GB“.
# This designator should be changed to suit a different user’s system. Also,
# udisksctl is part of the gnome-disk-utility package so this package
# should be installed if it is not available by default.

#!/usr/bin/env bash

# Exit immediately if a command exits with a non-zero status.
set -o errexit

# Vérification si la commande rsync existe sur le système.
if ! [ -x "$(command -v rsync)" ]; then
    echo "I require RSYNC but it's not installed. Aborting."
    exit 1;
fi

user_name="$USER"
label_disk="HAL"

dir_src="Crypto/"
dir_dest="/media/$user_name/$label_disk/"

# Check the existence of the destination folder, otherwise end the program.
if ! [ -d "$dir_dest" ]; then
    echo "[*] The $dir_dest does not exist."
    exit 2;
fi

if [ -z "$2" ]; then
    # The value 1700 and the value to be adjusted, depending on the support on which you write or read (Disk HDD/SSD, USB, etc)
    bwlimit_write=1700  # The value : 1700 Kb is 1.7Mb/sec
    #bwlimit_read=15000
else
    bwlimit_write="$2"
fi

if [ "$1" = "run" ]; then
    echo "[*] Bandwith limit : "$bwlimit_write" Kb"
    echo "[*] Transfert SRC : "$dir_src" DEST: "$dir_dest""
    rsync --verbose --human-readable --stats --progress --archive --bwlimit="$bwlimit_write" --relative "$dir_src" "$dir_dest"

else
    echo "*** DRY-RUN ***"
    echo "[*] Bandwith limit : "$bwlimit_write" Kb"
    echo "[*] Transfert SRC : "$dir_src" DEST: "$dir_dest""
    rsync --verbose --human-readable --stats --progress --archive --bwlimit="$bwlimit_write" --relative --dry-run "$dir_src" "$dir_dest"
fi

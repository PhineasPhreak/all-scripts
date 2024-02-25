#!/bin/bash

# Example ./tree-dir.sh json <disk-tree.json>
# Frist argument, choose format JSON and HTML.
format="$1"
file_name="$2"

# Variables :
file_output="$file_name"


# Test if tree command exist on the system
TREE=$(command -v tree)
if [[ -z "$TREE" ]]; then
    echo -e "Required tools are missing"
    echo -e "Install 'tree' package in the system.\n"
    exit 1;
fi

if [[ -z $format ]] || [[ -z $file_name ]]; then
    # Show help
    echo -e "Options :"
    echo -e "    arg 1    Output format : json or html"
    echo -e "    arg 2    Output file name with extension\n"
    echo -e "Examples :"
    echo -e "    ./tree-dir.sh json data.json"
    echo -e "    ./tree-dir.sh html data.html"

else
    # Command tree with JSON format :
    if [[ $format = "json" ]]; then

        tree --noreport -huD -J -o "$file_output"
    fi

    # Command tree with HTML format :
    if [[ $format = "html" ]]; then
        tree --noreport -huD -H Directory -o "$file_output"
    fi
fi

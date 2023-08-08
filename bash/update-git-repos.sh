#!/bin/bash -e

### Link
# https://stackoverflow.com/questions/3497123/run-git-pull-over-all-subdirectories
#
# https://gist.github.com/douglas/1287372
# https://github.com/joeytwiddle/jsh/blob/master/code/shellscript/git/git-update-all-repos.sh
###

# store the current dir
CUR_DIR=$(pwd)

# first argument branch name (master, main, etc.)
args=$($1)

# test command 'git', if exists
GIT=$(command -v git)

if [ -z "$GIT" ]; then
    echo -e "Command git not found, please install git package";
    exit 1;
fi

if [ -z "$args" ]; then
    echo -e "First missing argument, please enter the branch name (master, main, etc.)";
    exit 1;
fi

# Let the person running the script know what's going on.
echo -e "\n\033[1mPulling in latest changes for all repositories...\033[0m\n";

# Find all git repositories and update it to the master latest revision
# Note: if the "-depth 1" option is not available, try "-mindepth 1" "-maxdepth 1"
for i in $(find . -mindepth 1 -maxdepth 2 -type d -name ".git" | cut -c 3-); do
    echo -e "";
    echo -e "\033[33m"+$i+"\033[0m";

    # We have to go to the .git parent directory to call the pull command
    cd "$i";
    cd ..;

    # finally pull
    git pull origin $args;

    # lets get back to the CUR_DIR
    cd $CUR_DIR;
done

echo -e "\n\033[32mComplete!\033[0m\n";


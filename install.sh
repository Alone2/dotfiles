echo WARNING: RUN SCRIPT AS USER NOT ROOT
sleep 3

# Install packages and copy dotfiles
sh installPackages.sh
sh copyDotfiles.sh
sh installPackagesAUR.sh

# be more confy in terminal
set -o vi


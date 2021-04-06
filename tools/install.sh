#!/bin/bash

pause() {
    prompt="$1"
    echo -e -n "\033[1;36m$prompt"
    echo -e -n '\033[0m'
    read
}

git="github.com"
mirror="bashelled/yazt"

black="\u001b[30m"
red="\u001b[31m"
green="\u001b[32m"
yellow="\u001b[33m"
blue="\u001b[34m"
magenta="\u001b[35m"
cyan="\u001b[36m"
white="\u001b[37m"
reset="\u001b[0m"

aex () {
echo -e "Error: $red Yazt is already installed.$reset"
echo -e "Remove the directory, or unset \$yazt to continue."
exit 1
}

rti () {
echo -e "$red                      __ $reset"
sleep 0.1
echo -e "$yellow   __  ____________  / /_$reset"
sleep 0.1
echo -e "$cyan  / / / / __  /_  / / __/$reset"
sleep 0.1
echo -e "$blue / /_/ / /_/ / / /_/ /_  $reset"
sleep 0.1
echo -e "$magneta \__, /\__,_/ /___/\__/  $reset"
sleep 0.1
echo -e "$red/____/is ready to install!$reset"
sleep 0.1
echo -e ""
sleep 1
echo -e "Just run again with $green--synctopc$reset to start"
echo -e "Usage: $red./install.sh <--synctopc>$reset"
}

install () {
pause "Really install? :: "
echo -e "Installing$red Yazt...$reset"
sleep 1
echo -e "$green[15%]$reset Cloning into ~/.yazt"
git clone https://$git/$mirror $HOME/.yazt
echo -e "$green[39%]$reset Moving zshrc to ~/.zshrc.preyazt"
if [[ -f $HOME/.zshrc ]]; then
mv $HOME/.zshrc $HOME/.zshrc.preyazt
else
echo -e "$yellow WARN: zshrc not found$reset"
fi
echo -e "$green[68%]$reset Copying yaztrc to zshrc"
cp $HOME/.yazt/etc/templates/rcs/zshrc $HOME/.zshrc
echo -e "$green[82%]$reset Finalizing"
chsh -s $(which zsh)
mkdir $HOME/.yazt/etc/cache
mkdir -p $HOME/.yazt/usr/{themes,plugins}
echo -e "$green[100%]$reset Finishing up"
sleep 5
echo -e "$red Yazt is installed!$reset"
zsh
exit
}

if [[ -d $HOME/.yazt ]]; then
aex
fi

case $1 in
  --synctopc)
  install
  ;;
  *)
  rti
  ;;
esac

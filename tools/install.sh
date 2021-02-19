echo "Installing Yazt..."
sleep 1
echo "==> Moving Yazt files..."
git clone https://github.com/bashelled/yazt ~/.yazt
echo "==> Copying zshrc..."
cp ~/.yazt/etc/templates/rcs/normal  ~/.zshrc
echo "==> Changing shell..."
chsh -s $(which zsh)
echo "Yazt installed"

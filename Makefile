move_files:
	@echo "==> Moving Yazt files..."
	mv -v ./* ~/.yazt

copy_rc: move_files
	@echo "==> Copying zshrc...
	if [[ $ZSH == $HOME/.oh-my-zsh ]]; then
	cat ./etc/templates/rcs/omz-enabled > $HOME/.zshrc
	else
        cat ./etc/templates/rcs/normal
chsh: move_files copy_rc
	@echo "==> Changing shell..."
	chsh -s $(which zsh)
done: move_files copy_rc chsh
	@echo "Yazt installed"

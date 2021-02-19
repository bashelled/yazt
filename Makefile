	
move_files:
	@echo "==> Moving Yazt files..."
	mkdir -p ~/.yazt
	mv -v ./* ~/.yazt

copy_rc: move_files
	@echo "==> Copying zshrc..."
	cat ./etc/templates/rcs/normal >> ~/.zshrc
chsh: move_files copy_rc
	@echo "==> Changing shell..."
	chsh -s $(which zsh)

done: move_files copy_rc chsh
	@echo "Yazt installed"

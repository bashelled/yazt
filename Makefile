install:
	mkdir ~/.yazt
	@echo "==> Moving Yazt files..."
	mv -v ./* ~/.yazt
	@echo "==> Copying zshrc..."
	cat ~/.yazt/etc/templates/rcs/normal >> ~/.zshrc
	@echo "==> Changing shell..."
	chsh -s $(which zsh)
	@echo "Yazt installed"

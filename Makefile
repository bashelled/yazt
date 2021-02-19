install:
	mkdir ~/.yazt
	@echo "==> Moving Yazt files..."
	git clone https://github.com/bashelled/yazt ~/.yazt
	@echo "==> Copying zshrc..."
	cp ~/.yazt/etc/templates/rcs/zshrc  ~/.zshrc
	@echo "==> Changing shell..."
	chsh -s /usr/bin/zsh
	@echo "Yazt installed"

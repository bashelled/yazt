# Debian install

There is a .deb package in the Releases you can install with APT using

```
sudo apt install ./yazt-version.deb
```

After installing, run

```
cat /opt/yazt/etc/templates/rcs/zshrc >> ~/.zshrc
```

This inputs the Yazt RC to your zshrc if you have one.  
If you don't have zsh, don't worry -- zsh comes as a depend.

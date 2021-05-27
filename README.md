# Yazt
> Yet another ZSH theme 

Yazt is a simple yet challenging ZSH theme manager that is compatible with nearly everything. You can use prompts in plugins, mix 'n' match two themes, with a few modifications, you can even use it in bash, then even fish.
(note: as of May 23, master is not ready. Try using the nix branch instead, which is currently being archived to version 1.0-4 until 1.1 is ready.)

## Installation

### Normal install
Get the instal script and run it with --synctopc.
```
wget https://raw.github.com/bashelled/yazt/master/tools/install.sh
./install.sh --synctopc
```

### Install alongside Oh My ZSH!
```
wget https://raw.github.com/bashelled/yazt/master/tools/installomz/install.sh
./install.sh --synctopc
```
This script moves your zshrc to ~/.zrcs, copys the yaztrc to the same directory, copys a new RC to your rc and makes a file called ~/.zside which handles the enviroment changing.

By default, no themes are added. You can add them yourself using the *copy ability.*

Using the `yazt` command that can be added to your PATH, you can copy themes from GitHub and Gitee.
For example, if a user wanted the a theme called zish (which could be a combination of zsh and fish, sherlock) and had Yazt installed, they would use:

```
user@host : ~ % yazt -T user/zish
Copying user/zish...
# ...
Done!
user@host : ~ % nano .zshrc && zsh
# ...
user@host:~>
```

## Usage
```
yazt [-uhvXTP] [--usage] [--help] [--version] [--uninstall] [--theme [THEME]] [--pull]
```
```
operations:
    yazt {-u --usage}
    yazt {-h --help}
    yazt {-v --version}
    yazt {-X --uninstall}
    yazt {-T --theme} [user/theme]
    yazt {-P --pull}
```

*Note for Bedrock Linux systems: Yazt CLI is a global executable by default, unless you installed it using the deb, then it will belong to Debian/Ubuntu/Devuan/...*

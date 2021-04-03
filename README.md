# Yazt
> Yet another ZSH theme 

Yazt is a simple yet challenging ZSH theme manager in maintence that is compatible with nearly everything. You can use prompts in plugins, mix 'n' match two themes, with a few modifications, you can even use it in bash, then even fish.

## Installation
```
wget https://raw.github.com/bashelled/yazt/master/tools/install.sh
./install.sh --synctopc
```

By default, no themes are added. You can add them yourself using the *copy ability.*

Using the `yazt` command that can be added to your PATH, you can copy themes from GitHub.  
For example, if a user wanted the a theme called zish (which could be a combination of zsh and fish, sherlock) and had Yazt installed, they would use:

```
user@host : ~ % yazt -T user/zish
Copying user/zish...
# ...
Done!
user@host : ~ % nano .zshrc && zsh
...
user@host:~>
```

# Usage
`yazt [-uhvXTPU] [--usage] [--help] [--version] [--uninstall] [--theme [THEME]] [--pull]`
`operations:
    yazt {-u --usage}
    yazt {-h --help}
    yazt {-v --version}
    yazt {-X --uninstall}
    yazt {-T --theme} [user/theme]
    yazt {-P --pull}`

*Note for Bedrock Linux systems: Yazt CLI is a global executable by default, unless you installed it using the deb, then it will belong to Debian/Ubuntu/Devuan/...* 

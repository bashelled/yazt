# yazt.sh: Yazt loader based on Oh My ZSH

# Sets Yazt custom.
if [[ -z "$yaztcustom" ]]; then
    yaztcustom="$yazt/usr"
fi

# Loads theme
if [ ! "$yazttheme" = ""  ]; then
  if [ -f "$yaztcustom/$yazttheme.yzt" ]; then
    source "$yaztcustom/$yazttheme.yzt"
  elif [ -f "$yaztcustom/themes/$yazttheme.yzt" ]; then
    source "$yaztcustom/themes/$yazttheme.yzt"
  else
    source "$yazt/themes/$yazttheme.yzt"
  fi
  else
    source "$yazt/themes/$yazttheme.yzt"
fi

# Yazp loader.
if [ "$yazpon" = "true" ]; then
for yazpplugin ($yazpplugins); do
 if [ ! "$yazpplugin" = ""  ]; then
  if [ -f "$yaztcustom/$yazpplugin.yzp" ]; then
    source "$yaztcustom/$yazpplugin.yzp"
  elif [ -f "$yaztcustom/plugins/$yazpplugin.yzp" ]; then
    source "$yaztcustom/plugins/$yazpplugin.yzp"
  else
    source "$yazt/plugins/$yazpplugin.yzp"
  fi
 else
   echo "yazp: no plugin specified"
fi
done
fi

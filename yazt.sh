if [[ -z "$yaztcustom" ]]; then
    yaztcustom="$yazt/usr"
fi

if [ ! "$yazttheme" = ""  ]; then
  if [ -f "$yaztcustom/$yazttheme.yzt" ]; then
    source "$yaztcustom/$yazttheme.yzt"
  elif [ -f "$yaztcustom/themes/$yazttheme.yzt" ]; then
    source "$yaztcustom/themes/$yazttheme.yzt"
  else
    source "$yazt/themes/$yazttheme.yzt"
  fi
fi

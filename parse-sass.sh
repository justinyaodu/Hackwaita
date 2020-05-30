#! /bin/bash

if [ ! "$(which sassc 2> /dev/null)" ]; then
   echo sassc needs to be installed to generate the css.
   exit 1
fi

SASSC_OPT="-M -t compact"

echo Generating the css...

repo_root="$(dirname "${0}")"

sassc $SASSC_OPT "${repo_root}/gtk-contained.scss" "${repo_root}/gtk-3.0/gtk.css"
sassc $SASSC_OPT "${repo_root}/gtk-contained-dark.scss" "${repo_root}/gtk-3.0/gtk-dark.css"

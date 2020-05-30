#! /bin/bash

if [ ! "$(which sassc 2> /dev/null)" ]; then
   echo sassc needs to be installed to generate the css.
   exit 1
fi

SASSC_OPT="-M -t compact"

echo Generating the css...

script_dir="$(dirname "${0}")"

sassc $SASSC_OPT gtk-contained.scss "${script_dir}/gtk-3.0/gtk.css"
sassc $SASSC_OPT gtk-contained-dark.scss "${script_dir}/gtk-3.0/gtk-dark.css"

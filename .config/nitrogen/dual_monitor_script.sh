#!/bin/bash

WPDIR="$HOME/img/wallpapers/"
random=false

if [[ "$#" -eq "1" ]]
then
  if [[ "$1" == "-r" ]]
  then
    random=true
  fi
fi

if $random
then
  wpfile=$(ls "$WPDIR"/ | sort -R | head -n 1)
  echo "Randomly chose $wpfile"
fi

nitrogen --head=0 --set-scaled $WPDIR/$wpfile
nitrogen --head=1 --set-scaled $WPDIR/$wpfile

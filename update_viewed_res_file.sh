#!/bin/bash


if [ -f ../../media/viewed.res ]; then
  echo -n "" > ../../media/viewed.res
  echo -e "\"viewed.res\"\n{" >> ../../media/viewed.res
  for f in ../../maps/*.bsp; do
    map=$(basename $f .bsp)
    echo -e "\t\"${map}\"\n\t{\n\t\t\"viewed\"\t\t\"50\"\n\t}" >> ../../media/viewed.res
  done
  echo "}" >> ../../media/viewed.res
else
  echo "Wrong working directory"
  echo "Run this script from your custom/<custom_name>/ folder"
fi

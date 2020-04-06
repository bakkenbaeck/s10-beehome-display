#!/bin/bash
echo "~~~~~~~~~~~~~~~~ initialising! ô¿ô"
set -e

### WIP build script for BB Sans based on a build script by weiweihuanghuang and Mike LaGuttuta ~~

glyphsSource="s10-beehome.glyphs"

mkdir -p ../fonts/ ../fonts/ttf ../fonts/otf/ ../fonts/woff2/

## Generate OTFs
OTF_OUT=../fonts/otf
fontmake -g $glyphsSource -o otf --output-dir $OTF_OUT -a

# Generate TTFs
TTF_OUT=../fonts/ttf
fontmake -g $glyphsSource -o ttf --output-dir $TTF_OUT -a

# Generate woff2
for ttf in ../fonts/ttf/*.ttf
do
  woff2_compress $ttf
  mv ${ttf/.ttf/.woff2} ../fonts/woff2
done

rm -rf master_ufo/ instance_ufo/

echo "~~~~~~~~~~~~~~~~ finished! ô¿ô"

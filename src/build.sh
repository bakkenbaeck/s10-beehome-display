#!/bin/bash
echo "~~~~~~~~~~~~~~~~ initialising! ô¿ô"
set -e

### WIP build script for BB Sans based on a build script by weiweihuanghuang and Mike LaGuttuta ~~

glyphsSource="bb-sans-master.glyphs"

mkdir -p ../fonts/ ../fonts/ttf ../fonts/otf/ ../fonts/var/ ../fonts/woff2/

# Generate VARs
VF=../fonts/var/BBSans-VAR.ttf
fontmake -g $glyphsSource -o variable --output-path $VF -a


## Generate OTFs
OTF_OUT=../fonts/otf
fontmake -g $glyphsSource -o otf -i --output-dir $OTF_OUT -a

# Generate TTFs
TTF_OUT=../fonts/ttf
fontmake -g $glyphsSource -o ttf -i --output-dir $TTF_OUT -a

# Generate woff2
for ttf in ../fonts/ttf/*.ttf
do
  woff2_compress $ttf
  mv ${ttf/.ttf/.woff2} ../fonts/woff2
done

for ttf in ../fonts/var/*.ttf
do
  woff2_compress $ttf
done

rm -rf master_ufo/ instance_ufo/

echo "~~~~~~~~~~~~~~~~ finished! ô¿ô"

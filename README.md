# S10 BEEHOME DISPLAY

![BEEHOME1](/res/beehomeV1-3.png)
![BEEHOME1](/res/beehomeV1-1.png)
![BEEHOME1](/res/beehomeV1-2.png)

## Mark parameters
The Beehome mark is built on a variable font tied up to the build.sh script. 
The circles are located on unicode blocks ```U+25D0, U+25D1 and U+25D2```. For convenience they are also tied to ```1, 2``` and ```3``` -- while the ``` apple``` symbol contain the logo as one unit. 

Instance | Value
------------ | -------------
BH 1 | 100
BH 2 | 200



## Building Fonts
Fonts are built using fontmake, gftools and Bramstein's webfonttools. These can be installed in a python virtualenv using the following commands:

```
# Create a new vitualenv
python3 -m venv venv
# Activate virtualenv
source venv/bin/activate
# Install python dependencies
pip install -r ./requirements.txt
# Install webfonttools
brew tap bramstein/webfonttools
brew install woff2
```

After installing the dependencies. Run `sh build.sh` from this directory to build the fonts.

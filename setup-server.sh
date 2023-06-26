#!/bin/bash

# install sudo : 
apt -qq update
apt-get -qq install sudo -y
export zipname="common-linux-scripts"

#--no-verbose
cd $HOME
echo downloading main scripts
wget --no-verbose https://github.com/radiocab/setup-server/raw/main/$zipname.zip  -O $HOME/$zipname.zip
echo downloaded

sudo apt-get -qq install zip -y

echo $0
unzip  -P $1 -d $HOME/test/  $zipname.zip -x $zipname"/setup-server.sh"; cp -r --update $HOME/test/$zipname/* $HOME/test/ ; rm -rf $HOME/test/$zipname/

exit 0

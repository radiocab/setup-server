#!/bin/bash

# install sudo : 
apt -qq update
apt-get -qq install sudo -y
export zipname="common-linux-scripts"

#not forget change it to '.' after tests
export instdir="test"

#--no-verbose
cd $HOME
echo downloading main scripts
wget --no-verbose https://github.com/radiocab/setup-server/raw/main/$zipname.zip  -O $HOME/$zipname.zip
echo downloaded

sudo apt-get -qq install zip -y

echo $0
unzip  -P $1 -d $HOME/$instdir/  $zipname.zip -x $zipname"/setup-server.sh"; cp -r --update $HOME/$instdir/$zipname/* $HOME/$instdir/ ; rm -rf $HOME/$instdir/$zipname/

find ./$instdir/ -type f -iname "*.sh" -exec chmod +x {} \;
exit 0

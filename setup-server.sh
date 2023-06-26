#!/bin/bash

# install sudo : 
apt -qq update
apt-get -qq install sudo -y
export zipname="common-linux-scripts"

cd $HOME
wget --no-verbose https://github.com/radiocab/setup-server/raw/main/$zipname.zip  -O $HOME/
 
sudo apt-get -qq install zip -y

echo $0
unzip  -P $1 -d $HOME/test/ -x "setup-server.sh" $zipname.zip; cp -r --update $HOME/test/$zipname/* $HOME/test/ ; rm -rf $HOME/test/zipname/

exit 0

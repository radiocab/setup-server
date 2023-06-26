#!/bin/bash

# install sudo : 
apt -qq update
apt-get -qq install sudo -y


#wget --no-verbose https://raw.githubusercontent.com/simotek/scripts-config/master/.colors -O $HOME/.colors 

sudo apt-get -qq install zip -y

#echo 'test1test'> pass
unzip  -P test1test -d $HOME/test/ -x "setup-server.sh" common-linux-scripts.zip; cp -r --update $HOME/test/common-linux-scripts/* $HOME/test/ ; rm -rf $HOME/test/common-linux-scripts/

exit 0
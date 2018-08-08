#!/bin/bash
echo "WHO AM I!? `whoami`"
echo "PWD: `pwd`"
echo "GET NVM - CURL"
# curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
wget https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh
echo "LIST FOLDER CONTENT: `ls -ltrha`"
echo "INSTALL NVM"
mv /tmp/install.sh /home/ubuntu
cd /home/ubuntu
echo "PWD: `pwd`"
echo "755 to install.sh"
chmod 755 install.sh
 sh install.sh
# echo "CHANGE DIR"
# sudo chown ubuntu:ubuntu -R /home/ubuntu/.nvm
export NVM_DIR="~/.nvm"
echo "NVM DIR: $NVM_DIR"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# echo "CHANGE OWNERSHIP"
# sudo chown ubuntu:ubuntu -R /home/ubuntu/.nvm
#source ~/.nvm/nvm.sh
source /home/ubuntu/.profile

#!/bin/bash

sudo apt-get install -y nodejs
sudo apt-get install -y npm
sudo npm install -g bower
cd /home/vagrant/src/ralph
sudo ln -s /usr/bin/nodejs /usr/bin/node
sudo npm install
PATH=$PATH:/home/vagrant/src/ralph/node_modules/.bin; export PATH
echo "PATH=$PATH; export PATH" >> /home/vagrant/.profile
gulp

#!/usr/bin/env bash

echo "#update and upgrade"
sudo apt update
sudo apt upgrade

echo "#Install tools"
sudo apt install git nodered npm python-pip -y
sudo pip install rmctl

echo "Update nodejs and nodred"
update-nodejs-and-nodered

echo "#Start nodered"
sudo systemctl start nodered
sudo systemctl enable nodered

until [ -e .node-red] ; do
    sleep 1
done
cd .node-red

echo "#install alaxa home skill"
npm install node-red-contrib-alexa-home-skill

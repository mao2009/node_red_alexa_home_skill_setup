sudo apt update
sudo apt install git nodered npm python-pip -y

pip install rmctl

update-nodejs-and-nodered

sudo systemctl start nodered
sudo systemctl enable nodered

sudo reboot
cd .node-red
sudo npm install node-red-contrib-alexa-home-skill

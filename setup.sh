sudo apt update
sudo apt install git nodered npm python-pip -y

git clone https://github.com/mao2009/broadlink_ctl
sudo ln -s ./broadlink_ctl/broadlink_ctl.python.py broadlink.py

pip install broadlink
if [[ $(python --version) == "2*" ]];then
    pip install configparser
fi

update-nodejs-and-nodered
sudo systemctl start nodered
sudo systemctl enable nodered
sudo reboot
cd .node-red
sudo npm install node-red-contrib-alexa-home-skill

sudo apt update
sudo apt install nodered npm python-pip -y

curl https://github.com/mao2009/broadlink_ctl/blob/master/broadlink_ctl.py - broadlink.py

pip install broadlink
if [[ $(python --version) == "2*" ]];then
    pip install configparser
fi

update-nodejs-and-nodered
cd .node-red
npm install node-red-contrlib-alexa-home-skill

sudo systemctl enabale nodered
sudo systemctl start nodered

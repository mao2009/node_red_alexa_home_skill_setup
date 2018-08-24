sudo apt update
sudo apt install git nodered npm python-pip -y

sudo pip install rmctl

update-nodejs-and-nodered

sudo systemctl start nodered
sudo systemctl enable nodered

until [ -e .node-red] ; do
    sleep 1
done
cd .node-red
sudo npm install node-red-contrib-alexa-home-skill

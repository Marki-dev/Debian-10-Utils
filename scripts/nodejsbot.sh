echo "Installing Node.js v14 on your system"
echo "Checking if permissions are valid"
if [ "$EUID" -ne 0 ]
  then echo "Please run this script as root"
  exit
fi
apt update
apt install -y curl git
curl -sL https://deb.nodesource.com/setup_16.x | bash -
apt -y install nodejs
npm i -g pm2 nodemon

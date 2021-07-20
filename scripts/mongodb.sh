if [ "$EUID" -ne 0 ]
  then echo "Please run this script as root"
  exit
fi
apt-get install -y gnupg
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | apt-key add -
echo "deb http://repo.mongodb.org/apt/debian buster/mongodb-org/5.0 main" | tee /etc/apt/sources.list.d/mongodb-org-5.0.list
apt-get update
apt-get install -y mongodb-org
systemctl daemon-reload
systemctl start mongod

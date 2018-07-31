sudo apt-get -y update
sudo apt-get -y upgrade
wget https://nginx.org/download/nginx-1.12.2.tar.gz
tar xzf nginx-1.12.2.tar.gz
sudo apt-get install -y gcc
sudo apt-get install -y libpcre3 libpcre3-dev build-essential libssl-dev
route="$PWD/nginx-rtmp-module"
cd nginx-1.12.2/
./configure --add-module=$route
make
make install
/usr/local/nginx/sbin/nginx -s stop
cd ..
cp -r nginx.conf /usr/local/nginx/conf/

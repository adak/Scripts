!#/usr/bin/bash
## This script make a Local network repository
## By R.Cheshami

## On nod that you want use Repo
sudo apt-get install build-essential
echo 'deb [trusted=yes] http://192.168.1.10/deb ./
mkdir /home/USER/DebRepo/
cd /home/USER/DebRepo/
sudo mv /var/cache/apt/archives/*.deb /home/USER/DebRepo/tmp/
sudo mv mkdir /home/USER/DebRepo/*.deb mkdir /home/USER/DebRepo/tmp/
sudo rm ./Packages.gz
sudo chown ro:ro mkdir /home/USER/DebRepo -R
dpkg-scanpackages ./tmp | grep Filename: > 4del
sed -i 's/Filename:/mv/' 4del;  sed -i 's/\.deb/\.deb \.\//' 4del; chmod 770     4del;./4del
sudo mv /home/sda7/Sources/Kali/deb/tmp/*.deb /home/sda7/Sources/Kali/deb/
dpkg-scanpackages . | gzip -c9  > Packages.gz

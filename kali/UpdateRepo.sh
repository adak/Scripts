#!/bin/bash 

cd /home/sda7/Sources/Kali/deb/
sudo mv /var/cache/apt/archives/*.deb /home/sda7/Sources/Kali/deb/tmp/
sudo mv /home/sda7/Sources/Kali/deb/*.deb /home/sda7/Sources/Kali/deb/tmp/
sudo rm ./Packages.gz
sudo chown ro:ro /home/sda7/Sources/Kali/deb -R
dpkg-scanpackages ./tmp | grep Filename: > 4del
sed -i 's/Filename:/mv/' 4del;  sed -i 's/\.deb/\.deb \.\//' 4del; chmod 770 4del;./4del
sudo mv /home/sda7/Sources/Kali/deb/tmp/*.deb /home/sda7/Sources/Kali/deb/
dpkg-scanpackages . | gzip -c9  > Packages.gz

#

# Pre-install neogeo
sudo apt-get update; sudo apt-get upgrade -y
sudo apt-get install -y libsdl-dev

# neogeo download
wget https://gngeo.googlecode.com/files/gngeo-0.8.tar.gz
tar zvxf gngeo-0.8.tar.gz

# nengeo compile
cd gngeo-0.8
./configure
make
sudo make install

# gngeo directory make
cd src
mkdir ~/gngeo
cp ~/gngeo-0.8/src/gngeo ~/gngeo
cp ~/gngeo-0.8/gngeo.dat/gngeo_data.zip ~/gngeo/

# neogeo roms directory make
cd ~/gngeo
mkdir roms
wget http://www.rasplay.org/rpi/neogeo.zip

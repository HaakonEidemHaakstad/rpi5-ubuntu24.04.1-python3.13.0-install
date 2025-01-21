echo "deb-src http://archive.ubuntu.com/ubuntu noble main" | sudo tee -a /etc/apt/sources.list 
sudo apt-get update
sudo apt-get build-dep python3 -y
sudo apt-get install build-essential gdb lcov pkg-config libbz2-dev libffi-dev libgdbm-dev libgdbm-compat-dev liblzma-dev libncurses5-dev libreadline6-dev libsqlite3-dev libssl-dev lzma lzma-dev tk-dev uuid-dev zlib1g-dev -y

wget https://www.python.org/ftp/python/3.13.0/Python-3.13.0.tgz
tar -xvzf Python-3.13.0.tgz
cd Python-3.13.0
./configure --enable-optimizations
make -j4
sudo make altinstall

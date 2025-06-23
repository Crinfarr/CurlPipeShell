apt install -y nmap git gcc make build-essential curl
git clone https://github.com/robertdavidgraham/masscan
cd masscan
make
make install
cd ~
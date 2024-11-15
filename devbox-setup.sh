#prereqs
add-apt-repository ppa:haxe/releases -y
apt update
apt install -y curl git make build-essential npm python3 python3-venv haxe
mkdir -p -- ~/.config ~/.config/code-server ~/.haxelib || true
# haxe
haxelib setup ~/.haxelib
# node
npm i -g n
n lts
n latest
# vscode.dev
curl -fsSL https://code-server.dev/install.sh | sh
echo "bind-addr: 0.0.0.0:8080
auth: none
cert: false" > ~/.config/code-server/config.yaml
systemctl enable --now code-server@$USER
systemctl restart code-server@$USER
# starship terminal
sh -c "$(curl -sS https://starship.rs/install.sh)"
echo 'eval "$(starship init bash)"' >> ~/.bashrc
# apply
source ~/.bashrc
sudo apt-get update
sudo apt-get install git -y
sudo apt-get install mercurial -y
sudo apt-get install bazaar -y
sudo apt-get install curl -y

export PATH=$PATH:/home/vagrant/bin:/usr/local/go/bin
export GOPATH=/home/vagrant

cd /tmp
curl -O https://storage.googleapis.com/golang/go1.7.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.7.linux-amd64.tar.gz
rm /tmp/go1.7.linux-amd64.tar.gz

go get -u github.com/alecthomas/gometalinter
gometalinter --install

cat <<EOT >> /home/vagrant/.bashrc
export PATH=$PATH:/home/vagrant/bin:/usr/local/go/bin
export GOPATH=/home/vagrant/
EOT

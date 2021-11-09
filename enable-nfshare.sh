# @CesareoAguirre
# Make of a pod a nfshare
sudo apt install nfs-common
sudo apt install nfs-kernel-server

sudo mkdir -p /srv/nfshare
sudo chmod 777 /src/nfshare
sudo chown nobody:nogroup /src/nfshare
echo "/srv/nfshare *(rw,sync,no_subtree_check)" >> /etc/exports
sudo exportfs -rav

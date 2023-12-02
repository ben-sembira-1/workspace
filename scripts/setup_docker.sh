echo "Removing all docker images and settings, Do you want to continue? [y/n]"
read -p "do you want? [y/n]" -N 1 remove-docker-images; echo
if [[ ${remove-docker-images} =~ ^[Yy]$ ]]
then
    sudo apt-get purge docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-ce-rootless-extras
    sudo rm -rf /var/lib/docker
    sudo rm -rf /var/lib/containerd
    echo "Uninstalling unofficial packages"
else
    echo "skipping image removal"
fi
echo "Removing unofficial packages"
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc;
do
    sudo apt-get remove $pkg;
done

echo "Adding dockers apt repository"
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
sudo rm /etc/apt/keyrings/docker.gpg
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

echo "Installing docker packages"
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
groupadd docker || echo "Docker group already exists, not doing anything"
sudo usermod -aG docker $USER

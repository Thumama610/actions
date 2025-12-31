echo "======= checking for docker and downloading it if not exist ======"

if [ "$(command -v docker)" == "" ] ; then
    # Add Docker's official GPG key:
sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
sudo tee /etc/apt/sources.list.d/docker.sources \
Types: deb \
URIs: https://download.docker.com/linux/ubuntu \
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") \
Components: stable \
Signed-By: /etc/apt/keyrings/docker.asc


sudo apt update
fi

sudo docker run hello-world

echo "============= done =============="
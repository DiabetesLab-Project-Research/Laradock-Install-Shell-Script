# ################################################################
# Laradock Install Shell Script
# --------------------------------
# This shell script provide you an easy way to one-time execute
# Laradock installation from scratch.
# This will bring you default installation of nginx and mysql.
# ***
# How to use:
# 1. chmod -R 775 "script name".
# 2. yes | ./"script name"
# 3. Wait until finished! :)
# ***
# A script by Arief Purnama Muharram (ariefpurnamamuharram@gmail.com)
# ################################################################

# Update repositories.
echo -e "\e[93mUpdating repositories... \e[0m"
apt-get update

# ===============================
# Complete Docker Installation  ||
# ===============================

# ************************
# Install Docker's base  ||
# ************************

echo -e "\e[93mWarning!"
echo -e "\e[93mBegin Docker's base installation! \e[0m"

# Set up the repository
# Update apt repository.
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
# Add Docker official GPG key.
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
# Verify fingerprint.
apt-key fingerprint 0EBFCD88
# Add Docker repository.
add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"
# Update repository.
apt-get update
# Install Docker Engine.
apt-get install docker-ce docker-ce-cli containerd.io
# Verify Docker installation.
docker run hello-world

echo -e "\e[92mDocker's base installation finished! \e[0m"

# ************************
# Install Docker Compose ||
# ************************

echo -e "\e[93mWarning!"
echo -e "\e[93mBegin Docker Compose installation! \e[0m"

# Get current sable release of Docker Compose.
curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# Apply executable permissions to the library.
chmod +x /usr/local/bin/docker-compose

echo -e "\e[92mDocker Compose installation finished! \e[0m"

# ================================================
# Complete Laradock Environment Installation     ||
# ================================================

echo -e "\e[93mWarning!"
echo -e "\e[93mBegin Laradock installation! \e[0m"

# Clone Laradock repository.
git clone https://github.com/Laradock/laradock.git ../laradock
# Enter Laradock folder.
cd ../laradock
# Copy .env file.
cp env-example .env
# Execute Laradock installation.
docker-compose up -d nginx mysql

echo -e "\e[92mLaradock installation finished! \e[0m"

# ============
# Finish     ||
# ============
echo -e "\e[92mFinished!"
echo -e "\e[92mLaradock installation finished! \e[0m"
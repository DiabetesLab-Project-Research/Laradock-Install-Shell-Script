# Update repositories.
apt-get update

# ===============================
# Complete Docker Installation  ||
# ===============================

# ************************
# Install Docker's base  ||
# ************************

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

# ************************
# Install Docker Compose ||
# ************************

# Get current sable release of Docker Compose.
curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# Apply executable permissions to the library.
chmod +x /usr/local/bin/docker-compose

# ================================================
# Complete Laradock Environment Installation     ||
# ================================================

# Clone Laradock repository.
git clone https://github.com/Laradock/laradock.git ../laradock
# Copy .env file.
cp env-example .env
# Execute Laradock installation.
docker-compose up -d nginx mysql

# ============
# Finish     ||
# ============
echo "Laradock installation finished!"
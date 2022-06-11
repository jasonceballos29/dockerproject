#
# Ubuntu Dockerfile
#
# https://github.com/dockerfile/ubuntu
#

# Pull base image.
FROM ubuntu:bionic

# Install.
RUN \
  apt-get -y upgrade \
  apt-get install -y build-essential \
  apt-get install -y software-properties-common \
  apt-get install -y byobu curl git htop man unzip vim wget \
  apt-get install -y sudo \
  apt-get install -y ca-certificates \
  apt-get install -y gnupg \
  apt-get install -y lsb-release \
  apt-get install -y docker.io \
  systemctl start docker \
  systemctl enable docker \
  sudo mkdir -p /etc/apt/keyrings \
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg \
  echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null \
  sudo apt-get update \
  sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin \
  sudo useradd -s /bin/bash -d /home/docker_user/ -m -G sudo docker_user \
  sudo passwd docker_user \
  rm -rf /var/lib/apt/lists/* \
  apt-get -qy autoremove

# Add files.
ADD root/.bashrc /root/.bashrc
ADD root/.gitconfig /root/.gitconfig
ADD root/.scripts /root/.scripts

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]
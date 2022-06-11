# BASIC
# 1. Ensure Docker is installed, and the Docker daemon is running.
# 2. Create a new local directory called "webfiles".
# 3. Create two files named "infofile.txt" and "exportfile.txt" in that directory.
# 4. Create a docker network called "webnet".
# 5. Start two containers using the centos image, and assign both to the "webnet" network.
# 6. Create mount points to the local "webfiles" directory in both containers
# 7. Verify both containers can see the file created in Step #3.
# Authored by Jason Ceballos
# 6/10/2022

FROM centos:7

LABEL Remarks="This is a dockerfile for Week 18 Project"

RUN yum -y update && \
    yum -y install sudo && \
    yum install -y yum-utils device-mapper-persistent-data lvm2 && \
    yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo && \
    yum -y install docker-ce docker-ce-cli containerd.io docker-compose-plugin && \
    #sudo systemctl start docker && \
    #groupadd docker \
    #usermod -aG docker $USER \
    sudo systemctl enable docker.service && \
    sudo systemctl enable containerd.service && \
    sudo yum clean all

# RUN docker run -itd --network=wk18_network centos

# ADD data/html.tar.gz /var/www/html/

ENV HOME /root

WORKDIR /root

# ENTRYPOINT ["ping"]

# CMD ["google.com"]
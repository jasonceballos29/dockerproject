FROM nginx
WORKDIR ./nginx/
RUN apt update -y
# Copying creationdate.txt to the containers /usr/share directory
COPY /nginx/creationdate.txt /usr/share

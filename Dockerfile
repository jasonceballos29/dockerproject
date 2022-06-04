FROM nginx
RUN apt update -y && apt install git -y
RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY content /usr/share/nginx/html
COPY conf /etc/nginx
# Copying myfile1.txt to the containers /usr/share directory
COPY creationdate.txt /usr/share
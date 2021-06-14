FROM ubuntu:18.04
RUN apt update
RUN apt install php libapache2-mod-php -y
RUN apt install apache2 -y
ADD website /var/www/html
RUN rm /var/www/html/index.html
CMD apachectl -D FOREGROUND

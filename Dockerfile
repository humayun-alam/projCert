
FROM ubuntu:18.04
RUN apt install apache2 -y
ADD website /var/www/html
RUN rm /var/www/html/index.html
CMD apachectl -D FOREGROUND

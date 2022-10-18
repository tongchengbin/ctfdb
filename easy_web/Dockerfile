FROM php:7.1-apache

# update apt
COPY www/ /var/www/html/
COPY start.sh /start.sh
RUN chmod +x /start.sh

COPY ./run.sh /var/www/run.sh
RUN chmod +x /var/www/run.sh

EXPOSE 22
EXPOSE 80

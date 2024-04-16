FROM php:7.1
COPY www /var/www/html/

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 80
WORKDIR /var/www/html
CMD ["php", "-S","0.0.0.0:80"]

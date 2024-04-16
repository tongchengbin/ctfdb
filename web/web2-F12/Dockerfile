FROM php:7.1
COPY ./files /tmp/
RUN rm -rf /var/www/html
RUN cp -rf /tmp/html /var/www/
COPY start.sh /start.sh
EXPOSE 80
RUN chown -R www-data:www-data /var/www/html
WORKDIR /var/www/html
CMD ["php", "-S","0.0.0.0:80"]
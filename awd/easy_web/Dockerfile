FROM tongchengbin/php:7.1
COPY www/ /var/www/html/
COPY start.sh /start.sh
RUN chmod +x /start.sh

COPY ./run.sh /var/www/run.sh
RUN chmod +x /var/www/run.sh

CMD ["sh","/var/www/run.sh"]
EXPOSE 22
EXPOSE 80

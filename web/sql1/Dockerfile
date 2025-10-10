FROM mattrayner/lamp:latest
RUN rm -fr /app
RUN rm -rf /run.sh
COPY src /app
COPY start.sh /start.sh
COPY run.sh /run.sh
RUN chmod +x /run.sh

COPY ./db/maoshe.sql /maoshe.sql
EXPOSE 80 
CMD ["/run.sh"]
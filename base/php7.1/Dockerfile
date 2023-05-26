FROM php:7.1-apache
# update apt
RUN rm -rf /var/lib/apt/lists/*
RUN sed -i 's#http://deb.debian.org#http://mirrors.cloud.tencent.com#g' /etc/apt/sources.list
RUN sed -i 's#http://security.debian.org#http://mirrors.cloud.tencent.com#g' /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y openssh-server
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN echo "service  ssh start" >/etc/ssh.sh
EXPOSE 22


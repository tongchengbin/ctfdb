FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# 安装 LAMP 环境
RUN apt-get update && apt-get install -y \
    apache2 \
    mysql-server \
    php \
    php-mysql \
    libapache2-mod-php \
    php-cli \
    php-common \
    php-mbstring \
    php-gd \
    php-intl \
    php-xml \
    php-zip \
    php-curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# 配置 Apache
RUN a2enmod rewrite

# 创建应用目录
RUN mkdir -p /app
WORKDIR /app

# 复制应用文件
COPY src /app
COPY start.sh /start.sh
COPY run.sh /run.sh

# 设置执行权限
RUN chmod +x /run.sh /start.sh

# 复制数据库文件
COPY ./db/maoshe.sql /maoshe.sql

# 暴露端口
EXPOSE 80 3306

# 启动服务
CMD ["/bin/bash", "/run.sh"]
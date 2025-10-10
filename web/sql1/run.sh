#!/bin/bash

# 配置 PHP 上传限制
if [ -f "/etc/php/7.4/apache2/php.ini" ]; then
    sed -ri -e "s/^upload_max_filesize.*/upload_max_filesize = 50M/" \
        -e "s/^post_max_size.*/post_max_size = 50M/" /etc/php/7.4/apache2/php.ini
fi

# 启动 MySQL 服务
service mysql start

# 等待 MySQL 启动
echo "=> Waiting for MySQL to start..."
for i in {1..30}; do
    if mysqladmin ping --silent; then
        break
    fi
    echo "Waiting for MySQL to be ready... ($i/30)"
    sleep 1
done

# 创建数据库和导入数据
echo "=> Creating database and importing SQL file..."
mysql -e "CREATE DATABASE IF NOT EXISTS maoshe;"
mysql maoshe < /maoshe.sql

# 配置 Apache
echo "=> Configuring Apache..."
echo '<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    DocumentRoot /app
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
    <Directory /app>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>' > /etc/apache2/sites-available/000-default.conf

# 启动 Apache 服务
service apache2 start

# 执行 start.sh 脚本
echo "=> Running start.sh..."
/start.sh

# 保持容器运行
echo "=> Container is now running..."
tail -f /var/log/apache2/access.log /var/log/apache2/error.log

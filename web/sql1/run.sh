#!/bin/bash

VOLUME_HOME="/var/lib/mysql"

# 配置 PHP 上传限制
sed -ri -e "s/^upload_max_filesize.*/upload_max_filesize = ${PHP_UPLOAD_MAX_FILESIZE}/" \
    -e "s/^post_max_size.*/post_max_size = ${PHP_POST_MAX_SIZE}/" /etc/php5/apache2/php.ini

# 初始化 MySQL 数据库
if [[ ! -d $VOLUME_HOME/mysql ]]; then
    echo "=> An empty or uninitialized MySQL volume is detected in $VOLUME_HOME"
    echo "=> Installing MySQL ..."
    mysql_install_db > /dev/null 2>&1
    echo "=> Done!"
else
    echo "=> Using an existing volume of MySQL"
fi

# 启动 supervisord
supervisord -n &

# 等待 MySQL 启动
echo "=> Waiting for MySQL to start..."
while ! mysqladmin ping --silent; do
    sleep 1
done

# 导入数据库
echo "=> Importing SQL file..."
mysql -u root < /maoshe.sql
chmod +x start.sh
./start.sh

# 保持容器运行
tail -f /dev/null

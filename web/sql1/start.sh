#!/bin/bash

# MySQL 配置
DB_HOST="localhost"
DB_USER="root"
DB_PASS=""
DB_NAME="maoshe"

# 创建 flags 表
echo "=> Creating flags table if not exists..."
mysql -h "$DB_HOST" -u "$DB_USER" "$DB_NAME" -e "CREATE TABLE IF NOT EXISTS flags (id INT AUTO_INCREMENT PRIMARY KEY, flag VARCHAR(255) NOT NULL);"

# 要插入的值
FLAG_VALUE="flag{test_flag_value}"
if [ ! -z "$1" ]; then
  FLAG_VALUE="$1"
fi

# 插入值到数据库
echo "=> Inserting flag into database..."
mysql -h "$DB_HOST" -u "$DB_USER" "$DB_NAME" -e "INSERT INTO flags (flag) VALUES ('$FLAG_VALUE');"

# 检查插入是否成功
if [ $? -eq 0 ]; then
  echo "Value '$FLAG_VALUE' inserted into database successfully."
else
  echo "Failed to insert value into database."
fi

# 设置文件权限
chown -R www-data:www-data /app

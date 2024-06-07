#!/bin/bash

# MySQL 配置
DB_HOST="localhost"
DB_USER="root"
DB_PASS=""
DB_NAME="maoshe"

# 要插入的值
FLAG_VALUE="$1"
export MYSQL_PWD=""

# 插入值到数据库
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" -e "INSERT INTO flags (flag) VALUES ('$FLAG_VALUE');"

# 检查插入是否成功
if [ $? -eq 0 ]; then
  echo "Value '$FLAG_VALUE' inserted into database successfully."
else
  echo "Failed to insert value into database."
fi


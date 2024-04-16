#!/usr/bin/env bash
sed -i "s/flag{this_is_flag}/$1/" /var/www/html/index.php
# rm -rf /start.sh

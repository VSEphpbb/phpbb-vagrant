#!/bin/sh

# Ensure composer deps are installed
cd /var/www/phpbb/phpBB
php ../composer.phar install

# Remove old phpBB installation files
rm -rf /tmp/phpbb.sqlite3
rm -rf /var/www/phpbb/phpBB/config.php
mysql -uroot -proot -e "DROP DATABASE IF EXISTS phpbb";
mysql -uroot -proot -e "CREATE DATABASE phpbb";

# Install phpBB
php install/phpbbcli.php install /var/www/setup/phpbb-install-config.yml

# Add DEBUG mode to phpBB to remove annoying installer warnings
sed -i "$ a @define('DEBUG', true);" /var/www/phpbb/phpBB/config.php

# Make SQLite database writable
sudo chown -R vagrant /tmp/phpbb.sqlite3

# Set a symlink for phpBB in the virtual host dir
ln -sf /var/www/phpbb/phpBB /var/www/public

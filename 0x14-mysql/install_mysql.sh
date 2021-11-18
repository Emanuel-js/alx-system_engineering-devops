#!/usr/bin/env bash
wget http://repo.mysql.com/mysql-apt-config_0.8.9-1_all.deb
dpkg -i mysql-apt-config_0.8.9-1_all.deb
apt-get update
apt-get install -y mysql-server

#!/bin/bash

systemctl stop httpd
certbot certonly --standalone -d sar.k636174.net -m shinji@k636174.net --agree-tos
certbot certonly --standalone -d imk.k636174.net -m shinji@k636174.net --agree-tos
certbot certonly --standalone -d mfr.k636174.net -m shinji@k636174.net --agree-tos
certbot certonly --standalone -d phpmyadmin.k636174.net -m shinji@k636174.net --agree-tos
certbot certonly --standalone -d sar.k636174.net -m shinji@k636174.net --agree-tos
certbot certonly --standalone -d zbr.k636174.net -m shinji@k636174.net --agree-tos
systemctl start httpd

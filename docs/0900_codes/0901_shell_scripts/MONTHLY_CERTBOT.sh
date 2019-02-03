#!/bin/bash
certbot renew --pre-hook "systemctl stop httpd" --post-hook  "systemctl start httpd"

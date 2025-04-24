#!/bin/bash
yum update -y
yum install -y httpd php
systemctl enable httpd
systemctl start httpd
echo "<?php phpinfo(); ?>" > /var/www/html/index.php

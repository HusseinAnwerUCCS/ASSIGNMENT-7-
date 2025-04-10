#!/usr/bin/env bash
#Hussein Anwer
#Date:2025/4/10
# should be downloaded on the dockerfile already first or it will be wrong/crash since
#it isnt fully downlaoded 
echo "starting nignx "
service nginx start
echo "welcome to (replacement)"
# the second half of this came out a little differently for me, these 2  sites helped a lot in
#this part of the swaping.
# https://stackoverflow.com/questions/10674867/nginx-default-public-www-location
#https://stackoverflow.com/questions/60451056/how-to-point-nginx-to-my-index-html-location
sed -i 's/Welcome to nginx/Welcome to Husseins page/' /var/www/html/index.nginx-debian.html
echo " nginx >> ngnx is pronounced as engineX"
sed -i 's/nginx/nginx (pronounced as engineX)/g' /var/www/html/index.nginx-debian.html
echo


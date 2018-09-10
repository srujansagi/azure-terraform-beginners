#!/bin/sh
# Deploys a simple Apache webpage with kittens as a service.

# cd /tmp
apt-get -y update > /dev/null 2>&1
apt install -y apache2 > /dev/null 2>&1

cat << EOM > /var/www/html/index.html
<html>
  <head><title>Meow!</title></head>
  <body style="background-image: linear-gradient(red,orange,yellow,green,blue,indigo,violet);">
  <center><img src="https://www.google.com/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwiQ65OolrHdAhXF0FMKHYIbCtQQjRx6BAgBEAU&url=https%3A%2F%2Fplay.google.com%2Fstore%2Fapps%2Fdetails%3Fid%3Dcom.aa.android%26hl%3Den_US&psig=AOvVaw10sh-J9lIwYr0pBiDZkB-R&ust=1536694241712052"></img></center>
  
  Hello - Good evening
  
  <marquee><h1>Copyrights!! Sagi-Srujan</h1></marquee>
  </body>
</html>
EOM

echo "Your demo is now ready."

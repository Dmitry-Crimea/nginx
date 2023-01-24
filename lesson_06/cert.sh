sudo apt update && sudo apt install nginx && apt install letsencrypt -y
mkdir -p /opt/www/acme
letsencrypt certonly --webroot -w /opt/www/acme -d ssl.3b54d9c4446225f6721ce16370cec007.kis.im
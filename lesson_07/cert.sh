sudo apt update && sudo apt install nginx && apt install letsencrypt -y
mkdir -p /opt/www/acme
letsencrypt certonly --webroot -w /opt/www/acme -d ssl.3b54d9c4446225f6721ce16370cec007.kis.im

mkdir -p /etc/nginx/ssl

openssl genrsa -out ca.key 2048
openssl req -new -x509 -days 3650 -key ca.key -out ca.crt

openssl genrsa -out client.key 2048
openssl req -new -key client.key -out client.csr
openssl x509 -req -days 3650 -in client.csr -CA ca.pem -CAkey ca.key -CAcreateserial -out client.crt -days 5000
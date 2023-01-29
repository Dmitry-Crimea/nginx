sudo apt update && sudo apt install nginx -y
sudo apt install apache2-utils -y
htpasswd -n user
 >- ввести пароль: test
vim /etc/nginx/.htpasswd
//setup
sudo apt-get install apache2-utils git nano docker.io
git clone https://github.com/letsencrypt/letsencrypt.git

//make ssl certs
./letsencrypt-auto certonly --standalone --email bd@guptadaniel.com -d cloud9.dev.guptadaniel.com -d magento.dev.guptadaniel.com

//proxy
sudo docker run --name=devweb_proxy -d -p 443:443 -p 80:80 -e VIRTUAL_PROTO=https -v /etc/letsencrypt/live/cloud9.dev.guptadaniel.com/:/etc/nginx/certs -v /var/run/docker.sock:/tmp/docker.sock:ro jwilder/nginx-proxy

//magento
sudo docker run -d -P -e VIRTUAL_HOST=magento.dev.guptadaniel.com -v /magento/html:/var/www/html --name magento_a dell/magento
sudo docker run -d -P -e MAGENTO_PASS="hMXaTPwIlAUPyu7lF63c" -e MYSQL_PASS="hMXaTPwIlAUPyu7lF63c" -v /magento/mysql:/var/lib/mysql -v /magento/html:/var/www/html -e VIRTUAL_HOST=dummydispensary.com --name magento_delta dell/magento

//cloud9
sudo docker run -e VIRTUAL_HOST=cloud9.dev.guptadaniel.com  --name cloud9_beta -it -d -P -v /:/workspace/ kdelfour/cloud9-docker

//symlink certs (examples, paths chopped)
sudo ln -s /etc/letsencrypt/live/CERTPATH 
sudo ln -s /etc/letsencrypt/live/KEYPATH

//passwords (examples)
//you have to restart the docker container running the proxy after adding a user to the passwords dir
sudo htpasswd -cb /proxy/passwords/cloud9.devweb.luftgrubba.com bruce passtring
sudo htpasswd -cb /proxy/passwords/cloud9_magento.devweb.luftgrubba.com bilalazhar passtring

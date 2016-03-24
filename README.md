//setup
sudo apt-get install apache2-utils git nano docker.io
git clone https://github.com/letsencrypt/letsencrypt.git

//make ssl certs
./letsencrypt-auto certonly --standalone --email bd@guptadaniel.com -d cloud9.dev.guptadaniel.com -d magento.dev.guptadaniel.com

//proxy
sudo docker run --name=devweb_proxy -d -p 443:443 -p 80:80 -e VIRTUAL_PROTO=https -v /etc/letsencrypt/live/cloud9.dev.guptadaniel.com/:/etc/nginx/certs -v /var/run/docker.sock:/tmp/docker.sock:ro jwilder/nginx-proxy

//magento
sudo docker run -d -P -e VIRTUAL_HOST=magento.dev.guptadaniel.com -v /magento/html:/var/www/html --name magento_a dell/magento

//cloud9
sudo docker run -e VIRTUAL_HOST=cloud9.dev.guptadaniel.com  --name cloud9_beta -it -d -P -v /:/workspace/ kdelfour/cloud9-docker

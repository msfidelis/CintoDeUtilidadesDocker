# PHP 7, Apache, MySQL (LAMP) docker environment

 ``` # docker-compose up```
 ``` # docker-compose stop ```

 * Será necessário criar um registro no arquivo /etc/hosts da sua máquina com o apontamento do vhost

 ```
 # vim /etc/hosts
 ```

 Adicione a linha do vhost do projeto 

 ```
 	127.0.0.1     teste.localhost.com.br
 ```

 * Na pasta ./sites, crie o diretório da aplicação, ou coloque a mesma na pasta ./sites/projeto/

 * Edite o arquivo de vhosts em ./etc/apache2/hosts.conf

 * Adicione um Virtualhost para o projeto 

 ```
 <VirtualHost *:80>
  ServerAdmin webmaster@host1.com
  DocumentRoot "/var/www/html/projeto"
  ServerName teste.localhost.com.br
  ServerAlias teste.localhost.com.br
</VirtualHost>

 ```

 Agora é só startar os containers
 
```
	# docker compose up -d 
```
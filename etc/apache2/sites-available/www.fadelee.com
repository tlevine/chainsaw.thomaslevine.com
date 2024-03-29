<VirtualHost *:80>
	ServerAdmin occurrence@thomaslevine.com
	ServerName www.fadelee.com

	DocumentRoot /srv/www.fadelee.com
	<Directory "/srv/www.fadelee.com/">
		Order allow,deny
		Allow from all
	</Directory>

	ErrorLog ${APACHE_LOG_DIR}/error.log
	LogLevel warn
	CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>

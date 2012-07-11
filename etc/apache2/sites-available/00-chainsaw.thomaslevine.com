<VirtualHost *:80>
	ServerAdmin occurrence@thomaslevine.com
	ServerName chainsaw.thomaslevine.com

	DocumentRoot /srv/chainsaw.thomaslevine.com
	<Directory "/srv/chainsaw.thomaslevine.com/">
		Order allow,deny
		Allow from all
	</Directory>

	ErrorLog ${APACHE_LOG_DIR}/error.log
	LogLevel warn
	CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>

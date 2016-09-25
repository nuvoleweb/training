# Install Drush. See http://docs.drush.org/en/master/install/
php -r "readfile('https://s3.amazonaws.com/files.drush.org/drush.phar');" > drush
chmod +x drush
sudo mv drush /usr/local/bin
drush init

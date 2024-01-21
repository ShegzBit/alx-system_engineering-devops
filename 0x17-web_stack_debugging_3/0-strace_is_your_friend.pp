# fix alx wordpress LAMP stack server

exec { 'Fix the Lamp':
  command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => '/usr/local/bin/:/bin/'
}

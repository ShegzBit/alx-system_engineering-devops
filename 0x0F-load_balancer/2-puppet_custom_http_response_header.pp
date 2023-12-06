# a file that configures haproxy using puppet


exec {'get update':
  command => '/usr/bin/apt-get update -y',
  path    => ['/usr/bin, /usr/sbin'],
}

package {'nginx':
  ensure   => 'installed',
  name     => 'nginx',
  provider => 'apt',
}

file {'/var/www/html/index.html':
  ensure  => 'present',
  path    => '/var/www/html/index.html',
  content => "Hello World!\n",
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
}

$config = '/etc/nginx/sites-available/default'
$redirect='\
        location /redirect {\
                return 301 https://www.google.com/;\
        }\n'

exec {'redirect_me':
  command => "sed -i '/server_name _;/a\\ ${redirect}' ${config}",
  path    => ['/usr/bin', '/bin'],
}

file {'/var/www/html/404.html':
  ensure  => 'present',
  path    => '/var/www/html/404.html',
  content => "Ceci n'est pas une page\n",
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
}

$f04 = "\terror_page 404 /404.html;"
$r2404 = '\
	location /404.html {\
		root /var/www/html;\
		internal;\
	}\n'

exec {'custom_error':
  command => "sed -i '/server_name _;/a\\ ${r2404}' ${config}",
  path    => ['/usr/bin/', '/bin'],
}

exec {'custom_error_contd':
  command => "sed -i '/server_name _;/a\\ ${f04}' ${config}",
  path    => ['/usr/bin', '/bin'],
}

$header = '\n\tadd_header X-Served-By \$hostname;'

exec {'configure_header':
  command => "sed -i '/server_name _;/a\\ ${header}' ${config}",
  path    => ['/usr/bin', '/bin'],
}

service {'restart_nginx':
  ensure => 'running',
  name   => 'nginx',
  enable => 'true',
}

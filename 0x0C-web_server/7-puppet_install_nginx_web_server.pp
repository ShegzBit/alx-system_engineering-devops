# puppet to install nginx and configure

exec {'update':
  command => 'apt-get update',
  path    => ['/usr/bin', '/usr/sbin'],
}

package {'nginx installation':
  ensure   => installed,
  name     => 'nginx',
  provider => 'apt',
}

file {'/var/www/html/index.html':
  ensure  => 'present',
  path    => '/var/www/html/index.html',
  content => 'Hello World!',
  owner   => 'root',
  group   => 'root',
  mode    => '0644',
}

$redirect = '\
	location /redirect_me {\
		return 301 https://www.google.com;\
	}'

$config = '/etc/nginx/sites-available/default'

exec {'append':
  command => "sed -i '/server_name _;/a\\ ${redirect}' ${config}",
  path    => ['/usr/bin/', '/bin'],
}

service {'restart':
  ensure => running,
  name   => 'nginx',
  enable => 'true',
}

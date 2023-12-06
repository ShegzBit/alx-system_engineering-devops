# a file that configures haproxy using puppet


exec {'get update':
  command => '/usr/bin/apt-get update -y',
  path    => ['/usr/bin'],
}

package {'nginx':
  ensure   => 'installed',
  name     => 'nginx',
  provider => 'apt',
}

$config = '/etc/nginx/sites-available/default'
$header = '\n\tadd_header X-Served-By \$hostname;'

exec {'configure_header':
  command => "sed -i '/server_name _;/a\\ ${header}' ${config}",
  path    => ['/usr/bin', '/bin'],
}

exec{'nginx_restart':
  command => 'service nginx restart',
  path    => ['/usr/bin'],
}

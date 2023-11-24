# create a file in puppet

file { 'title':
ensure  => 'present',
path    => '/tmp/school',
mode    => '0744',
owner   => 'www-data',
group   => 'www-data',
content => 'I love Puppet'
}

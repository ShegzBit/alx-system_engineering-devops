# a puppet script to configure our ssh_config file

file { '/etc/ssh/ssh_config':
  ensure => 'present',
  path   => '/etc/ssh/ssh_config',
}

file_line { 'no pass word':
  path  => '/etc/ssh/ssh_config',
  line  => '    PasswordAuthentication no',
  match => '^PasswordAuthentication',
}

file_line { 'set my identiy file':
  path  => '/etc/ssh/ssh_config',
  line  => '    IdentityFile ~/.ssh/school',
  match => '^IdentityFile',
}

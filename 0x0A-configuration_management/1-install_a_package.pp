# installing a package using puppet with pip3 provider

package { 'Werkzeug':
  ensure   => '2.1.0',
  name     => 'Werkzeug',
  provider => 'pip3',
}

package { 'flask':
  ensure   => '2.1.0',
  name     => 'flask',
  provider => 'pip3',
}

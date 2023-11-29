# installing a package using puppet with pip3 provider

package { 'Werkzeug':
  ensure   => '2.1.1',
  provider => 'pip3',
}

package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}

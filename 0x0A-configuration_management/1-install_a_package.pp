# installing a package using puppet with pip3 provider

package { 'flask':
ensure   => '2.1.0',
provider => 'pip3'
}

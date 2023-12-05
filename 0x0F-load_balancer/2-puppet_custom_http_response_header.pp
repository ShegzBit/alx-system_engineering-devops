# a file that configures haproxy using puppet

package { 'haproxy':
  ensure   => 'installed',
  name     => 'haproxy',
  provider => 'apt'
}

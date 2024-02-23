# install_flask.pp

package { 'python3-pip':
  ensure => installed,
}

exec { 'install_flask':
  command     => '/usr/bin/pip3 install flask==2.1.0',
  path        => ['/usr/bin', '/usr/local/bin'],
  environment => ['LC_ALL=en_US.UTF-8', 'LANG=en_US.UTF-8'],
  unless      => '/usr/bin/pip3 show flask | grep -q "Version: 2.1.0"',
  require     => Package['python3-pip'],
}

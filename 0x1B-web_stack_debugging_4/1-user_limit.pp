# 1-user_limit.pp

# Increase the open files limit for the holberton user
user { 'holberton':
  ensure => present,
  shell  => '/bin/bash',
}

# Modify limits for the holberton user
file { '/etc/security/limits.d/holberton.conf':
  ensure  => file,
  content => "holberton hard nofile 65535\nholberton soft nofile 65535",
}

# Apply the limits immediately
exec { 'apply_user_limits':
  command => 'su - holberton -c "ulimit -n 65535"',
  path    => '/bin:/usr/bin',
  unless  => 'su - holberton -c "ulimit -n" | grep "65535"',
}

# Ensure the user can login without errors
file { '/home/holberton/.bash_profile':
  ensure  => file,
  owner   => 'holberton',
  group   => 'holberton',
  content => "export PATH=$PATH:/usr/local/bin",
}

# Notify the user's shell to reload
exec { 'reload_shell':
  command => 'su - holberton -c "source ~/.bash_profile"',
  path    => '/bin:/usr/bin',
  require => File['/home/holberton/.bash_profile'],
}

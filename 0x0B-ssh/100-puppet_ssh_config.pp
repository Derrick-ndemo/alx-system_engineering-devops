# Set up client ssh config file so that you can connect to the server without typing password
# Your ssh configuration file must be configured to use private key  ~/.ssh/school
# your ssh client configuration must be configured to refuse to authenticate using password


file_line { 'Turn off passwd auth':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => 'PasswordAuthentication no',
  replace => true,
}

file_line { 'Declare identity file':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => '    IdentityFile ~/.ssh/school',
  replace => true,
}

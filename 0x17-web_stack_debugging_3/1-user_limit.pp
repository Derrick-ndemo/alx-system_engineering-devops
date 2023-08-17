# 1-user limit 

exec { 'change-os-configuration-for-holberton':
  command => '/bin/sh -c "echo \' holberton soft nofile 4096\' >> /etc/security/limits.conf; echo \'holberton hard nofile 8192\' >> /etc/security/limits.conf"',
  unless  => '/bin/grep -q \'holberton soft nofile\' /etc/security/limits.conf',
}

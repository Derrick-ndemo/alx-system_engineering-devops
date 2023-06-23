# create a manifest that kills process named killmenow

exec { 'killmenow':
  command => 'pkill -f killmenow',
  path    => '/bin/',
}

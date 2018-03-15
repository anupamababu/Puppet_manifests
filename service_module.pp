#puppet apply site.pp
#puppet agent -t
node default {

file {'/etc/motd':
        content => 'This is my testing content',
      }
service {'postfix':
  ensure => 'stopped',
  enable => 'false',
}
}

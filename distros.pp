[root@master manifests]# ls nodes
freebsd.pp  ubuntu.pp  yum.pp
[root@master manifests]# cat nodes/*
class apache24 {
        if $::operatingsystem == 'FreeBSD' {
                package {
                        "apache24":
                        provider => pkgng,
                        ensure => present;
# For remove use following line:
#                       ensure => “absent”
                }
        }
}



class apache {
        if $::operatingsystem == 'Ubuntu' {
                package { "apache2":
                        ensure => latest
                }
        }
}

class httpd {
        if $::operatingsystem == 'CentOS' {
                package { "httpd":
                        ensure => latest
                }
        }
}


[root@master manifests]# cat nodes.pp
node 'slave' {
        include apache24
        include httpd
        include apache
}


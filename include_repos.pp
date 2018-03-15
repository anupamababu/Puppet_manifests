class repos {
        yumrepo { "webtatic":
                        descr          => "webtatic",
                        baseurl        => "https://mirror.webtatic.com/yum/el7/webtatic-release.rpm",
                        failovermethod => "priority",
                        gpgcheck       => "0",
                        enabled        => "1";
        }
        yumrepo { "epel":
                        descr          => "epel-release",
                        baseurl        => "http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm",
                        failovermethod => "priority",
                        gpgcheck       => "0",
                        enabled        => "1";
        }
        yumrepo { "remi":
                        descr   => "remi-release",
                        baseurl => "http://rpms.famillecollet.com/enterprise/remi-release-7.rpm",
                        failovermethod => "priority",
                        gpgcheck       => "0",
                        enabled        => "1";
        }
}

node 'slave' {
        include repos
}

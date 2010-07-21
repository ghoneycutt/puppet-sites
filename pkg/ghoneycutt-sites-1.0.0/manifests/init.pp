# Class: sites
#
# This module manages things that are generic for apache fronted web sites
#
# Actions:
#   creates /sites which would contain directories/symlinks to websites for apache to serve
#
# Requires:
#   class apache
#   class generic
#   class webalizer
#
class sites {

    include apache
    include generic
    include webalizer

    file {
        "/sites":
            mode   => "755",
            owner  => "apache",
            group  => "systems",
            ensure => directory;
        # htpasswd file containing all employees
        # meant for generic auth file when everyone should have access
        # and you don't have a directory service
        #"/etc/httpd/conf/employees":
        #    mode   => "600",
        #    owner  => "apache",
        #    source => "puppet:///modules/sites/employees";
    } # file
} # class sites

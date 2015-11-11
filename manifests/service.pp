# == Class jbossfuse::service
#
# This class is meant to be called from jbossfuse.
# It ensure the service is running.
#
class jbossfuse::service {

  service { $::jbossfuse::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}

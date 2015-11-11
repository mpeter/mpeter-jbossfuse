# == Class jbossfuse::params
#
# This class is meant to be called from jbossfuse.
# It sets variables according to platform.
#
class jbossfuse::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'jbossfuse'
      $service_name = 'jbossfuse'
    }
    'RedHat', 'Amazon': {
      $package_name = 'jbossfuse'
      $service_name = 'jbossfuse'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}

# == Class jbossfuse::params
#
# This class is meant to be called from jbossfuse.
# It sets variables according to platform.
#
class jbossfuse::params {

  $service_name = $::osfamily? {
    'Debian' => 'fuse',
    'RedHat' => 'fuse',
    'Amazon' => 'fuse',
    default  => 'fuse',
  }

  $version            = undef
  $install_source     = undef
  $install_cleanup    = true
  $java_home          = '/usr/java/jdk1.7.0_75'
  $package_temp_path  = '/tmp'
  $dirname            = '/opt/fuse'
  $extract_flags      = '--strip-components=1 -zxf'

}

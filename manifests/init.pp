# Class: jbossfuse
# ===========================
#
# Full description of class jbossfuse here.
#
# Parameters
# ----------
#
# * `sample parameter`
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
class jbossfuse (
  $package_name = $::jbossfuse::params::package_name,
  $service_name = $::jbossfuse::params::service_name,
) inherits ::jbossfuse::params {

  # validate parameters here

  class { '::jbossfuse::install': } ->
  class { '::jbossfuse::config': } ~>
  class { '::jbossfuse::service': } ->
  Class['::jbossfuse']
}

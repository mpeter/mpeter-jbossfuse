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
  $service_name = $::jbossfuse::params::service_name,
  
) inherits ::jbossfuse::params {

  # validate parameters here

  include ::archive
  include ::jbossfuse::install
  include ::jbossfuse::config
  include ::jbossfuse::service

  Class['archive'] ->
    Class['::jbossfuse::install'] ->
      Class['::jbossfuse::config'] ->
        Class['::jbossfuse::service']

}

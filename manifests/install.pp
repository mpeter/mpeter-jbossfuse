# == Class jbossfuse::install
#
# This class is called from jbossfuse for install.
#
class jbossfuse::install {

  package { $::jbossfuse::package_name:
    ensure => present,
  }
  $install_source = $jbossfuse::install_source

  $install_file = inline_template('<%=File.basename(URI::parse(@install_source).path)%>')

  archive { "$:q
${install_file}":
    source        => $wildfly::install_source,
    extract       => true,
    extract_path  => $wildfly::dirname,
    creates       => "${wildfly::dirname}/jboss-modules.jar",
    user          => $wildfly::user,
    group         => $wildfly::group,
    extract_flags => '--strip-components=1 -zxf'
  }

  ')

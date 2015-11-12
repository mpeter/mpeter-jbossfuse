# == Class jbossfuse::install
#
# This class is called from jbossfuse for install.
#
class jbossfuse::install (
){

  $install_source = $jbossfuse::install_source
  $install_file = inline_template('<%=File.basename(URI::parse(@install_source).path)%>')

  archive { "${jbossfuse::package_temp_path}/${install_file}":
    source        => $install_source,
    extract       => true,
    extract_path  => $jbossfuse::dirname,
    creates       => "${jbossfuse::dirname}/lib/karaf.jar",
    user          => $jbossfuse::user,
    group         => $jbossfuse::group,
    extract_flags => $jbossfuse::extract_flags,
    cleanup       => $jbossfuse::install_cleanup,
  }

}

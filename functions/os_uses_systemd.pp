function rspec_function_issue::os_uses_systemd {
  $is_sles_systemd = ( $::os['name'] == 'sles'
    and versioncmp( $::os['release']['major'], '12' ) >=0 )

  $is_ubuntu_systemd = ( $::os['name'] == 'ubuntu'
    and versioncmp( $::os['release']['major'], '15.04' ) >=0 )

  $is_el_systemd = ( $::os['family'] == 'RedHat'
    and versioncmp( $::os['release']['major'], '7' ) >=0 )

  $is_systemd = ( $is_sles_systemd or $is_ubuntu_systemd or $is_el_systemd )
}

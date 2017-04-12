function rspec_function_issue::os_uses_systemd_facts {
  $is_sles_systemd = ( $facts['os']['name'] == 'sles'
    and versioncmp( $facts['os']['release']['major'], '12' ) >=0 )
  $is_ubuntu_systemd = ( $facts['os']['name'] == 'ubuntu'
    and versioncmp( $facts['os']['release']['major'], '15.04' ) >=0 )
  $is_el_systemd = ( $facts['os']['family'] == 'RedHat'
    and versioncmp( $facts['os']['release']['major'], '7' ) >=0 )
  $is_systemd = ( $is_sles_systemd or $is_ubuntu_systemd or $is_el_systemd )
}

# == Class rspec_function_issue::install
#
# This class is called from rspec_function_issue for install.
#
class rspec_function_issue::install {

  package { $::rspec_function_issue::package_name:
    ensure => present,
  }
}

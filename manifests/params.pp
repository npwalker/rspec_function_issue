# == Class rspec_function_issue::params
#
# This class is meant to be called from rspec_function_issue.
# It sets variables according to platform.
#
class rspec_function_issue::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'rspec_function_issue'
      $service_name = 'rspec_function_issue'
    }
    'RedHat', 'Amazon': {
      $package_name = 'rspec_function_issue'
      $service_name = 'rspec_function_issue'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}

# == Class rspec_function_issue::service
#
# This class is meant to be called from rspec_function_issue.
# It ensure the service is running.
#
class rspec_function_issue::service {

  service { $::rspec_function_issue::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}

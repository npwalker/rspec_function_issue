# Class: rspec_function_issue
# ===========================
#
# Full description of class rspec_function_issue here.
#
# Parameters
# ----------
#
# * `sample parameter`
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
class rspec_function_issue (
  $package_name = $::rspec_function_issue::params::package_name,
  $service_name = $::rspec_function_issue::params::service_name,
) inherits ::rspec_function_issue::params {

  # validate parameters here

  $test = rspec_function_issue::os_uses_systemd()

  class { '::rspec_function_issue::install': } ->
  class { '::rspec_function_issue::config': } ~>
  class { '::rspec_function_issue::service': } ->
  Class['::rspec_function_issue']
}

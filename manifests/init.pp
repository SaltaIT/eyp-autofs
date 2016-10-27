# == Class: autofs
#
# === autofs documentation
#
class autofs(
                            $manage_package        = true,
                            $package_ensure        = 'installed',
                            $manage_service        = true,
                            $manage_docker_service = true,
                            $service_ensure        = 'running',
                            $service_enable        = true,
                          ) inherits autofs::params{

  class { '::autofs::install': } ->
  class { '::autofs::config': } ~>
  class { '::autofs::service': } ->
  Class['::autofs']

}

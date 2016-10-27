# == Class: autofs
#
# === autofs documentation
#
class autofs(
                            $manage_package        = true,
                            $package_ensure        = 'installed',
                            $manage_service        = true,
                            $manage_docker_service = true,
                            $service_ensure        = 'stopped',
                            $service_enable        = false,
                          ) inherits autofs::params{

  class { '::autofs::install': } ->
  class { '::autofs::service': } ->
  Class['::autofs']

}

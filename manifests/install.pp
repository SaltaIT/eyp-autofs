# == Class: autofs
#
# === autofs::install documentation
#
class autofs::install inherits autofs {

  if($autofs::manage_package)
  {
    # package here, for example: 
    #package { $autofs::params::package_name:
    #  ensure => $autofs::package_ensure,
    #}
  }

}

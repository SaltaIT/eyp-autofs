class autofs::service inherits autofs {

  #
  validate_bool($autofs::manage_docker_service)
  validate_bool($autofs::manage_service)
  validate_bool($autofs::service_enable)

  validate_re($autofs::service_ensure, [ '^running$', '^stopped$' ], "Not a valid daemon status: ${autofs::service_ensure}")

  $is_docker_container_var=getvar('::eyp_docker_iscontainer')
  $is_docker_container=str2bool($is_docker_container_var)

  if( $is_docker_container==false or
      $autofs::manage_docker_service)
  {
    if($autofs::manage_service)
    {
      service { 'autofs':
        ensure => $autofs::service_ensure,
        enable => $autofs::service_enable,
      }
    }
  }
}

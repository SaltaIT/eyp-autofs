class autofs::config inherits autofs {
  #
  file { '/etc/autofs.conf':
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template("${module_name}/autofs.erb"),
  }
}

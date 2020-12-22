# Provides a Network Time Protocol (NTP) server for local devices.
class pil_ntp_server {

  package { 'ntp':
    ensure => latest,
  }

  service { 'ntp':
    ensure  => running,
    enable  => true,
    require => Package['ntp']
  }

  file { '/etc/ntp.conf':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    notify => Service['ntp'],
    source => ('puppet:///modules/pil_ntp_server/ntp.conf')
  }

}

# Provides a Network Time Protocol (NTP) server for local devices.
class pil_ntp_server {

  package { 'ntp':
    ensure => latest,
  }

}

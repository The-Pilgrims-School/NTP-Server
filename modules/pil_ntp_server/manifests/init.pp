# Provides a Network Time Protocol (NTP) server for local devices.
class pil_ntp_webserver {

  package { 'ntp':
    ensure => latest,
  }

}

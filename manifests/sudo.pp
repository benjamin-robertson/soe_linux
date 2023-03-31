# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include soe_linux::sudo
class soe_linux::sudo (
  Hash $config,
) {
  # notify{"soe_linux sudo hash is ${config}":}

  file { '/tmp/finalsudo.txt':
    content => "${config}",
  }

  # package {'telnet':
  #   ensure => absent,
  # }

  # exec { 'install telnet':
  #   command => '/usr/bin/apt install telnet',
  #   require => Package['telnet'],
  # }
}

# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include soe_linux::sudo
class soe_linux::sudo (
  Hash $config,
) {
  notify{"soe_linux sudo has is ${config}":}

  if defined('platform_module') {
    $platform_sudo_rules = lookup('platform_module::sudo')
    notify{"soe_linux lookup platform rules ${platform_sudo_rules}":}
    $final_rules = $config + $platform_sudo_rules
  } else {
    $final_rules = $config
  }

  file { '/tmp/finalsudo.txt':
    content => $final_rules.convert_to(String),
  }
}

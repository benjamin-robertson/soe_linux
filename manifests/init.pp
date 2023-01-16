# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include soe_linux
class soe_linux (
  Hash $sudo,
) {
  #include soe_linux::sudo
  class  {'platform_module':
    sudo => $sudo,
  }
}

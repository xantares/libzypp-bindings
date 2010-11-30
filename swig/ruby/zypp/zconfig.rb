#
# zypp/zconfig.rb
#
#

module Zypp
  class ZConfig
    def default_arch
      self.class.default_arch
    end
  end
end

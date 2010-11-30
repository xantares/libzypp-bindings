#
# zypp/zypp.rb
#

# Zypp::ZYppFactory::instance.getZYpp

module Zypp
  class Zypp
    def self.instance
      ZYppFactory.instance.getZYpp
    end
  end
  class Ptr
    #
    # root directory of target system
    # return +nil+ if not yet defined
    #
    def root
      t = self.target
      return t.root if t
      nil
    end
    
    def root= path
      self.instance.initialize_target path
    end
  end
end


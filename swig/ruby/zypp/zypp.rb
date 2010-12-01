#
# zypp/zypp.rb
#

# Zypp::ZYppFactory::instance.getZYpp

module Zypp
  class Zypp
    def self.instance
      ZyppFactory.instance.getZypp
    end
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
      self.initialize_target path
    end
    
    def load
      t = self.target
      t.load if t
    end
  end
end


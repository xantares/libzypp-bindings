/*
 * ZConfig.i
 * Document-class: ZConfig
 *
 * zypp-wide configuration settings
 *
 */

%nodefault bindings::ZConfig;
namespace bindings {
  class ZConfig {
  };
};

%extend bindings::ZConfig
{
  static const char *root()
  { return zypp::ZConfig::instance().systemRoot().asString().c_str(); }
  
  static Arch *default_arch()
  { static zypp::Arch arch = ZConfig::defaultSystemArchitecture();
    return &arch;
  }
  
  Arch arch()
  { return zypp::ZConfig::instance().systemArchitecture(); }
  
#if defined(SWIGRUBY)
%rename ("arch=") set_arch(const Arch & arch_r);
#endif
  void set_arch(const Arch & arch_r)
  { zypp::ZConfig::instance().setSystemArchitecture( arch_r ); }
  void reset_arch()
  { zypp::ZConfig::instance().resetSystemArchitecture(); }

}


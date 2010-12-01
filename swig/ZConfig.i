/*
 * ZConfig.i
 * Document-class: Config
 *
 * zypp-wide configuration settings
 *
 */

%nodefault bindings::Config;
namespace bindings {
  class Config {
  };
};

%extend bindings::Config
{
  static Config *instance()
  {
    return new bindings::Config();
  }
  const char *root()
  { return $self->_instance.systemRoot().asString().c_str(); }
  
  zypp::Arch *default_arch()
  { static zypp::Arch arch = zypp::ZConfig::defaultSystemArchitecture();
    return &arch;
  }
  
  zypp::Arch arch()
  { return $self->_instance.systemArchitecture(); }
  
#if defined(SWIGRUBY)
%rename ("arch=") set_arch(const zypp::Arch & arch_r);
#endif
  void set_arch(const zypp::Arch & arch_r)
  { $self->_instance.setSystemArchitecture( arch_r ); }
  void reset_arch()
  { $self->_instance.resetSystemArchitecture(); }

}


/*
 * ZYppFactory.i
 * :nodoc:
 *
 * This exposes the internal ZYppFactory class
 *
 */

%nodefault bindings::ZyppFactory;
namespace bindings {
  class ZyppFactory {
  };
};

%extend bindings::ZyppFactory
{
  static ZyppFactory *instance()
  {
    return new bindings::ZyppFactory();
  }
  bindings::Zypp *getZypp()
  { return new bindings::Zypp($self->_instance.getZYpp()); }
  bindings::Target *target()
  { return new bindings::Target($self->_instance.getZYpp()->getTarget()); }
  bool haveZypp()
  { return $self->_instance.haveZYpp(); }
}

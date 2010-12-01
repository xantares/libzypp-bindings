/*
 * Target.i
 * :nodoc:
 *
 * This exposes the internal Target class
 *
 */

/* :nodoc:
 * bindings::Target
 *
 */

%nodefault bindings::Target;
namespace bindings {
  class Target {
  };
};

/*
 * :nodoc:
 *
 * Internal declaration, access via monkeypatching
 *
 */
%extend bindings::Target {
  ~Target() { $self->_ptr->unload(); }
  const char *root() {
    return $self->_ptr->root().asString().c_str();
  }
  void load()
  { $self->_ptr->load(); }
}

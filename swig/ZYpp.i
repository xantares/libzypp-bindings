/*
 * ZYpp.i
 * :nodoc:
 *
 * This exposes the internal ZYpp class
 *
 */

/* :nodoc:
 * bindings::Zypp
 *
 * map equality
 */

%nodefault bindings::Zypp;
namespace bindings {
  class Zypp {
  };
};

/*
 * :nodoc:
 *
 * Internal declaration, access via monkeypatching
 *
 */
%extend bindings::Zypp {
#if defined(SWIGPERL)
  /*
   * :nodoc:
   */
  int __eq__( const bindings::Zypp *z )
#endif
#if defined(SWIGRUBY)
%typemap(out) int equal
   "$result = $1 ? Qtrue : Qfalse;";
%rename("==") equal;
  /*
   * Equality operator
   *
   */
  int equal( const bindings::Zypp *z )
#endif
    
#if defined(SWIGPYTHON)
  /*
   * :nodoc:
   * Python treats 'eq' and 'ne' distinct.
   */
  int __ne__( const bindings::Zypp *z )
  { return $self->_ptr != z->_ptr; }
  int __eq__( const bindings::Zypp *z )
#endif
  { return $self->_ptr == z->_ptr; }
  
  
  bindings::Target *target()
  { zypp::Target_Ptr ptr = $self->_ptr->getTarget();
    if (ptr) {
      return new bindings::Target(ptr);
    }
    return NULL;
  }
  void initialize_target(const char *root)
  { $self->_ptr->initializeTarget(root); }
  void rebuilddb(const char *root)
  { $self->_ptr->initializeTarget(root, true); }
  int size()
  { return $self->_ptr->pool().size(); }
#if defined(SWIGRUBY)
  void each()
  {
    zypp::ResPool::const_iterator it = $self->_ptr->pool().begin();
    while (it != $self->_ptr->pool().end()) {
      VALUE resolvable = SWIG_NewPointerObj(new bindings::Resolvable(it->resolvable()), SWIGTYPE_p_bindings__Resolvable, 1);
      rb_yield(resolvable);
    }
    return;
  }
#endif
}

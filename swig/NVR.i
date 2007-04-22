  struct NVR
  {
    /** Default ctor */
    NVR()
    {}

    /** Ctor */
    explicit
    NVR( const std::string & name_r,
         const Edition & edition_r = Edition() )
    : name( name_r )
    , edition( edition_r )
    {}

    /** Ctor from Resolvable::constPtr */
    explicit
    NVR( ResTraits<Resolvable>::constPtrType res_r );

    /**  */
    std::string name;
    /**  */
    Edition edition;

  public:
    /** Comparison mostly for std::container */
    static int compare( const NVR & lhs, const NVR & rhs )
    {
      int res = lhs.name.compare( rhs.name );
      if ( res )
        return res;
      return lhs.edition.compare( rhs.edition );
    }
  };
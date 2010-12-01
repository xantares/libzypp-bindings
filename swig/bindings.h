/*
 * bindings.h
 * 
 * Container classes wrapping ZYPP counted pointers to be used as real pointers
 * 
 */

namespace bindings {
	/*
	 * ZyppFactory
	 * 
	 */
	class ZyppFactory {
	public:
		zypp::ZYppFactory _instance;
		ZyppFactory() : _instance(zypp::ZYppFactory::instance()) { }
	};
	
	/*
	 * ZConfig
	 * 
	 */
	class ZConfig {
	};
	
	/*
	 * ZYpp
	 * 
	 */
	class Zypp {
	public:
		zypp::ZYpp::Ptr _ptr;
		Zypp(zypp::ZYpp::Ptr ptr) { _ptr = ptr; }
	};

	/*
	 * Target
	 * 
	 */
	class Target {
	public:
		zypp::Target_Ptr _ptr;
		Target(zypp::Target_Ptr ptr) { _ptr = ptr; }
	};

	/*
	 * Resolvable
	 * 
	 */
	class Resolvable {
	public:
		zypp::Resolvable::constPtr _ptr;
		Resolvable(zypp::Resolvable::constPtr ptr) { _ptr = ptr; }
	};
};



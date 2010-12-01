#
# CMakeLists.txt for libzypp-bindings/swig/ruby/tests
#

ENABLE_TESTING()

ADD_TEST(bindings_ruby_loading       ruby -C ${CMAKE_CURRENT_SOURCE_DIR} loading.rb)
ADD_TEST(bindings_ruby_arch          ruby -C ${CMAKE_CURRENT_SOURCE_DIR} arch.rb)
ADD_TEST(bindings_ruby_starting      ruby -C ${CMAKE_CURRENT_SOURCE_DIR} starting.rb)
ADD_TEST(bindings_ruby_commit_callbacks ruby -C ${CMAKE_CURRENT_SOURCE_DIR} commit_callbacks.rb)
ADD_TEST(bindings_ruby_zconfig       ruby -C ${CMAKE_CURRENT_SOURCE_DIR} zconfig.rb)
ADD_TEST(bindings_ruby_zypp_instance ruby -C ${CMAKE_CURRENT_SOURCE_DIR} zypp_instance.rb)

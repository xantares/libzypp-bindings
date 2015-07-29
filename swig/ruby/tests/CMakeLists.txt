#
# CMakeLists.txt for libzypp-bindings/swig/ruby/tests
#

ENABLE_TESTING()

ADD_TEST(bindings_ruby_loading      ${RUBY_EXECUTABLE} -C ${CMAKE_CURRENT_SOURCE_DIR} loading.rb)
ADD_TEST(bindings_ruby_arch.rb      ${RUBY_EXECUTABLE} -C ${CMAKE_CURRENT_SOURCE_DIR} arch.rb)
ADD_TEST(bindings_ruby_bytecount.rb ${RUBY_EXECUTABLE} -C ${CMAKE_CURRENT_SOURCE_DIR} bytecount.rb)
ADD_TEST(bindings_ruby_starting.rb  ${RUBY_EXECUTABLE} -C ${CMAKE_CURRENT_SOURCE_DIR} starting.rb)
ADD_TEST(bindings_ruby_target.rb    ${RUBY_EXECUTABLE} -C ${CMAKE_CURRENT_SOURCE_DIR} target.rb)

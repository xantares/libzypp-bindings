#
# CMakeLists.txt for libzypp-bindings/swig/perl5/tests
#

ENABLE_TESTING()

ADD_TEST(bindings_perl_loading ${PERL_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/loading.pl)
ADD_TEST(bindings_perl_starting ${PERL_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/starting.pl)

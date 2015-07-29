##
# CMakeLists.txt for libzypp-bindings/swig/python/tests
#

ENABLE_TESTING()

ADD_TEST(bindings_python_loading ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/loading.py)
ADD_TEST(bindings_python_repoinfo ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/repoinfo.py)
ADD_TEST(bindings_python_commit_callbacks ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/commit_callbacks.py)
# ADD_TEST(bindings_python_problems ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/problems.py)
# ADD_TEST(bindings_python_installed_path ${PYTHON_EXECUTABLE} ${CMAKE_CURRENT_SOURCE_DIR}/installed_path.py)

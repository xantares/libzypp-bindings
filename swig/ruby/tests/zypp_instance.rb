#
# Test zypp instance
#

$:.unshift File.expand_path(File.join(File.dirname(__FILE__),"..","..","..","build","swig","ruby"))
$:.unshift File.expand_path(File.join(File.dirname(__FILE__),".."))

require 'test/unit'
require 'zypp'

class LoadTest < Test::Unit::TestCase
  def test_zypp
    zypp = Zypp::Zypp.instance
    assert zypp
    # test backwards compatibility
    assert_equal zypp, Zypp::ZYppFactory::instance.getZYpp
  end
end

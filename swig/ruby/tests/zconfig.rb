#
# Test Zypp::Config
#

$:.unshift File.expand_path(File.join(File.dirname(__FILE__),"..","..","..","build","swig","ruby"))
$:.unshift File.expand_path(File.join(File.dirname(__FILE__),".."))

require 'test/unit'
require 'zypp'

class LoadTest < Test::Unit::TestCase
  def test_zconfig
    # get Config instance
    zconfig = Zypp::Config.instance
    assert zconfig
    
    # get system arch
    # ensure its an Arch and built in
    a = zconfig.arch
    assert a
    assert_equal Zypp::Arch, a.class
    assert a.builtin?
    
    d = zconfig.default_arch
    assert d
    assert d.builtin?

    # create 'impossible' arch
    # set it as system arch & check this setting
    b = Zypp::Arch.new("xyzzy")
    assert a != b
    zconfig.arch = b
    assert_equal b, zconfig.arch
    
    # back to correct arch
    zconfig.reset_arch
    assert_equal a, zconfig.arch
  end
end

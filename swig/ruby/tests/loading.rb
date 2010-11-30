#
# Test loading of the bindings
#

$:.unshift File.expand_path(File.join(File.dirname(__FILE__),"..","..","..","build","swig","ruby"))
$:.unshift File.expand_path(File.join(File.dirname(__FILE__),".."))


# test loading of extension
require 'test/unit'

class LoadTest < Test::Unit::TestCase
  def test_loading
    require 'zypp'
    puts "loaded"
    assert true
  end
end

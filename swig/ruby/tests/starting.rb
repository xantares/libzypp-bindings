#
# Test starting of zypp
#

$:.unshift File.expand_path(File.join(File.dirname(__FILE__),"..","..","..","build","swig","ruby"))
$:.unshift File.expand_path(File.join(File.dirname(__FILE__),".."))

require 'test/unit'
require 'zypp'

class LoadTest < Test::Unit::TestCase
  def test_starting
    zypp = Zypp::Zypp.instance
    assert zypp
    puts "zypp ok"
    r = zypp.root
    assert_equal nil, r # not initialized
    zypp.root = "/"
    puts "root set"
    assert_equal "/", zypp.root # initialized
    puts "root ok"
    zypp.load
    puts "root loaded"
    puts "#{zypp.size} resolvables loaded"
    zypp.each do |r|
      puts "Resolvable #{r.name}"
      break
    end
  end
end

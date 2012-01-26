require 'rubygems'
require 'benchmark/ips'
require 'mustache'

TEMPLATE = DATA.read

Benchmark.ips do |ips|
  ips.report("compiling mustache(#{RUBY_PLATFORM}:#{RUBY_VERSION})") { Mustache::Template.new(TEMPLATE).compile }
end

__END__
zomg! I'm a mustache template {{lol}} got some mustaches {{yep}}

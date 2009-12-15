#!/usr/bin/env ruby
path = File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib'))
$:.unshift(path) unless $:.include?(path)

Dir['**/*test.rb'].each do |test_file|
  puts test_file
  require File.join(File.dirname(__FILE__), File.basename(test_file))
end
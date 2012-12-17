#!/usr/bin/env ruby

require 'rtunnel'
require 'optparse'

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: rtunnel [options]"

  opts.on("-v", "--[no-]verbose", "Run verbosely") do |v|
    options[:verbose] = v
  end
  opts.on("-s STR", "--say STR", String, "Say something") do |str|
    options[:say] = str
  end
end.parse!

p options
p ARGV

str = options[:say]

Rtunnel::Connection.say(str)
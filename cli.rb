#!/usr/bin/env ruby

require 'json'

def read_file(path) 
  begin
    file = File.open(path)
    content = file.read
    file.close
    hash = JSON.parse(content)
  rescue
    puts "Failed to open"
    exit
  end
  return hash
end

puts read_file(File.open(ARGV[0]))
puts read_file(File.open(ARGV[1]))

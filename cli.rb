#!/usr/bin/env ruby

require 'json'
require './src/main'

include Main

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

updated_credit_line = finance_customer(read_file(File.open(ARGV[0])), read_file(File.open(ARGV[1])) )

puts get_processed_invoices

#!/usr/bin/env ruby

require 'json'
require './src/main'

include Main

if ARGV.length < 2
  puts "We need the parameters to the files"
  exit
end

def read_file(path) 
  begin
    file = File.open(path)
    content = file.read
    file.close
    hash = JSON.parse(content)
  rescue
    puts "Failed to open: " + path
    exit
  end
  return hash
end

credit_line = read_file(ARGV[0])
invoices = read_file(ARGV[1])

updated_credit_line = finance_customer(credit_line, invoices )

puts "\n\n • Financed amount:"
puts "\n " + credit_line['customer'].to_s

puts "\n\n • Financed amount of each invoice"
puts "\n " + JSON.pretty_generate(get_processed_invoices)

puts "\n\n • Remaining customer credit:"
puts "\n " + updated_credit_line.to_s

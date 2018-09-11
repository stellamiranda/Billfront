#!/usr/bin/env ruby

require 'json'
require './src/process_invoices'

include ProcessInvoices

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

updated_credit_line , processed_invoices = finance_customer(credit_line, invoices )

puts "\n\n • Financed amount:"
puts "\n " + credit_line['customer'].to_s

puts "\n\n • Invoices processed:"
puts "\n " + JSON.pretty_generate(processed_invoices)

puts "\n\n • Remaining customer credit:"
puts "\n " + updated_credit_line.to_s

require 'spec_helper'
require 'rspec/core'
require 'rspec'
require_relative '../src/process_invoices'
require_relative '../src/customer'
require_relative '../src/invoice'

describe ProcessInvoices do

  include ProcessInvoices

  before :each do 
    
    @customer = Customer.new(40000)
    @invoices = []
    @invoices << Invoice.new("fritz-kola", "inv-kola1", 16000) 
    @invoices << Invoice.new("Tommi's Burger Joint", "inv-burger1", 15000) 
    @invoices << Invoice.new("fritz-kola", "inv-kola2", 14000) 
    @invoices << Invoice.new("Dolores", "inv-burrito1", 15000) 
    @invoices << Invoice.new("Tommi's Burger Joint", "inv-burger2", 2000)

  end

  describe "finance_invoices" do

    it "should update Customer credit line" do
      customer_initial_credit_line = @customer.credit_line
      expect(finance_invoices(@invoices, @customer)).to_not eq customer_initial_credit_line
    end
    
  end

end

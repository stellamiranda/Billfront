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

  end

  describe "finance_invoices" do

    it "should update Customer credit line" do
      customer_initial_credit_line = @customer.credit_line
      expect(finance_invoices(@customer, @invoices)).to_not eq customer_initial_credit_line
    end
    
  end

end

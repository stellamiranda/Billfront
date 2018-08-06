require 'spec_helper'
require 'rspec/core'
require 'rspec'
require_relative '../src/customer'

describe Customer do

  context "When Create a New Customer" do

    it "should respond the :credit_line" do
      expect(Customer.new(40000) ).to respond_to(:credit_line)
    end

  end

end

require 'spec_helper'
require 'rspec/core'
require 'rspec'
require_relative '../src/invoice'

describe Invoice do
  before :each do
    @invoice = Invoice.new("fritz-kola", "inv-kola1", 16000 )   
  end

  context "When Create a New Invoice" do

    it "should respond to number" do
      expect(@invoice).to respond_to(:number)
    end
 
    it "Should respond to amount" do
      expect(@invoice).to respond_to(:amount)
    end
    
    it "Should respond to debtor" do
      expect(@invoice).to respond_to(:debtor)
    end

  end
  
end

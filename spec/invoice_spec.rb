require 'spec_helper'
require 'rspec/core'
require 'rspec'
require_relative '../src/invoice'

describe Invoice do

  before :each do 
    @invoice = Invoice.new("fritz-kola", "inv-kola1", 16000 )   
  end

  context "When Create a New Invoice" do

    it "should respond the :number" do
      expect(@invoice).to respond_to(:number)
    end
 
    it "Should respond to amount" do
      expect(@invoice).to respond_to(:amount)
    end

    it "Should respond to status" do
      expect(@invoice).to respond_to(:status)
    end
    
    it "Should not respond to debtor" do
      expect(@invoice).to_not respond_to(:debtor)
    end

    it "Should set default to status" do
      expect(@invoice.status).to eq "unpaid"
    end

  end

  context "When editing status of an Invoice" do

    before do 
      @invoice.status = "paid"
    end

    it "Should be updated with new value " do
      expect( @invoice.status).to eq "paid"
    end

  end

  context "When trying to edit an Invoice's number" do

    it "Should Not allow it" do
      expect(@invoice).to_not respond_to(:number=)
    end

  end

  context "When trying to edit an Invoice's amount" do

    it "Should Not allow it" do
      expect(@invoice).to_not respond_to(:amount=)
    end

  end

  context "When trying to edit an Invoice's amount" do

    it "Should Not allow it" do
      expect(@invoice).to_not respond_to(:amount=)
    end

  end
  
end

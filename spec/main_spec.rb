require 'spec_helper'
require 'rspec/core'
require 'rspec'
require_relative '../src/main'
require_relative '../src/customer'
require_relative '../src/invoice'

describe Main do

  include Main

  before :each do 

    @unique_invoice_params = [{"debtor"=>"burgermeister", "number"=>"inv-burger3", "amount"=>18000}]
    @invoices_params = [{"debtor"=>"fritz-kola", "number"=>"inv-kola1", "amount"=>16000}, {"debtor"=>"Tommi's Burger Joint", "number"=>"inv-burger1", "amount"=>15000}, {"debtor"=>"fritz-kola", "number"=>"inv-kola2", "amount"=>14000}, {"debtor"=>"Dolores", "number"=>"inv-burrito1", "amount"=>15000}, {"debtor"=>"Tommi's Burger Joint", "number"=>"inv-burger2", "amount"=>2000}]
    @customer_params = {"customer"=>40000}

    @invoices = []
    @invoices << Invoice.new("fritz-kola", "inv-kola1", 16000) 
    @invoices << Invoice.new("Tommi's Burger Joint", "inv-burger1", 15000) 
    @invoices << Invoice.new("fritz-kola", "inv-kola2", 14000) 
    @invoices << Invoice.new("Dolores", "inv-burrito1", 15000) 
    @invoices << Invoice.new("Tommi's Burger Joint", "inv-burger2", 2000)
    
  end

  describe "load_customer" do

    it "should return an array" do
      expect(load_customer(@customer_params)).to be_an_instance_of(Customer)
    end

  end

  describe "load_invoices" do

    it "should return an array" do
      expect(load_invoices(@invoices_params)).to be_an_instance_of(Array)
    end

    it "should return an array of Invoices" do
      expect(load_invoices(@invoices_params)).to all(be_an(Invoice))
    end
    
  end

  describe "finance_customer" do

    before do 

      @invoices = @invoices_params

      it "should return the Customer line of credit updated " do
        expect(finance_customer(@invoices_params, @customer_params)).to eq 7000
      end
        
      it "should return the Customer line of credit updated " do
        expect(get_processed_invoices).to include({"inv-burger1" => 15000, "inv-burger2" => 2000, "inv-burrito1" => 0, "inv-kola1" => 16000, "inv-kola2" => 0})
      end

    end

  end

  describe "get_processed_invoices" do

    it "should return an array" do
      expect(get_processed_invoices).to be_an_instance_of(Hash)
    end

  end

end

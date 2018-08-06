require 'spec_helper'
require 'rspec/core'
require 'rspec'
require_relative '../src/main'

describe Main do

  include Main

  before :each do 

    @invoices_params = [{ "debtor"=>"fritz-kola", "number"=>"inv-kola1", "amount"=>16000}, {"debtor"=>"Tommi's Burger Joint", "number"=>"inv-burger1", "amount"=>15000}, {"debtor"=>"fritz-kola", "number"=>"inv-kola2", "amount"=>14000}, {"debtor"=>"Dolores", "number"=>"inv-burrito1", "amount"=>15000}, {"debtor"=>"Tommi's Burger Joint", "number"=>"inv-burger2", "amount"=>2000 }]
    @customer_params = { "customer" => 40000 }
    
  end

  describe "load_costumer" do

    it "should return an array" do
      expect(load_costumer(@customer_params)).to be_an_instance_of(Array)
    end

  end

  describe "load_invoices" do

    it "should return an array" do
      expect(load_invoices(@invoices_params)).to be_an_instance_of(Array)
    end


    
  end

end

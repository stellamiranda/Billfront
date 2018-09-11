require 'spec_helper'
require 'rspec/core'
require 'rspec'
require_relative '../src/process_invoices'

describe ProcessInvoices do

  include ProcessInvoices

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

end

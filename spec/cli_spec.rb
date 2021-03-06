require 'spec_helper'
require 'rspec/core'
require 'rspec'

describe "CLI" do

  describe "Output" do 
    
    it "Should show an error message and exit when no argument passed" do 
      sample = "We need the parameters to the files\n"
      output = `./cli.rb`
      expect(output).to eq sample
    end 

    it "Should show an error message and exit when only one argument passed" do 
      sample = "We need the parameters to the files\n"
      output = `./cli.rb data/credit_line.json`
      expect(output).to eq sample
    end 

    it "Should match sample of example files given as argument" do 
      sample = File.read("./spec/samples/output")
      output = `./cli.rb data/credit_line.json data/invoices.json`
      expect(output).to eq sample
    end 

  end
end
require 'spec_helper'
require 'rspec/core'
require 'rspec'

describe "CLI" do

  describe "Output" do 
    
    it "Should show an error message and exit when no argument passed" do 
      sample = "We need the parameters to the files\n"
      output = `./cli.rb`
      expect(output).to eq sample
    end 

    it "Should show an error message and exit when only one argument passed" do 
      sample = "We need the parameters to the files\n"
      output = `./cli.rb data/credit_line.json`
      expect(output).to eq sample
    end 

    it "Should match sample of example files given as argument" do 
      sample = File.read("./spec/samples/output")
      output = `./cli.rb data/credit_line.json data/invoices.json`
      expect(output).to eq sample
    end 
  end

  describe "Should show an error message and exit when wrong credit line path to file argument passed" do 
    output = `./cli.rb not_existing_file.json data/invoices.json`
    it "is a pending example"
  end 

  describe "Should show an error message and exit when wrong invoices to file argument passed" do 
    output = `./cli.rb data/credit_line.json not_existing_file.json`
    it "is a pending example"
  end 

end

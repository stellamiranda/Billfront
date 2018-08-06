module Main

  require_relative 'invoice'
  require_relative 'customer'
  require_relative 'process_invoices'

  include ProcessInvoices

  def load_invoices(data_invoices_hash)
    invoices = []
    data_invoices_hash.each do |invoice|
      invoices << Invoice.new(invoice['debtor'],invoice['number'],invoice['amount'])
    end
    return invoices
  end

  def load_customer(data_credit_line_hash)
    return Customer.new(data_credit_line_hash['customer'])
  end

  def finance_customer(data_credit_line_hash, data_invoices_hash)
    @invoices = load_invoices(data_invoices_hash)
    customer = load_customer(data_credit_line_hash)
    return finance_invoices(@invoices, customer)
  end
  
  def get_processed_invoices
    paid_invoices = Hash.new
    @invoices.each do |invoice|
      if invoice.status == "paid"   
        paid_invoices.merge!({ invoice.number => invoice.amount })
      else
        paid_invoices.merge!({ invoice.number => 0 })
      end
    end
    return paid_invoices
  end
  
end

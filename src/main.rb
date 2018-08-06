module Main

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

  def finance_customer(data_invoices_hash, data_credit_line_hash)
    @invoices = load_invoices(data_invoices_hash)
    customer = load_customer(data_credit_line_hash)
    return finance_invoices(customer,  @invoices)
  end

end

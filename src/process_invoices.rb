module ProcessInvoices 
  
  def finance_invoices(invoices, customer)
    invoices.each do |invoice|
      if customer.credit_line >= invoice.amount
        customer.credit_line = customer.credit_line - invoice.amount
        invoice.status = "paid"
      end
    end
    return customer.credit_line
  end

end

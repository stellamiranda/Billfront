module ProcessInvoices 
  
  def finance_customer(credit_line, invoices)
    processed_invoices = []

    credit = credit_line['customer']
    invoices.each do |invoice|
      value = invoice["amount"].to_i
      if credit >= value
        credit = credit - value
        processed_invoices << invoice
      end
    end
    return credit, processed_invoices
  end

end

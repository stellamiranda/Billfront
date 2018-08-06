class Invoice

  attr_accessor :status
  attr_reader :amount, :number
  
  def initialize(debtor, number, amount)
    @debtor = debtor
    @number = number
    @amount = amount
    @status = 'unpaid'
  end

  def status
    @status
  end

  def amount
    @amount
  end

  def number
    @number
  end

  def status=(new_status)
    @status = new_status
  end
  
end

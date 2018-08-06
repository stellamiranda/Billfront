class Invoice

  attr_reader :amount, :number, :debtor
  
  def initialize(debtor, number, amount)
    @debtor = debtor
    @number = number
    @amount = amount
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

  def debtor
    @debtor
  end

end

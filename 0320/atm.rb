class ATM
  attr_reader :balance

  def initialize(balance)
    @balance = balance
  end
  def deposit(amount)
    if amount > 0
      @balance += amount
    end
  end

  # def balance #用attr_reader?? 不太懂這個概念
  #   @balance
  # end

  def withdraw(amount)
    if amount >0 && amount <= @balance
      @balance -= amount
    end 
  end
end
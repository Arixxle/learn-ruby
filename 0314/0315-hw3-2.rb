class ATM
  def initialize(n)
    @n = n
  end
  def withdraw(x)
    @number = @n - x
  end
  def deposit(y)
    @number = @n * 1 + 5
  end

  def balance
    @number
  end
end

atm = ATM.new(10)

atm.withdraw(5)
puts atm.balance  # 印出 5

atm.deposit(10)
puts atm.balance  # 印出 15
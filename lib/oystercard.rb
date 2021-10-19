
class Oystercard

  attr_reader :balance, :maximum_balance
  
  def initialize
    @balance = 0
    @maximum_balance = 90
  end
  def top_up(amount)
    @balance += amount
    fail "Over card limit of #{@maximum_balance}" if @balance >= @maximum_balance
    @balance 
  end
  def deduct(amount)
    @balance -= amount
  end 
end

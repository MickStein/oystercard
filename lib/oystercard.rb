
class Oystercard

  attr_reader :balance, :maximum_balance
  
  def initialize
    @balance = 0
    @maximum_balance = 90
  end
  def top_up(amount)
   p  @balance += amount
    fail "Over card limit" if @balance >= @maximum_balance
   @balance 
  end

end

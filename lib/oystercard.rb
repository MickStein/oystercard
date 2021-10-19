
class Oystercard

  attr_reader :balance, :maximum_balance, :card_state
  
  def initialize
    @balance = 0
    @maximum_balance = 90
    @card_state = false
  end
  def top_up(amount)
    @balance += amount
    fail "Over card limit of #{@maximum_balance}" if @balance >= @maximum_balance
    @balance 
  end
  def deduct(amount)
    @balance -= amount
  end 
  def touch_in
    @card_state = true
  end
  def touch_out
    @card_state = false
  end
  def in_journey
    @card_state
  end
end
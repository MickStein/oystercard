
class Oystercard

  attr_reader :balance, :maximum_balance, :card_state, :fare

  MAXIMUM_BALANCE = 90
  MINIMUM_BALANCE = 1
  
  def initialize
    @balance = 0

    @card_state = false
    @fare = 1
  end

  def top_up(amount)
    @balance += amount
    fail "Over card limit of #{MAXIMUM_BALANCE}" if @balance >= MAXIMUM_BALANCE
    @balance 
  end

  def deduct(amount)
    @balance -= amount
  end 

  def touch_in
    fail "Not enough funds" if @balance < MINIMUM_BALANCE
    @card_state = true
  end

  def touch_out
    @balance -= @fare
    @card_state = false
  end

  def in_journey?
    @card_state
  end
end

require 'oystercard'

describe Oystercard do
  it "Should have an initial balance of 0" do
    card = Oystercard.new

    expect(card.balance).to eq 0
  end
  it 'should add money to balance'do 
  card = Oystercard.new 
  expect(card.top_up(10)).to eq 10 
  end   
end
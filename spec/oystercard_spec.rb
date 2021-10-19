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
  
  it "should throw error when going over maximum balance" do
    card = Oystercard.new
    expect { card.top_up(91) }.to raise_error "Over card limit of 90"
  end 
  it 'should deduct money from balance'do 
    card = Oystercard.new
    card.top_up(20)
    expect(card.deduct(1.80)).to eq 18.20
  end 
end
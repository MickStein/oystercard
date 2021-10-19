require 'oystercard'

describe Oystercard do
  it "Should have an initial balance of 0" do
    card = Oystercard.new

    expect(card.balance).to eq 0
  end
end
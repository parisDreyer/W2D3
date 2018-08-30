require 'rspec'
require 'card'

describe Card do
  subject(:card) { Card.new({val: 11, suit: :spades})}  
  
  describe "#initialize" do
    let(:hash_test) { {val: 11, suit: :spades} } 
    it "creates instance of class Card" do
      expect(Card.new({val: 11, suit: :spades})).to be_a(Card)
    end
    
    it "represents Card as a Hash with value and suit key-value pairs" do
      expect(subject.val).to eq(11)
    end 
  end
  
  describe "#to_s" do
    it "return name of the card" do
      expect(subject.to_s).to match(/J/)
    end
  end
end
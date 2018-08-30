require 'rspec'
require 'deck'


describe Deck do

  subject(:deck) { [{val:1, suit: :spades}, {val:2, suit: :clubs},
    {val: 3, suit: :hearts}, {val:4, suit: :diamonds}] }
  let(:card) { double('card') }
  describe "#initialize" do
    
    it "creates a new instance of deck class" do
      expect(D)
    
    it "becomes an array of card hashes"
    
  end
  
  describe "#draw" do
  
    it "takes a card from the top of the deck"
    
  end
  
  # describe "#deal" do
  # 
  #   it "distributes five cards to each player"
  # 
  # 
  # end

end
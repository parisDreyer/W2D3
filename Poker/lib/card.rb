class Card
  CARD_NAMES = {1 => "A", 2 => "2", 3 => "3", 4 => "4", 5 => "5",
    6 => "6", 7 => "7", 8 => "8", 9 => "9", 10 => "10", 11 => "J",
    12 => "Q", 13 => "K"}

attr_accessor :val, :suit

  def initialize(card_hash)
    @val = card_hash[:val]
    @suit = card_hash[:suit]
  end
  
  def to_s
    CARD_NAMES[self.val]
  end
end
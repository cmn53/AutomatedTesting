
# card.rb

class Card
  attr_reader :value, :suit

  VALUES = (1..13)
  SUITS = [:hearts, :spades, :clubs, :diamonds]

  def initialize(value, suit)
    raise ArgumentError.new("The value must be between 1 and 13") unless VALUES.include?(value)
    raise ArgumentError.new("The suit must be hearts, spades, clubs or diamonds") unless SUITS.include?(suit)

    @value = value
    @suit = suit
  end

  def to_s
    case value
    when 1
      return "Ace of #{suit.to_s}"
    when 11
      return "Jack of #{suit.to_s}"
    when 12
      return "Queen of #{suit.to_s}"
    when 13
      return "King of #{suit.to_s}"
    else
      return "#{value} of #{suit.to_s}"
    end
  end
end

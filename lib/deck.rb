
# deck.rb

require_relative 'card'

class Deck
  attr_reader :cards

  def initialize
    @cards = []

    Card::SUITS.each do |suit|
      Card::VALUES.each do |value|
        @cards << Card.new(value, suit)
      end
    end
  end

  def draw
    drawn_card = cards.sample
    cards.delete(drawn_card)
    return drawn_card
  end

  def shuffle
    return cards.shuffle!
  end

  def count
    return cards.length
  end
end



require_relative 'spec_helper'

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases
    describe 'initialize' do
      it "is an instance of class Deck" do
        my_deck = Deck.new
        my_deck.must_be_instance_of Deck
      end

      it "has an array of cards" do
        my_deck = Deck.new
        my_deck.cards.must_be_kind_of Array
      end

      it "has 52 unique cards" do
        my_deck = Deck.new
        my_deck.cards.uniq.length.must_equal 52
      end

      it "each card is an instance of class Card" do
        my_deck = Deck.new
        my_deck.cards.each do |card|
          card.must_be_instance_of Card
        end
      end
    end

    describe 'draw' do
      it "returns an instance of class Card" do
        my_deck = Deck.new
        my_deck.draw.must_be_instance_of Card
      end

      it "removes the card from the deck" do
        my_deck = Deck.new
        drawn_card = my_deck.draw
        my_deck.cards.wont_include drawn_card
      end

      it "correctly accounts for the number of cards drawn" do
        my_deck = Deck.new
        3.times do
          my_deck.draw
        end
        my_deck.cards.length.must_equal 49
      end
    end

    describe 'shuffle' do
      it "returns an array" do
        my_deck = Deck.new
        my_deck.shuffle.must_be_kind_of Array
      end

      it "returns a collection of Card instances" do
        my_deck = Deck.new
        my_deck.shuffle.each do |card|
          card.must_be_instance_of Card
        end
      end

      it "returns 52 unique cards" do
        my_deck = Deck.new
        my_deck.shuffle.uniq.length.must_equal 52
      end

      it "contains all cards in the original deck" do
        my_deck = Deck.new
        shuffled_deck = my_deck.shuffle
        shuffled_deck.each do |card|
          my_deck.cards.must_include card
        end
      end
    end
    #
    describe 'count' do
      it "returns an integer" do
        my_deck = Deck.new
        my_deck.count.must_be_kind_of Integer
      end

      it "has the correct number of cards" do
        my_deck = Deck.new
        my_deck.count.must_equal 52
        my_deck.draw
        my_deck.count.must_equal 51
      end
    end
end

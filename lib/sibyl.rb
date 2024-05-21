require "sibyl/vcard"

class Sibyl
  attr_accessor :cards

  def initialize
    @cards = []
  end

  def add_card(...)
    c = VCard.new(...)
    @cards.push(c)
  end
end #class

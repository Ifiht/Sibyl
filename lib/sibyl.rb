require "sibyl/vcard"
require "sibyl/dialog"

class Sibyl
  attr_accessor :cards

  def initialize
    @cards = []
  end

  def add_card(...)
    c = VCard.new(...)
    @cards.push(c)
  end

  def new_dialog(...)
    d = Dialog.new(...)
    return d
  end
end #class

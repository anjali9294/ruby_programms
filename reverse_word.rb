class ReverseWord
  attr_accessor :string
  
  def initialize(str)
    self.string = str
  end

  def reverse_word
    string.split(' ').reverse.join(' ')
  end
end

object = ReverseWord.new('your copy is mine')

p object.reverse_word

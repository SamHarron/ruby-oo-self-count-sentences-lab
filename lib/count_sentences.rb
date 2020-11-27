require 'pry'

class String

  def sentence?
   self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")

  end

  def count_sentences
    self.split(/\.|\?|\!/).delete_if {|x| x.size < 2}.size
  end
end

puts "Hey.".end_with?(".")
puts "Hey!".end_with?(".")
puts ""
puts "Hey!".end_with?("?")
puts "Hey?".end_with?("?")
puts ""
puts "Hey!".end_with?("!")
puts "Hey?".end_with?("!")
puts ""
puts "This is a string! It has three sentences. Right?".count_sentences
puts "This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences
puts "Hey. What's Up?".count_sentences
puts "Hey".count_sentences

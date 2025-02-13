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
    self.split(/\?|\.|!/).reject { |c| c.empty? }.count 
  end
end

puts "This is a string! It has three sentences. Right?".count_sentences

require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.include?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    num_of_sentences = []
    
    num_of_sentences << self.split(/["!", "?", "."]/)
    num_of_sentences.reject{|e| e.length == 0}
    num_of_sentences.count
    binding.pry
    true
  end
end
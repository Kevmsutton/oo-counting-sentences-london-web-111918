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

  # def count_sentences
  # self.split("." || "?" || "!").length
  # end

  def count_sentences
  count = 0
  array = self.split(" ")
  array.each {|word| count += 1 if word.end_with?("!", "?", ".")}
  count
end

end

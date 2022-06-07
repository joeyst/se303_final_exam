# These three functions suffer from the "Data Clump" smell.
# Cure the smell, and keep the test green and unchanged.
# Hint: Let the existing functions use the new code that you
#       write.

class Phrase
  attr_reader :beginning, :middle, :conclusion
  def initialize(beginning, middle, conclusion)
    @beginning = beginning
    @middle = middle
    @conclusion = conclusion
  end
end

def word_count(beginning, middle, conclusion)
  phrase = Phrase.new(beginning, middle, conclusion)
  phrase.beginning.split.size +
  phrase.middle.split.size +
  phrase.conclusion.split.size
end

def letter_count(beginning, middle, conclusion)
  phrase = Phrase.new(beginning, middle, conclusion)
  phrase.beginning.size + phrase.middle.size + phrase.conclusion.size
end

def period_count(beginning, middle, conclusion)
  phrase = Phrase.new(beginning, middle, conclusion)
  phrase.beginning.scan(/\./).size +
  phrase.middle.scan(/\./).size +
  phrase.conclusion.scan(/\./).size
end

require 'pry'

class String

  def sentence?
    if self[-1] == "." 
      true
    else false
    end
  end

  def question?
    if self[-1] == "?"
      true
    else false
    end
  end

  def exclamation?
    if self[-1] == "!"
      true
    else false
    end
  end

  def count_sentences
    self_array = self.split(/(?<!\w\.\w.)(?<![A-Z][a-z]\.)(?<=\.|\?|\!)\s/)
    #binding.pry
    self_array.length
  end
end
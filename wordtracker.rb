class WordTracker

  def initialize(phrase)
    @phrase = phrase
    @phrase_array = @phrase.downcase.split("").delete_if{|x| x =~ /[^\w\s]/}.join("").split(" ")
  end

  def frequency
    frequency_hash = {}
    @phrase_array.each do |word|
      if frequency_hash.keys.include?(word)
        frequency_hash[word] += 1
      else
        frequency_hash[word] = 1
      end
    end
    frequency_hash
  end 

end

WordTracker.new('Toy boat? Toy boat! Toy boat?!?!').frequency
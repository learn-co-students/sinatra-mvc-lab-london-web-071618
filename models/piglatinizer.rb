class PigLatinizer
  def initialize
  end

  def piglatinize(words)
    words_array = words.split(" ")
    new_sentence = []
    words_array.each do |word|
      if ["a", "e", "i", "o", "u"].include?(word.split("").first.downcase)
        new_sentence << word + "way"
      else
      split_word = word.split /([aeiouy].*)/
      new_sentence << split_word[1]+split_word[0]+"ay"
      end
    end
    new_sentence.join(" ")
  end
end

class PigLatinizer
  attr_reader :text
  def initialize(text)
    @text = text
  end

  def translate(input)
    pig_string = ''
    if input[0] =~ /[aeiou]/
        return input + 'ay'
    elsif input[0] =~ /[^aeiou]/ && input[1] =~ /[aeiou]/
        return input[1..-1] + input[0] + 'ay'
    elsif input[0..1] =~ /[^aeiou]/
        return input[2..-1] + input[0..1] + 'ay'
    else
        return input[0] + input + 'ay'
    end
  end

  def translate_words
    text.split.map do |word|
      translate(word)
    end.join(' ')
  end

end

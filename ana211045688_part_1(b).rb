# HW1 - 1(b): Count words

def count_words(string)
  words = string.downcase.scan(/\b\w+\b/)
  result = Hash.new(0)

  words.each do |word|
    result[word] += 1
  end

  result
end
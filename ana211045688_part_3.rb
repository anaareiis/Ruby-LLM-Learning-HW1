# HW1 - 3: Combine anagrams

def combine_anagrams(words)
  groups = {}

  words.each do |word|
    key = word.downcase.chars.sort.join
    groups[key] ||= []
    groups[key] << word
  end

  groups.values
end
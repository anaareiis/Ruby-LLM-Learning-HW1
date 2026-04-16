# HW1 - 1(a): Palindrome checker

def palindrome?(string)
  cleaned = string.downcase.gsub(/\W/, '')
  cleaned == cleaned.reverse
end
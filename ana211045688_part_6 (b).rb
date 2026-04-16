# HW1 - 6(b): String palindrome method

class String
  def palindrome?
    cleaned = downcase.gsub(/\W/, '')
    cleaned == cleaned.reverse
  end
end
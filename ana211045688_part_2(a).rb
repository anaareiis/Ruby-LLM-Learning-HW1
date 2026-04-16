# HW1 - 2(a): Rock-Paper-Scissors winner

class WrongNumberOfPlayersError < StandardError; end
class NoSuchStrategyError < StandardError; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2

  valid = ['R', 'P', 'S']

  p1 = game[0]
  p2 = game[1]

  s1 = p1[1].upcase
  s2 = p2[1].upcase

  raise NoSuchStrategyError unless valid.include?(s1) && valid.include?(s2)

  return p1 if s1 == s2

  if (s1 == 'R' && s2 == 'S') ||
     (s1 == 'S' && s2 == 'P') ||
     (s1 == 'P' && s2 == 'R')
    p1
  else
    p2
  end
end
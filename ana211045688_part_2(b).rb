# HW1 - 2(b): RPS tournament winner

def rps_tournament_winner(tournament)
  if tournament[0][0].is_a?(String)
    return rps_game_winner(tournament)
  end

  left = rps_tournament_winner(tournament[0])
  right = rps_tournament_winner(tournament[1])

  rps_game_winner([left, right])
end
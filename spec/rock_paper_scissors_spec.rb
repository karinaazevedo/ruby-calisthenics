class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

def self.winner(player1, player2)
    a = player1.last.downcase
    b = player2.last.downcase
    case
    when a == b then
      return player1
    when a == "r" && b == "s" then
      return player1
    when a == "s" && b == "p" then
      return player1
    when a == "p" && b== "r" then
      return player1
    when b == "r" && a == "s" then
      return player2
    when b == "s" && a == "p" then
      return player2
    when b == "p" && a== "r" then
      return player2
    else 
      raise NoSuchStrategyError, "Strategy must be one of R,P,S"
    end
end


  def self.tournament_winner(tournament)
    if tournament[0].is_a?(String) && tournament[1].is_a?(String)
        return tournament
    else
       return self.winner(self.tournament_winner(tournament[0]), self.tournament_winner(tournament[1]))
    end
  end

end

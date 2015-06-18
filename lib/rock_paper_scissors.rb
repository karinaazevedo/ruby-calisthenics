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

  def self.tournament_winner(array)
    if array[0].is_a?(String) && array[1].is_a?(String)
        return array
    else
       return self.winner(self.tournament_winner(array[0]), self.tournament_winner(array[1]))
    end
  end
end

print RockPaperScissors.winner(['Armando','s'], ['Dave','S'])
array = [ ["Armando", "P"], ["Dave", "S"] ] 
tourney = [
        [
          [ ["Armando", "P"], ["Dave", "S"] ],      
          [ ["Richard", "R"], ["Michael", "S"] ]
        ],
        [
          [ ["Allen", "S"], ["Omer", "P"] ],
          [ ["David E.", "R"], ["Richard X.", "P"] ]
        ]
      ]

print " \n"

print RockPaperScissors.tournament_winner(tourney)

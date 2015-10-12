class GameRandom
  def initialize(games)
    @games = games
    @random = Random.new
  end

  def play(chips)
    chosen = @random.rand(@games.size)
    @games[chosen].play(chips)
  end
end

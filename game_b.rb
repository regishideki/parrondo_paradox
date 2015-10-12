class GameB
  def initialize
    @random = Random.new
  end

  def play(chips)
    guess = @random.rand(1..53)
    if chips % 3 == 0
      guess >= 49
    else
      guess > 14
    end
  end
end

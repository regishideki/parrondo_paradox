class GameA
  def initialize
    @random = Random.new
  end

  def play(chips)
    @random.rand(1..53) <= 26
  end
end

require_relative 'game_a'
require_relative 'game_b'
require_relative 'game_random'

game_a = GameA.new
game_b = GameB.new
game_r = GameRandom.new([game_a, game_b])

game_to_chips = {
  game_a => 0,
  game_b => 0,
  game_r => 0
}

100000.times do
  game_to_chips.each_with_index do |(game, chips), index|
    score_change = game.play(chips) ? 1 : -1
    game_to_chips[game] = game_to_chips[game] + score_change

    print "#{game_to_chips[game]}"
    print "\t" if index != 2
  end

  puts
end

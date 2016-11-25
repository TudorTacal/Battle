class Game

  attr_reader :player_1, :player_2, :players

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @players = [@player_1, @player_2]
  end

  def attack(player)
    player.attacked
    switch
  end

  private
    def switch
      @players.rotate!
    end
end

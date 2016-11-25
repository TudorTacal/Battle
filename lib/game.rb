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

  def lost
    return @player_1.name if @player_1.hitpoints == 0
    return @player_2.name if @player_2.hitpoints == 0
  end

  # def check_points
  #   return true if
  # end

  private
    def switch
      @players.rotate!
    end
end

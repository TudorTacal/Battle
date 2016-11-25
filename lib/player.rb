require_relative 'game'

class Player

  attr_reader :name, :game
  attr_accessor :hitpoints

  def initialize(name)
    @name = name
    @hitpoints = 60
  end

  def attacked
    self.hitpoints -= 10
  end

end

class Player
  attr_accessor :name, :hit_points, :turn, :lose

  def initialize(name, turn)
    @name = name
    @hit_points = 10
    @turn = turn
    @lose = false
  end

  def take_damage
    @hit_points -= 2
    check_score
  end

  def check_score
    @lose = true if @hit_points <= 0
  end

end

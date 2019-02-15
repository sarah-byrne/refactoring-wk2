class Player
  attr_reader :name, :position

  def initialize(name, position)
    @name = name
    @position = position
  end

  def change_position(new_position)
    @position = new_position 
  end
end

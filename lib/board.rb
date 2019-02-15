class Board
  LADDERS = {
      2 => 15,
      5 => 7,
      9 => 27,
      18 => 29,
      25 => 35
    }
  SNAKES = {
      17 => 4,
      24 => 16,
      32 => 30,
      34 => 12
  }

  LAST_SQUARE = 36

  def end_position(land_position)
    if snake?(land_position)
      SNAKES[land_position]
    elsif ladder?(land_position)
      LADDERS[land_position]
    else
      land_position
    end
  end

  def finish?(position)
    position >= LAST_SQUARE ? true : false
  end

  def snake?(position)
    SNAKES.include?(position)
  end

  def ladder?(position)
    LADDERS.include?(position)
  end
end

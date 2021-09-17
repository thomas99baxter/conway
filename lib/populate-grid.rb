require 'game-engine'
def populate_grid(game_properties)
  i = 1
  j = 1
  x = 0
  y = 0

  while i <= game_properties[:columns]
    game_properties[:grid].push([])
    i += 1
  end

  while j <= game_properties[:grid].length
    game_properties[:grid].each do |column|
      game_properties[:rows].times do 
        # while y < game_properties[:columns]
        #   puts y
        #   column.push(cell_initialisation(x, y))
        #   y += 1
        # end
        column.push(
          {
            x_position: 0,
            y_position: 0,
            is_alive?: false,
          }
        )
      end
      j += 1
    end
  end
  p game_properties[:grid]
  return game_properties
end
require 'game-engine'
def populate_grid(grid)
  i = 1
  j = 1

  while i <= grid[:columns]
    grid[:cells].push([])
    i += 1
  end

  while j <= grid[:cells].length
    grid[:cells].each do |column|
      grid[:rows].times do 
        column.push([])
      end
      j += 1
    end
  end
  p grid
  return grid
end
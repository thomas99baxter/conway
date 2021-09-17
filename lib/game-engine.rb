# global variable to set time between each tick
DELAY_INTERVAL = 0

# initialises grid for conways game of life
# param x Integer width of grid
# param y Integer height of grid
# returns Hash {
    # width: x
    # height: y
    # tick_count: Integer
# }
def grid_initialisation(x, y)
  return {
    width: x,
    height: y,
    tick_count: 0,
    cells: []
  }
end

# initialises grid for conways game of life
# param x Integer width of grid
# param y Integer height of grid
# returns Hash {
    # x_position: x
    # y_position: y
    # is_alive: boolean
# }
def cell_initialisation(x, y)
  return {
    x_position: x,
    y_position: y,
    is_alive?: false, # setting this to false for now, will be the result of our isalive calculator
  }
end

# add rows
# while i <= grid.width
#  grid.cells.push([])
#  i++
# end

# add columns
# while j <= grid.width
#  grid.cells.each |row| do
    # row.push([])
    # j++
#   end
# end

i = 1
j = 1
grid = {
  width: 5,
  height: 5,
  tick_count: 0,
  cells: []
}
while i <= grid[:width]
  grid[:cells].push([])
  i += 1
end
while j <= grid[:cells].length
  grid[:cells].each do |col|
    # figure out how to push in correct amount of columns according to grid.height
    col.push([], [])
    j += 1
  end
end

# create columns
# while i <= grid[:width]
#   grid[:cells].push([])
#   i += 1
# end
# while j <= grid[:height]
#   grid[:cells[j]] << []
#   j+=1
# end


# 3x3 grid
#         col1      col2     col3           col1     col2    col3           col1    col2     col3
# [ [row1[cell1], [cell2], [cell3]], [row2[cell1], [cell2], [cell3]], [row3[cell1], [cell2], [cell3]] ]

puts grid[:cells].to_s
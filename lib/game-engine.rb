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

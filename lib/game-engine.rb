# initialises grid for conways game of life
# param x Integer width of grid
# param y Integer height of grid
# returns Hash {
    # width: x
    # height: y
# }
def grid_initialisation(x, y)
  return {
    width: x,
    height: y,
    tick_count: 0,
  }
end

def cell_initialisation
end
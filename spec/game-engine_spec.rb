require './lib/game-engine'

describe "game engine" do
  describe "grid initialisation" do
    it "should return a hash" do
      expect(grid_initialisation(0,0).is_a? Hash).to eq true
    end

    it "should return a hash with identical width and height" do
      expect(grid_initialisation(4,4).is_a? Hash).to eq true
      expect(grid_initialisation(4,4)).to eq({:width=>4, :height=>4})
    end

    it "should return a hash with asymmetric width and height" do
      expect(grid_initialisation(10,3).is_a? Hash).to eq true
      expect(grid_initialisation(10,3)).to eq({:width=>10, :height=>3})
    end
  end
end

# [[],[],[]]
# grid = {
#   width: x
#   height: y
#   cells: [
#     [],[],[]
#   ]
# }

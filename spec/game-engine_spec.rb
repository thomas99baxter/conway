require './lib/game-engine'

describe "game engine" do
  describe "grid initialisation" do
    it "should return a hash" do
      expect(grid_initialisation(0,0).is_a? Hash).to eq true
    end

    it "should return a hash with identical width and height" do
      result = grid_initialisation(4,4)
      expect(result[:width]).to eq(4)
      expect(result[:height]).to eq(4)
    end

    it "should return a hash with asymmetric width and height" do
      result = grid_initialisation(10,3)
      expect(result[:width]).to eq(10)
      expect(result[:height]).to eq(3)
    end
    
    it "should return a hash with correct tick count" do
      result = grid_initialisation(10,3)
      expect(result[:tick_count]).to eq(0)
    end
  end
  describe "cell initialisation" do
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

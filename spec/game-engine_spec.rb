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
    it "should return a hash" do
      result = cell_initialisation(0,0)
      expect(result.is_a? Hash).to eq true
    end

    it "should set x position to x param" do
      result = cell_initialisation(4,4)
      expect(result[:x_position]).to eq 4
    end

    it "should set y position to y param" do
      result = cell_initialisation(4,4)
      expect(result[:y_position]).to eq 4
    end

    # this will need changed once proper cell testing is implemented
    it "should set is_alive to false" do
      result = cell_initialisation(4,4)
      expect(result[:is_alive?]).to eq false
    end
  end
end
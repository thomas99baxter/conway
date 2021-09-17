require './lib/populate-grid'
test_game_properties = {}
describe "populate-grid" do
  # reset test grid after each test
  before(:each) do 
    test_game_properties = {
      columns: 3,
      rows: 3,
      tick_count: 0,
      grid: []
    }
  end

  # it "should return an array" do 
  #   result = populate_grid(test_game_properties)
  #   expect(result[:grid].is_a? Array).to eq true 
  # end

  # it "should return an array where the top level length is equal to grid width" do 
  #   result = populate_grid(test_game_properties)
  #   expect(result[:grid].length).to eq 3
  # end

  it "should return an array where the nested level length is equal to grid height" do 
    result = populate_grid(test_game_properties)
    result[:grid].each do |row| 
      expect(row.length).to eq 3
    end
  end

  # it "should return an array of hashes" do 
  #   result = populate_grid(test_game_properties)
  #   result[:grid].each do |row| 
  #     row.each do |cell|
  #       expect(cell.is_a? Hash).to eq true
  #     end
  #   end
  # end

  # it "should return an array of hashes" do 
  #   result = populate_grid(test_game_properties)
  #   expect(result[:grid][0][0]).to eq(
  #     {
  #       x_position: 0,
  #       y_position: 0,
  #       is_alive?: false, 
  #     }
  #   )
  # end

  # it "should return an array of hashes" do 
  #   result = populate_grid(test_game_properties)
  #   expect(result[:grid][0][1]).to eq(
  #     {
  #       x_position: 0,
  #       y_position: 1,
  #       is_alive?: false, 
  #     }
  #   )
  # end
end
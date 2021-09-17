require './lib/populate-grid'
test_grid = {}
describe "populate-grid" do
  # reset test grid after each test
  before(:each) do 
    test_grid = {
      columns: 3,
      rows: 3,
      tick_count: 0,
      cells: []
    }
  end

  it "should return an array" do 
    result = populate_grid(test_grid)
    expect(result[:cells].is_a? Array).to eq true 
  end

  it "should return an array where the top level length is equal to grid width" do 
    result = populate_grid(test_grid)
    expect(result[:cells].length).to eq 3
  end

  it "should return an array where the nested level length is equal to grid height" do 
    result = populate_grid(test_grid)
    result[:cells].each do |row| 
      expect(row.length).to eq 3
    end
  end
end
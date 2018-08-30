require 'rspec'
require 'tdd'

describe "#remove_dups" do
  subject(:array) { [0, 0, 2, 1, 1, 3] }
  let(:unique_array) { [0, 2, 1, 3] }

  it "removes duplicate values from the array" do
    expect(remove_dups(array)).to eq(unique_array)
  end

end

describe "#two_sum" do
  subject(:main_array) { [-5, 0, 5, 1, -1] }
  let(:paired_indices) { [ [0, 2], [3, 4] ] }
  it "returns an empty array if no sum pairs are found" do
    expect(two_sum([])).to eq([])
    expect(two_sum([1,2,3])).to eq([])
  end
  it "returns paired indices of values that sum to zero" do
    expect(two_sum(subject)).to eq(paired_indices)
  end
  it "doesn't sum elements with themselves" do
    expect(two_sum([0,1,2])).to eq([])
  end
end

describe "#my_transpose" do

  subject(:matrix) { [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ] }
  let(:transposed_matrix) {
    [[0, 3, 6],
     [1, 4, 7],
     [2, 5, 8]] }
  let(:two_by_two) {
    [[0, 1],
    [1, 0]]
  }

  it "transposes a matrix" do
    expect(my_transpose(two_by_two)).to eq(two_by_two)
  end
  it "transposes a small matrix" do
    expect(my_transpose([[0]])).to eq([[0]])
  end
  it "transposes a large matrix" do
    expect(my_transpose(subject)).to eq(transposed_matrix)
  end
end


describe "#stock_picker" do
  subject(:stock_prices) { [4,6,5,9,3] }
  let(:best_days) { [0, 3] }
  let(:chosen_days) { stock_picker(subject) }

  it "picks the most profitable pair of days" do
    expect(stock_picker(subject)).to eq(best_days)
  end

  it "doesn't allow the sell date to be before the buy date" do
    expect(chosen_days.first).to be < (chosen_days.last)
  end

  it "returns empty array if stock price never increases" do
    expect(stock_picker([1, 1, 1, 1])).to be_empty
  end

end

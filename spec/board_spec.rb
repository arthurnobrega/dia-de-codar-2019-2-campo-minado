require_relative '../board'

RSpec.describe 'Board' do
  it 'initializes board' do
    expect(Board.new).to be_truthy
  end

  it 'initializes board with rows' do
    board = Board.new(1,1)
    expect(board.rows).to be(1)
  end

  it 'initializes board with columns' do
    board = Board.new(1,1)
    expect(board.columns).to be(1)
  end

  it 'initializes board with array' do
    board = Board.new(2,2)
    arr = [
      [1,1],
      [1,1]
    ]
    expect(board.to_array).to eq arr
  end

  it 'initializes board with array 4x5' do
    board = Board.new(4,5)
    arr = [
      [1,1,1,1,1],
      [1,1,1,1,1],
      [1,1,1,1,1],
      [1,1,1,1,1]
    ]
    expect(board.to_array).to eq arr
  end
end
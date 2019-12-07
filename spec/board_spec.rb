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
end
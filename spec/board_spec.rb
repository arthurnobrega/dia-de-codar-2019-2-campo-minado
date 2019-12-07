require_relative '../board'

RSpec.describe 'Board' do
  it 'initializes board' do
    expect(Board.new).to be_truthy
  end

  it 'initializes board with size' do
    board = Board.new(1,1)
    expect(board.rows).to be(1)
  end
end
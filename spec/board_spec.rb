require_relative '../src/board'

RSpec.describe Board do
  it 'creates a Board' do
    board = Board.new
    expect(board).to be_kind_of(Board)
  end

  it 'responds to #rows' do
    board = Board.new
    expect(board).to respond_to(:rows)
  end

  it 'has 8 rows by default' do
    board = Board.new
    expect(board.rows).to equal(8)
  end

  it 'responds to #columns' do
    board = Board.new
    expect(board).to respond_to(:columns)
  end
end
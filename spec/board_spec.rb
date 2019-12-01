require_relative '../src/board'

RSpec.describe Board do
  it 'creates a Board' do
    board = Board.new
    expect(board).to be_kind_of(Board)
  end

  it '#rows' do
    board = Board.new
    expect(board).to respond_to(:rows)
  end
end
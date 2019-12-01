require_relative '../src/board'

RSpec.describe Board do
  it 'creates a Board' do
    board = Board.new
    expect(board).to be_kind_of(Board)
  end

  describe 'test methods' do
    it 'responds to #rows' do
      board = Board.new
      expect(board).to respond_to(:rows)
    end

    it 'responds to #columns' do
      board = Board.new
      expect(board).to respond_to(:columns)
    end
  end
end
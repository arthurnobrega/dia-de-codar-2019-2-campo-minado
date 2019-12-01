require_relative '../src/board'

RSpec.describe Board do
  it 'creates a Board' do
    board = Board.new
    expect(board).to be_kind_of(Board)
  end

  describe '#rows' do
    it 'responds to #rows' do
      board = Board.new
      expect(board).to respond_to(:rows)
    end

    it 'has 8 rows by default' do
      board = Board.new
      expect(board.rows).to equal(8)
    end

    it 'changes default number of rows' do
      board = Board.new(rows: 10)
      expect(board.rows).to equal(10)
    end
  end

  describe '#columns' do
    it 'responds to #columns' do
      board = Board.new
      expect(board).to respond_to(:columns)
    end

    it 'has 8 columns by default' do
      board = Board.new
      expect(board.columns).to equal(8)
    end

    it 'changes default number of columns' do
      board = Board.new(columns: 10)
      expect(board.columns).to equal(10)
    end
  end
end
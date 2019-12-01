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

  describe '#bombs' do
    it 'responds to #bombs' do
      board = Board.new
      expect(board).to respond_to(:bombs)
    end
  end
  
  describe '#add_bomb' do
    it 'responds to #add_bomb' do
      board = Board.new
      expect(board).to respond_to(:add_bomb)
    end

    it 'returns error when bomb outside board' do
      board = Board.new
      expect{ board.add_bomb(x: 10, y: 0) }.to raise_error
    end
  end

  describe '#to_s' do
    it 'responds to #to_s' do
      board = Board.new
      expect(board).to respond_to(:to_s)
    end

    it 'prints 2x2 board without bombs' do
      board = Board.new(rows: 2, columns: 2)
      expect(board.to_s).to eq(
        "---------\n" +
        "| 0 | 0 |\n" +
        "| 0 | 0 |\n" +
        "---------\n"
      )
    end

    it 'prints 3x3 board without bombs' do
      board = Board.new(rows: 3, columns: 3)
      expect(board.to_s).to eq(
        "-------------\n" +
        "| 0 | 0 | 0 |\n" +
        "| 0 | 0 | 0 |\n" +
        "| 0 | 0 | 0 |\n" +
        "-------------\n"
      )
    end
  end
end
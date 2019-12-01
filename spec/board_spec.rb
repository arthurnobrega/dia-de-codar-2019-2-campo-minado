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

    it 'returns error when bomb x coordinate less than zero' do
      board = Board.new
      expect{ board.add_bomb(x: -1, y: 0) }.to raise_error(Board::BombOutsideBoardError)
    end

    it 'returns error when bomb x coordinate greater than board size' do
      board = Board.new
      expect{ board.add_bomb(x: 9, y: 0) }.to raise_error(Board::BombOutsideBoardError)
    end

    it 'returns error when bomb y coordinate less than zero' do
      board = Board.new
      expect{ board.add_bomb(x: 0, y: -1) }.to raise_error(Board::BombOutsideBoardError)
    end

    it 'returns error when bomb y coordinate greater than board size' do
      board = Board.new
      expect{ board.add_bomb(x: 0, y: 9) }.to raise_error(Board::BombOutsideBoardError)
    end

    it 'adds a bomb' do
      board = Board.new
      board.add_bomb(x: 0, y: 0)
      expect(board.bombs).to eq([[0, 0]])
    end

    it 'adds two bombs' do
      board = Board.new
      board.add_bomb(x: 0, y: 0)
      board.add_bomb(x: 5, y: 3)
      expect(board.bombs).to eq([[0, 0], [5, 3]])
    end
  end

  describe '#to_a' do
    it 'responds to #to_a' do
      board = Board.new
      expect(board).to respond_to(:to_a)
    end

    it 'returns board matrix as array' do
      board = Board.new(rows: 2, columns: 2)
      expect(board.to_a).to eq([
        [0, 0],
        [0, 0]
      ])
    end

    it 'returns board matrix as array with a bomb' do
      board = Board.new(rows: 2, columns: 2)
      board.add_bomb(x: 0, y: 0)
      expect(board.to_a).to eq([
        ['*', 1],
        [1, 1]
      ])
    end

    it 'returns board matrix as array with two bombs' do
      board = Board.new(rows: 2, columns: 2)
      board.add_bomb(x: 0, y: 0)
      board.add_bomb(x: 1, y: 1)
      expect(board.to_a).to eq([
        ['*', 2],
        [2, '*']
      ])
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
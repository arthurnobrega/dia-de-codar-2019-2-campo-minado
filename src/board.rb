class Board
  class BombOutsideBoardError < StandardError; end

  def initialize(rows: 8, columns: 8)
    @rows = rows
    @columns = columns
    @bombs = []
  end

  def rows
    @rows
  end

  def columns
    @columns
  end

  def bombs
    @bombs
  end

  def add_bomb(x:, y:)
    raise BombOutsideBoardError.new if x < 0 || x > @rows - 1 || y < 0 || y > @columns - 1
    @bombs.append([x, y])
  end

  def to_a
  end

  def to_s
    result = '-' * (@columns * 4 + 1) + "\n"
    @rows.times.each do |i|
      result += '| 0 ' * @columns + "|\n"
    end
    result += '-' * (@columns * 4 + 1) + "\n"

    result
  end
end
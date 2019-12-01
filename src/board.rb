class Board
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
    @columns
  end

  def add_bomb(x:, y:)
    raise "Bomb outside board" if x < 0 || x > @rows - 1 || y < 0 || y > @columns - 1
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
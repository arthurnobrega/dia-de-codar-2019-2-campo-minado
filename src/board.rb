class Board
  def initialize(rows: 8, columns: 8, bombs:[])
    @rows = rows
    @columns = columns
    @bombs = bombs
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

  def to_s
    result = '-' * (@columns * 4 + 1) + "\n"
    (1..@rows).each do |i|
      result += '| 0 ' * @columns + "|\n"
    end
    result += '-' * (@columns * 4 + 1) + "\n"

    result
  end
end
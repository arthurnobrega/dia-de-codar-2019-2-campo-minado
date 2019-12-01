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
    result = []

    @rows.times.each do |row_index|
      row = []
      @columns.times.each do |column_index|
        if @bombs.include?([row_index, column_index])
          row.append('*')
        else
          row.append(0)
        end
      end

      result.append(row)
    end

    result
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
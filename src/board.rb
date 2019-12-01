class Board
  class BombOutsideBoardError < StandardError; end
  class CellOutsideBoardError < StandardError; end

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
        row.append(get_cell(x: row_index, y: column_index))
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

  private

  def get_cell(x:, y:)
    raise CellOutsideBoardError.new if x < 0 || x > @rows - 1 || y < 0 || y > @columns - 1

    return '*' if @bombs.include?([x, y])
    
    number_of_bombs = 0
    number_of_bombs += 1 if @bombs.include?([x - 1, y - 1])
    number_of_bombs += 1 if @bombs.include?([x - 1, y])
    number_of_bombs += 1 if @bombs.include?([x - 1, y + 1])
    number_of_bombs += 1 if @bombs.include?([x, y - 1])
    number_of_bombs += 1 if @bombs.include?([x, y + 1])
    number_of_bombs += 1 if @bombs.include?([x + 1, y - 1])
    number_of_bombs += 1 if @bombs.include?([x + 1, y])
    number_of_bombs += 1 if @bombs.include?([x + 1, y + 1])

    return number_of_bombs
  end
end
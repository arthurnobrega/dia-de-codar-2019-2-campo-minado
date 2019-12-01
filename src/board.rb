class Board
  def initialize(rows: 8, columns: 8)
    @rows = rows
    @columns = columns
  end

  def rows
    @rows
  end

  def columns
    @columns
  end

  def to_s
    "---------\n" +
    "| 0 | 0 |\n" +
    "| 0 | 0 |\n" +
    "| 0 | 0 |\n" +
    "---------\n"
  end
end
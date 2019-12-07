class Board
  def initialize(rows = nil, columns = nil)
    @rows = rows
    @columns = columns
  end

  def rows
    @rows
  end

  def columns
    @columns
  end

  def to_array
    arr = [[1,1],
          [1,1]]
  end

end
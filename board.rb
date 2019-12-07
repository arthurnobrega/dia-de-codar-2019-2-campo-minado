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
    result = []

    @rows.times do |i|
      row = []
      @columns.times do |j|
        row.append(1)
      end
      result.append(row)
    end

    result
  end

end
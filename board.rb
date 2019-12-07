class Board
  def initialize(rows = nil, columns = nil)
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

  def to_array
    result = []

    @rows.times do |i|
      row = []
      @columns.times do |j|
        if @bombs.include?([i,j])
          row.append('*') 
        else
          row.append('.') 
        end
      end
      result.append(row)
    end

    result
  end

  def add_bomb(i, j)
    @bombs.append([i,j])
  end

end
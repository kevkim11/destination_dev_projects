=begin

Given the position of two queens on a chess board, indicate whether or not they are positioned so that they can attack each other.

In the game of chess, a queen can attack pieces which are on the same row, column, or diagonal.

A chessboard can be represented by an 8 by 8 array.

So if you're told the white queen is at (2, 3) and the black queen at (5, 6), then you'd know you've got a set-up like so:

You'd also be able to answer whether the queens can attack each other. In this case, that answer would be yes, they can, because both pieces share a diagonal.


=end

class Queens
  def initialize(pos)
    @hash = pos
    valid_queen
  end

  def valid_queen
    unless @hash[:white][0] >= 0 && @hash[:white][1] >= 0 && @hash[:white][0] < 8 && @hash[:white][1] < 8
      raise ArgumentError
    end
    if @hash[:black] != nil
      unless @hash[:black][0] >= 0 && @hash[:black][1] >= 0 && @hash[:black][0] < 8 && @hash[:black][1] < 8
        raise ArgumentError
      end
    end
  end

  def attack?
    # Write the logic if the two queen positions can attack.
    if @hash[:white][0] == @hash[:black][0] || @hash[:white][1] == @hash[:black][1]
      true
    elsif (@hash[:white][0] - @hash[:black][0]).abs == (@hash[:white][1] - @hash[:black][1]).abs
      true
    else
      false
    end
  end


end

p Queens.new(white: [2, 4], black: [6, 6]).attack?
class CircularBuffer
  def initialize(size)
    # Constructor
    @read_index = 1
    @write_index = 1
    @end_index = size
    @arr = Array.new(size)
  end

  def read
    if @read_index > @end_index
      @read_index %= @end_index
    end
    if @arr[@read_index - 1].nil?
      raise BufferEmptyException
    end
    read_value = @arr[@read_index - 1]
    @arr[@read_index - 1] = nil
    @read_index += 1
    read_value
  end

  def write(val)
    # insert/ my set
    if @write_index > @end_index
      @write_index %= @end_index
      # @write_index -= 1
    end
    if @arr.all?
      raise BufferFullException
    end
    @arr[@write_index-1] = val
    @write_index += 1
  end

  def clear
    @read_index = 1
    @write_index = 1
    @arr.map! { |x| x = nil}
  end

  def write!(val)
    if @write_index > @end_index
      @write_index %= @end_index
    end
    if @arr.all?
      # If the array is full, replace where you're suppose to read
      if @read_index > @end_index
        @read_index %= @end_index
      end
      @arr[@read_index - 1] = val
      @read_index += 1
    else
      @arr[@write_index-1] = val
      @write_index += 1
    end
  end

  class BufferEmptyException < Exception
    def initialize(msg = "Buffer is Empty!")
      super
    end
  end

  class BufferFullException < Exception
    def initialize(msg = "Buffer is Full!")
      super
    end
  end
end
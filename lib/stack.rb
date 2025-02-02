class Stack
  def initialize
    @buffer = []
  end

  def push(value)
    @buffer.push(value)
    self
  end

  def pop
    @buffer.pop
  end

  def empty?
    @buffer.empty?
  end

  def length
    @buffer.length
  end

  def shift
    @buffer.shift
  end
end
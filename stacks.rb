require 'byebug'

class MyStack

  attr_reader :store

  def initialize(store = [])
    @store = store
    @maximum = []
    @minimum = []
  end

  def pop
    popped = @store.pop
    @maximum.pop if popped == @maximum.last
    @minimum.pop if popped == @minimum.last
  end

  def push(val)
    # debugger
    @maximum << val if @maximum.empty? || val > @maximum.last
    @minimum << val if @minimum.empty? || val < @minimum.last
    @store << val
    # @minimum = val if @minimum.nil? || val < @minimum
    # @maximum = val if @maximum.nil? || val > @maximum
  end

  def max
    @maximum.last
  end

  def min
    @minimum.last
  end


  def empty?
    @store.empty?
  end

  def peek
    @store.last
  end

  def size
    @store.size
  end
end

class StackQueue

  attr_reader :in_stack, :out_stack

  def initialize
    @in_stack = MyStack.new
    @out_stack = MyStack.new
  end

  def empty?
    @in_stack.empty? && @out_stack.empty?
  end

  def enqueue(value)
    @in_stack.push(value)
  end

  def dequeue

    queueify if @out_stack.empty?
    @out_stack.pop
  end

  def min
    mins = []
    mins << @in_stack.min unless @in_stack.empty?
    mins << @out_stack.min unless @out_stack.empty?
    mins.min
  end

  def max
    maxes = []
    maxes << @in_stack.max unless @in_stack.empty?
    maxes << @out_stack.max unless @out_stack.empty?
    maxes.max
  end


  def queueify
    @out_stack.push(@in_stack.pop) unless @in_stack.empty?
  end

end


stack = StackQueue.new
# queue = StackQueue.new

# p stack.enqueue(4)
# # stack.dequeue
# # p stack.in_stack
# # p stack.out_stack
# p stack.min
stack.enqueue(1)
p stack.min
p stack.max
stack.enqueue(2)
p stack.min
p stack.max
stack.enqueue(6)
p stack.min
p stack.max
stack.enqueue(0)
p stack.min
p stack.max
stack.dequeue
p stack.min
p stack.max
stack.dequeue
p stack.min
p stack.max

#
# stack.push(0)
#
# queue.enqueue(stack.pop)
# queue.dequeue
#
# p stack.store
# p queue.store1

require_relative "node"

class LinkedList
  attr_accessor :head, :tail
  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    if head.nil?
      @head = Node.new(value)
      @tail = @head
      p head
      puts "node was added as head"
    else
      pointer = head
      until pointer.next_node.nil?
        pointer = pointer.next_node
      end
      pointer.next_node = Node.new(value)
      @tail = pointer.next_node
      puts "node was added as tail"
    end
  end
end
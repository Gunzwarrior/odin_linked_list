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
      puts "node was added as head because head = nil"
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

  def prepend(value)
    if head.nil?
      @head = Node.new(value)
      @tail = @head
      puts "node was added as head because head = nil"
    else
      temp = @head
      @head = Node.new(value, temp)
      puts "node was added as head"
    end
  end

  def size
    count = 1
    return 0 if head.nil?

    pointer = head
    until pointer.next_node.nil?
      count += 1
      pointer = pointer.next_node
    end
    count
  end

  # head and tail methods already available via attr_accessor

  def at(index)
    return "empty list" if head.nil?

    pointer = head
    begin
      index.times { pointer = pointer.next_node }
    rescue
      "no node at #{index}"
    end
    return "no node at #{index}" if pointer.nil?
    
    pointer
  end

  def pop
    return "empty list" if head.nil?

    if head == tail
      @head = nil
      @tail = nil
    else
      pointer = head
      second_pointer = nil
      until pointer.next_node.nil?
        second_pointer = pointer
        pointer = pointer.next_node
        p "pointer is #{pointer} ; second pointer is #{second_pointer}"
      end
      to_return = second_pointer.next_node
      second_pointer.next_node = nil
      @tail = second_pointer
      puts "node was popped"
      to_return
    end
  end

  def contains?(value)
    return false if head.nil?
    pointer = head
    return true if head.value == value
    until pointer.next_node.nil?
      pointer = pointer.next_node
      return true if pointer.value == value
    end
    false
  end

  def find(value)
    return 0 if head.value == value

    pointer = head
    index = 0
    until pointer.next_node.nil?
      pointer = pointer.next_node
      index += 1
      return index if pointer.value == value
    end
    nil
  end

  def to_s
    return "nil" if head.nil?
    string = "( #{head.value} ) -> nil"

    pointer = head
    until pointer.next_node.nil?
      pointer = pointer.next_node
      string.insert(-5, " ( #{pointer.value} ) ->")
    end
    string
  end

end
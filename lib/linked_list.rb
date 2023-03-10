# frozen_string_literal: true

require_relative 'node'

# Class representing a linked list
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
    else
      pointer = head
      pointer = pointer.next_node until pointer.next_node.nil?
      pointer.next_node = Node.new(value)
      @tail = pointer.next_node
    end
  end

  def prepend(value)
    if head.nil?
      @head = Node.new(value)
      @tail = @head
    else
      temp = @head
      @head = Node.new(value, temp)
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
    return 'empty list' if head.nil?

    pointer = head
    begin
      index.times { pointer = pointer.next_node }
    rescue StandardError
      "no node at #{index}"
    end
    return "no node at #{index}" if pointer.nil?

    pointer
  end

  def pop
    return 'empty list' if head.nil?

    if head == tail
      to_return = head
      @head = nil
      @tail = nil
      to_return

    else
      pointer = head
      second_pointer = nil
      until pointer.next_node.nil?
        second_pointer = pointer
        pointer = pointer.next_node
      end
      second_pointer.next_node = nil
      @tail = second_pointer
      pointer
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
    return 'empty list' if head.nil?

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
    return 'nil' if head.nil?

    string = "( #{head.value} ) -> nil"

    pointer = head
    until pointer.next_node.nil?
      pointer = pointer.next_node
      string.insert(-5, " ( #{pointer.value} ) ->")
    end
    string
  end

  def insert_at(value, index)
    return 'empty list' if head.nil?

    if index.zero?
      new_head = Node.new(value, head)
      @head = new_head

    else

      pointer = head
      second_pointer = nil
      begin
        index.times do
          second_pointer = pointer
          pointer = pointer.next_node
        end
      rescue StandardError
        return "rescue no node at #{index}"
      end
      second_pointer.next_node = Node.new(value, pointer)
      @tail = second_pointer.next_node if pointer.nil?
    end
  end

  def remove_at(index)
    return 'empty list' if head.nil?

    if index.zero?
      @tail = nil if head == tail
      to_return = @head
      new_head = head.next_node
      @head = new_head
      to_return
    else

      pointer = head
      second_pointer = nil
      begin
        index.times do
          second_pointer = pointer
          pointer = pointer.next_node
        end
      rescue StandardError
        return "rescue no node at #{index}"
      end
      return "no node at #{index}" if pointer.nil?

      second_pointer.next_node = pointer.next_node
      @tail = second_pointer if pointer.next_node.nil?
      pointer
    end
  end
end

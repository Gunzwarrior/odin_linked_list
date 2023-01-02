# frozen_string_literal: true

require_relative 'linked_list'

list = LinkedList.new
p list
p list.contains?('lol')
p list.at(1)
p list.pop
p list.remove_at(0)
puts list.to_s
list.prepend('B')
p list
p list.remove_at(1)
p list
p list.insert_at('O', 0)
p list
p list.pop
p list.contains?('B')
p list.at(1)
p list.find('b')
p list.find('B')
list.append('X')
p list
p list.find('X')
p list.find('B')
p list.pop
list.append('Y')
p list
list.append('Z')
p list
list.prepend('A')
p list
p list.size
list.append('omega')
p list
p list.size
p list.head
p list.tail
p list.at(0)
p list.at(1)
p list.at(3)
p list.at(10)
p list.pop
p list
p list.contains?('a')
p list.contains?('A')
p list.contains?('Z')
p list.find('Z')
p list.find('B')
p list.find('A')
puts list.to_s
p list.insert_at('L', 1)
p list.insert_at('M', 0)
puts list.to_s
p list.insert_at('N', 6)
puts list.to_s
p list
p list.insert_at('H', 8)
p list
p list.remove_at(0)
p list
puts list.to_s
p list.remove_at(1)
p list
puts list.to_s
p list.remove_at(4)
p list
puts list.to_s
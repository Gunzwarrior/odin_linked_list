require_relative 'linked_list'

list = LinkedList.new
p list
p list.at(1)
list.prepend("B")
p list
p list.at(1)
list.append("X")
p list
list.append("Y")
p list
list.append("Z")
p list
list.prepend("A")
p list
p list.size
list.append("omega")
p list
p list.size
p list.head
p list.tail
p list.at(0)
p list.at(1)
p list.at(3)
p list.at(10)
require_relative 'linked_list'

list = LinkedList.new
p list
list.prepend("B")
p list
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
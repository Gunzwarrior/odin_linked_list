require_relative 'linked_list'

list = LinkedList.new
p list
p list.contains?("lol")
p list.at(1)
p list.pop
list.prepend("B")
p list
p list.contains?("B")
p list.at(1)
p list.find("b")
p list.find("B")
list.append("X")
p list
p list.find("X")
p list.find("B")
p list.pop
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
p list.pop
p list
p list.contains?("a")
p list.contains?("A")
p list.contains?("Z")
p list.find("Z")
p list.find("B")
p list.find("A")
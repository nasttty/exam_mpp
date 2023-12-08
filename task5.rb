class Node
  attr_accessor :data, :next_node

  def initialize(data, next_node = nil)
    @data = data
    @next_node = next_node
  end
end


class LinkedList
  def initialize
    @head = nil
  end

  #додавання
  def append(data)
    new_node = Node.new(data)
    if @head.nil?
      @head = new_node
    else
      current_node = @head
      while current_node.next_node
        current_node = current_node.next_node
      end
      current_node.next_node = new_node
    end
  end

  #вивід
  def display
    current_node = @head
    while current_node
      puts current_node.data
      current_node = current_node.next_node
    end
  end

  #пошук
  def includes?(data)
    current_node = @head
    while current_node
      return true if current_node.data == data
      current_node = current_node.next_node
    end
    false
  end
end

linked_list = LinkedList.new #створення

#додавання
linked_list.append(1)
linked_list.append(2)
linked_list.append(3)

#вивід
puts "Елементи списку:"
linked_list.display

#пошук
puts "Елемент 2 є в списку? #{linked_list.includes?(2)}"  #true
puts "Елемент 4 є в списку? #{linked_list.includes?(4)}"  #false

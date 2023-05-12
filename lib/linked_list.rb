class LinkedList 
  attr_reader :head
  attr_accessor :head
  def initialize
    @head = head
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
    else
      current_node = @head
      until current_node.next == nil 
      end
      current_node.next = Node.new(data)
    end
  end

  def count
    if @head == nil
      count = 0
    else
      current_node = @head
      count = 1
      while current_node.next != nil
        count += 1
        current_node = current_node.next
      end
      count
    end
  end

  def to_string

  end
end
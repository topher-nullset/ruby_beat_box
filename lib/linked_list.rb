class LinkedList 
  attr_reader :head
  def initialize
    @head = nil
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
    else
      current_node = @head
      while current_node.next != nil 
        current_node = current_node.next
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
    if @head == nil
      string = "List is empty"
    else
      current_node = @head
      string = "#{current_node.data}"
      while current_node.next != nil
        current_node = current_node.next
        string = "#{string} #{current_node.data}"
      end
      string
    end
  end
end
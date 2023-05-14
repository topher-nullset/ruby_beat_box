class LinkedList 

  attr_reader :head
  def initialize
    @head = nil
  end
  # Initializes a new, epmty LinkedList.

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
  # Appends a new node at the end of the list or head if empty.

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
  # Counts the number of nodes in the LinkedList.

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
  # Returns the entire LinkedList as a string.

  def prepend(data)
    @head = Node.new(data, @head)
  end
  # Sets a new head and sets old head as next node.

  def insert(position, data)
    index = position - 1
    current_node = @head
    previous_node = @head
    index.times do
      preveious_node = current_node.next
    end
    node = Node.new(data, current_node.next)
    current_node.next = node
  end
  # Inserts a new node at the given position in the list.

end
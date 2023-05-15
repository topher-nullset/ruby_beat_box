class LinkedList 

  attr_reader :head
  def initialize
    @head = nil
  end
  # Initializes a new, epmty LinkedList.

  def tail
    current_node = @head
    while current_node != nil && current_node.next!= nil
      current_node = current_node.next
    end
    current_node
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
    else
      tail_node = tail
      tail_node.next = Node.new(data)
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
      previous_node = current_node.next
    end
    node = Node.new(data, current_node.next)
    current_node.next = node
  end
  # Inserts a new node at the given position in the list.

  def find(position, length = 1)
    index = position - 1
    current_node = @head
    index.times do
      current_node = current_node.next
    end
    string = "#{current_node.data}"
    len = length - 1
    len.times do
      current_node = current_node.next
      string = "#{string} #{current_node.data}"
    end
    string
  end
  # Finds and returns the node at the given position in the list.
  # Returns 1 item as standard but can return the folloing items 
  # in the list with the second argument.

  def includes?(data)
    current_node = @head
    while current_node != nil
      return true if current_node.data == data
      current_node = current_node.next
    end
    false
  end
  # Includes? starts at the head of the list and searches for a data match.
  # Returns true is the sting match is found, false otherwise.
  
  def pop
    return nil if @head == nil

    if @head.next == nil
      bubble_node = @head
      @head = nil
      return bubble_node.data
    end

    current_node = @head
    while current_node.next!= nil && current_node.next.next!= nil
      current_node = current_node.next
    end
    bubble_node = current_node.next
    # this saves the last node in the bubble. 
    current_node.next = nil
    return bubble_node.data
  end
  # Removes and returns the tail node of the list, even if it is the head.
end
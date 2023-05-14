class BeatBox
  
  attr_reader :list
  def initialize
    @list = LinkedList.new
  end
  # Adds an empty list to the new BeatBox.

  def append(data)
    new_beats = data.split(" ")
    new_beats.each do |beat| @list.append(beat)
    end
    new_beats
  end
  # Splits new beats into nodes and appends them to the list.

  def count
    count = 0
    current_node = @list.head
    until current_node.nil?
      count += 1
      current_node = current_node.next
    end
    count
  end

end
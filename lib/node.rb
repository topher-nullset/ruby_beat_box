class Node
  attr_reader :data
  attr_accessor :next
  def initialize(data,next_node=nil)
    @data = data
    @next = next_node
  end
  # Initializes a new node, given data.
  # Next node is set to nil automatically.
end
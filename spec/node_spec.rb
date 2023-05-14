require "./lib/node"

RSpec.describe do
  before(:each) do
    @node = Node.new("plop")
  end
  # This just places the code before each test.

  it 'is a node' do
    expect(@node).to be_a(Node)
  end
  # New nodes are Nodes given only data.
  
  it 'has data' do
    expect(@node.data).to eq('plop')
  end
  # Node data is a string and can be read.

  it 'has no next node' do
    expect(@node.next_node).to be_nil
  end
  # New nodes have no next node by default.
end
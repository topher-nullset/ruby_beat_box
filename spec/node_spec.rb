require "./lib/node"

RSpec.describe do
  before(:each) do
    @node = Node.new("plop")
  end
  it 'is a node' do
    expect(@node).to be_a(Node)
  end
  
  it 'has data' do
    expect(@node.data).to eq('plop')
  end

  it 'has no next node' do
    expect(@node.next_node).to be_nil
  end
end
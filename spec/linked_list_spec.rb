require './lib/node'
require './lib/linked_list'

RSpec.describe do
  before(:each) do
    @list = LinkedList.new
  end

  it 'is a linked list' do
    expect(@list).to be_a(LinkedList)
  end
  
  it 'has a nil head' do
    expect(@list.head).to be(nil)
  end

  it 'can append a node' do
    @list.append('doop')
    expect(@list.head).to be_a(Node)
    expect(@list.head.data).to eq("doop")
    expect(@list.head.next).to eq(nil) 
  end

  it 'has multiple nodes' do
    @list.append('doop')
    @list.append('deep')
    expect(@list.head).to be_a(Node)
    expect(@list.head.data).to eq("doop")
    expect(@list.head.next.data).to eq("deep")
  end

  it 'can count the number of nodes' do
    @list.append('doop')
    @list.append('deep')
    expect(@list.count).to eq(2)
  end

end
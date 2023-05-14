require './lib/node'
require './lib/linked_list'

RSpec.describe do
  before(:each) do
    @list = LinkedList.new
  end
  # Places the given code at the beginning of eact test.

  it 'is a linked list' do
    expect(@list).to be_a(LinkedList)
  end
  # New lists, even if empty are LinkedLists.
  
  it 'has a nil head' do
    expect(@list.head).to be(nil)
  end
  # New lists without nodes, have a head equal to nil.

  it 'can append a node' do
    @list.append('doop')
    expect(@list.head).to be_a(Node)
    expect(@list.head.data).to eq("doop")
    expect(@list.head.next).to eq(nil) 
  end
  # Empty Lists can be given a head node with append method.

  it 'has multiple nodes' do
    @list.append('doop')
    @list.append('deep')
    expect(@list.head).to be_a(Node)
    expect(@list.head.data).to eq("doop")
    expect(@list.head.next.data).to eq("deep")
  end
  # Append will continue to add new nodes to the end of the list.

  it 'can count the number of nodes' do
    @list.append('doop')
    @list.append('deep')
    expect(@list.count).to eq(2)
  end
  # Count will return the number of nodes in the list.

  it 'can print all list data' do
    @list.append('doop')
    @list.append('deep')
    expect(@list.to_string).to eq("doop deep")
  end
  # to_string will return the entire list as a string.
end
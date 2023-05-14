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

  it 'can prepend a node' do
    @list.append('plop')
    @list.append('suu')
    @list.prepend('dop')
    expect(@list.head.data).to eq("dop")
    expect(@list.count).to eq(3)
    expect(@list.to_string).to eq("dop plop suu")
  end
  # prepend will add a node at the beginning of the list.

  it 'can insert a node at some index' do
    @list.append('plop')
    @list.append('suu')
    @list.prepend('dop')
    @list.insert(1, 'woo')
    expect(@list.count).to eq(4)
    expect(@list.to_string).to eq("dop woo plop suu")
  end
  # insert will insert a new node with given data at the given index.

  it 'can find a node by position' do
    @list.append('plop')
    @list.append('suu')
    @list.prepend('dop')
    @list.insert(1, 'woo')
    @list.prepend('woo')
    @list.prepend('suu')
    expect(@list.to_string).to eq("suu woo dop woo plop suu")
    expect(@list.find(3)).to eq('dop')
    expect(@list.find(4, 3)).to eq('woo plop suu')
  end
  # find will return the data of the node at the given index.
  # if given a second variable, the following nodes will be returned.

  it 'can find a node given a string' do
    @list.append('plop')
    @list.append('suu')
    @list.prepend('dop')
    @list.insert(1, 'woo')
    expect(@list.includes?('dop')).to eq(true)
    expect(@list.includes?('soo')).to eq(false)
  end
  # Includes? will search the list for a tring that matches the given data.

  it 'can pop out the tail node'
end




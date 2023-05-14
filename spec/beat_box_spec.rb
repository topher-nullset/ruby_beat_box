require './lib/node'
require './lib/linked_list'
require './lib/beat_box'

RSpec.describe BeatBox do
  before(:each) do
    @bb = BeatBox.new
  end

  it 'is a BeatBox' do
    expect(@bb).to be_a(BeatBox)
    expect(@bb.list).to be_a(LinkedList)
    expect(@bb.list.head).to eq(nil)
  end
  # new works as expected

  it 'can append many beats in a string' do
    @bb.append('deep doo ditt')
    expect(@bb.list.head.data).to eq('deep')
    expect(@bb.list.head.next.data).to eq('doo')
    @bb.append('woo hoo shu')
    expect(@bb.list.tail.data).to eq('shu')
  end
  # appends new beats as new nodes in list.
end
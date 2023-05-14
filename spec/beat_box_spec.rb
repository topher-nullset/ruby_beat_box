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

  it 'can count beats in linked list' do
    @bb.append('deep doo ditt')
    @bb.append('woo hoo shu')
    expect(@bb.count).to eq(6)
    expect(@bb.list.count).to eq(6)
  end
  # Count is a method for both BeatBox and LinkedList.

  it 'can play the sounds in terminal' do
    @bb.append('deep doo ditt')
    @bb.append('woo hoo shu')
    expect(@bb.play).to eq(`say -r 500 Boing 'deep doo ditt woo hoo shu'`)
  end
  # Play will say the sounds in terminal with default voice and speed.
end
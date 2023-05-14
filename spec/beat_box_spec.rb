require './lib/node'
require './lib/linked_list'
require './lib/beat_box'

RSpec.describe BeatBox do
  before(:each) do
    @bb = BeatBox.new
  end

  it 'is a BeatBox' do
    expect(@bb).to be_a(BeatBox)
  end
end
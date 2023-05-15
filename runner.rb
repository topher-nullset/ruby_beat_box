require './lib/node'
require './lib/linked_list'
require './lib/beat_box'

bb = BeatBox.new
bb.append('deep doo ditt')
bb.append('woo hoo shu')
bb.append('deep doo ditt')
bb.append('woo hoo shu')
bb.append('deep doo ditt')
bb.append('woo hoo shu')
bb.play


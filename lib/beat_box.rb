class BeatBox
  
  attr_reader :list
  def initialize
    @list = LinkedList.new
  end
  # Adds an empty list to the new BeatBox.

  def append(data)
    new_beats = data.split(" ")
    new_beats.each do |beat| @list.append(beat)
    end
    new_beats
  end
  # Splits new beats into nodes and appends them to the list.

  def count
    @list.count
  end
  # Returns the number of beats int the associated list.

  def play(voice = "Boing", rate = 200)
    beats = @list.to_string
    command = "say -r #{rate} -v #{voice} '#{beats}'"
    `#{command}`
    return command
  end
 # Play will run the beatbox with the given voice and rate.
end
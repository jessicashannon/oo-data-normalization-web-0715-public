require 'tempfile'

class Song
  attr_accessor :title
  attr_reader :title, :artist

  def artist
    @name
  end

  def artist=(name)
    @name = name
  end

  def serialize
    sanitized_name = artist.name.downcase.split.join('_')
    file = Tempfile.new(sanitized_name + '.txt', 'tmp')
  file.write("#{artist.name} - #{title}")
  file.rewind
  file.close
  file.unlink
  end  

end

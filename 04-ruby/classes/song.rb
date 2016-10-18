require 'pry'

# factory blue print to make songs

# custom object
class Song

  def initialize(default_title, default_artist)
    @title = default_title
    @artist = default_artist
  end

  def title
    return @title
  end

  def to_s
    # return @title + ' by ' + @artist
    return "#{@title} by #{@artist}" # string interpolation
  end

end


binding.pry
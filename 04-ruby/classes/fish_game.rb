require 'pry'

class Fish

  def initialize(name, health = 20)
    @name = name
    @health = health
  end

  def get_name
    return @name
  end

  def sleep
    @health += 5
  end

end

class Shark

  def initialize(name, health)
    @name = name
    @health = health
  end


end

binding.pry
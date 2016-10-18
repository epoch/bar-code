require 'pry'

class Actor

  def initialize(name, fee)
    @name = name
    @fee = fee
  end

  def set_name(name)
    @name = name
  end

  def get_name
    return @name
  end

  def fee
    return @fee 
  end

  def perform
    puts 'performing'
  end

  def go_full_method
    puts 'I am channeling christian bale'
  end

end


class Movie

  def initialize(title, budget)
    @title = title
    @budget = budget
    @crew = []
  end

  def cast(actor)
    @crew.push(actor)
  end

  def list_actors
    @crew.each do |actor|
      puts actor.get_name
    end
  end

  def over_budget?
    if (@budget - all_actors_fee) < 0
      return true
    else
      return false
    end
  end

  def all_actors_fee
    total_fee = 0
    @crew.each do |actor|
      total_fee += actor.fee
    end

    return total_fee 
  end

end

a1 = Actor.new('cage', 5000)
m1 = Movie.new('sharknado', 7000)

binding.pry

=begin

[3] pry(main)> m1.over_budget?
=> false
[4] pry(main)> m1.all_actors_fee
=> 5000
[5] pry(main)> s1 = Actor.new('sharky shark', 9000)
=> #<Actor:0x000000030669d8 @fee=9000, @name="sharky shark">
[6] pry(main)> s1.fee
=> 9000
[7] pry(main)> m1.cast(s1)
=> [#<Actor:0x00000002991298 @fee=5000, @name="cage">,
 #<Actor:0x000000030669d8 @fee=9000, @name="sharky shark">]
[8] pry(main)> m1.all_actors_fee
=> 14000
[9] pry(main)> m1.over_budget?
=> true


=end




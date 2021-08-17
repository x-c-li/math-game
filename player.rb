class Player

  attr_accessor :name, :lives#reads and writes values

  def initialize(name)
    @name = name
    @lives = 3
  end

  def live_change 
    @lives = @lives - 1
  end 

end

# p = Player.new('L. Ron')
# puts p.name 
# puts p.lives
class Question 
  
  attr_reader :answer

  def initialize(player)
    @player = player
    @value1 = rand(1..20)
    @value2 = rand(1..20)
    @answer = @value1 + @value2
  end

  def random_question
    puts "#{@player} What is: #{@value1} plus #{@value2}"
  end 

  def validate(input)
    input == @answer
  end

end

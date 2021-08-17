class Question 
  
  attr_reader :answer

  def initialize
    @value1 = rand(1..20)
    @value2 = rand(1..20)
    @answer = @value1 + @value2
  end

  def random_question
    puts "What is: #{@value1} plus #{@value2}"
  end 

  def validate(input)
    input == @answer
  end

end

q = Question.new
puts q.random_question
puts q.answer
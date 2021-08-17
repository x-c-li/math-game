class Question 

  def random_number 
    rand(1..20)
  end 

  def random_operation 
    operations = ['plus', 'minus', 'times', 'divided by']
    index = rand(0..3)
    operations[index]
  end 

  def random_question
    puts "What is: #{random_number} #{random_operation} #{random_number}"
  end 

end

q = Question.new
puts q.random_question
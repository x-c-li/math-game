class Game

  attr_accessor 

  def initialize()
    @game_over = false
    @players = []
    @players[0] = Player.new('Player 1')
    @players[1] = Player.new('Player 2')
    @turn = 0
  end

  def start 
    while !@game_over do #while game isn't over, do all this stuff
      current_player = @players[@turn % 2] #is turn divisible by 2? play only on even number turns
      other_player = @players[(@turn + 1) % 2] #only goes on odd numbers
      new_question = Question.new(current_player.name)
      new_question.random_question #will ask question 
      input = gets.chomp.to_i #converting input to integer
      if new_question.validate(input)
        puts "CORRECT!"
      else 
        puts "INCORRECT"
        current_player.live_change
        if current_player.lives == 0 
          puts "#{other_player.name} WINS WITH A SCORE OF #{other_player.lives}/3"
          @game_over = true
          break
        end 
      end 
    puts "P1 #{@players[0].lives}, P2 #{@players[1].lives}" 
    @turn = @turn + 1
  end 

end

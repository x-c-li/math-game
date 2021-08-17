3 lives
number 1 to 20 
player 1 / player 2 
score 
announce score 
take turns 
generate a question (and generate an operation: +, -, /, *)


classes: 

Player 
  role: creating players with scores and adding scores to players 
  needs: 
    player name 
    attribute that's the score
    method for updating the score

Game: 
  role: keep track of which player goes and takes in input
  needs: 
    player names (2)
    keeps track of input/output
    method: run game (loop to alternate between players)
      have conditionals in loop 
    

Question Generator 
  role: generating the questions 
  needs: 
    random number generator 
    random operation generator
    a way to print the numbers to the screen 

  Random number generator 
    role: picking a two numbers b/w 1 to 20 
    needs: 
      a list of all the numbers in order 
      random number generator and then round down to index of item


  random operation generator
    role: picking one of 4 operations (+/-*) 
    needs: 
      a list of all the generators 
      random number generator and then round down to index of item

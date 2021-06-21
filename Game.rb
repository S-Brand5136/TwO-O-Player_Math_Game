class Game

def initialize
  @winner = {}
  @game_start = true
  @player1 = {}
  @player2 = {}
  @current_player = {}
  @question = Questions.new
end

def start_game
  @player1 = create_player
  @current_player = @player1
  @player2 = create_player
  puts "Game start!"

  while @game_start do
    new_turn(@question)

    if (@current_player.lives == 0)
      @current_player == @player1 ? @winner = @player2 : @winner = @player1
      @game_start = false
    end
    
    @current_player == @player1 ? 
    @current_player = @player2 : 
    @current_player = @player1
  end

  end_game
end

def new_turn(questions)
  puts "----- NEW TURN ------"
  @question.gen_question
  puts @question.print_question
  answer = gets.chomp.to_i
  
  if(@question.check_answer answer) 
    return puts "#{@current_player.name}: Well done! You got the correct answer"
  end
  
  puts "#{@current_player.name}: Seriously? No!"
  @current_player.lives -= 1
  print_scores
end

def create_player
  puts "Whats your name? "
  name = gets.chomp
  return Player.new(name)
end

def print_scores
  puts "#{@player1} vs #{@player2}"
end

def end_game
  puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3"
  puts "----- GAME OVER -----"

  puts "Play again? Y/N"
  answer = gets.chomp
  if(answer == "Y")
    @game_start = true
    start_game
  end

  puts "Good bye!"
end

end
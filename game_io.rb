=begin
  Role: The GameIO class handles user input and output, interacting with the players during the game.
  Information: N/A
  Initialization: N/A
  Public Methods:
  - prompt_player: Prompts the player for an answer to a math question
  - display_message: Displays a message to the players
  - display_scores: Displays the current scores and lives of both players
=end

class GameIO
  def display_welcome_message
    puts "Let's get this game started!"
  end

  def display_instructions
    puts "The game is simple, answer the math questions correctly to score points. Get an answer wrong and you'll lose a life. The game ends when the first person loses all 3 lives, at which point the player with the most points is the winner!"
    puts display_welcome_message
  end

  # Question
  def display_question(current_player, question)
    puts "#{current_player}: #{question}"
  end

  def get_player_answer
    gets.chomp
  end

  def display_correct_answer
    puts "YES! You are correct."
  end

  def display_wrong_answer
    puts "Seriously? No!"
  end

  def display_scores(player_1, player_2)
    puts "P1: #{player_1.score}/#{player_1.lives} vs P2: #{player_2.score}/#{player_2.lives}"
  end

  def display_next_turn
    puts "---- NEW TURN ----"
  end


  def announce_winner
    puts "PLAYER# wins with a score of SCORE/3!"
  end
end
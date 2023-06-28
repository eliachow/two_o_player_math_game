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
    puts "\nLet's get this game started!"
  end

  def display_instructions
    puts "\n****************************************************************************************\nThe game is simple, answer the math questions correctly to score points. Get an answer wrong and you'll lose a life. The game ends when the first person loses all 3 lives, at which point the player with the most points is the winner!\n****************************************************************************************"
    puts display_welcome_message
  end

  # Question
  def display_question(current_player, question)
    puts "\n#{current_player}: #{question}\n"
  end

  def get_player_answer
    gets.chomp
  end

  def display_correct_answer
    puts "\n ✅ YES! You are correct. \n"
  end

  def display_wrong_answer
    puts "\n ❌ Seriously? No!"
  end

  def display_scores(player_1, player_2)
    puts "P1: #{player_1.score}/#{player_1.lives} vs P2: #{player_2.score}/#{player_2.lives}"
  end

  def display_next_turn
    puts "\n---- NEW TURN ----\n"
  end


  def announce_winner(winner, score)
    puts "\n #{winner} wins with a score of #{score}!\n"
  end
end
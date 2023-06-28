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
  def welcome_message
    puts "Let's get this game started!"
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

  def announce_winner
    puts "PLAYER# wins with a score of SCORE/3!"
  end
end
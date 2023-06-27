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

  def player_answer
    gets.chomp
  end

  def announce_winner
    puts "PLAYER# wins with a score of SCORE/3!"
  end
end
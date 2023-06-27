require './game_io'
require './math_question'
require './player'

=begin
  Role: The Game class will contain the game loop where each instance of the loop represents one player's turn. It manages the flow of the game and determines the winner.
  Information:
  - Current player
  Initialization: n/a
  Public Methods:
  - start_game: Starts the game and manages the game loop
  - end_game: Ends the game and declares the winner
=end
class Game
  def initialize
    @game_io = GameIO.new
  end
 
  def start_game
    @game_io.welcome_message
  end

  def end_game
    @game_io.announce_winner
    puts "---- GAME OVER ----"
    puts "Good bye!"
  end

end

# Create new game instance
game = Game.new
game.start_game

# if player 1 or player 2 lives = 0, call end_game
# game.end_game

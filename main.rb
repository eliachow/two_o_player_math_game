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
    @player_1 = Player.new("Player 1")
    @player_2 = Player.new("Player 2")

    # Watch to see if either player's lives equals 0
    game_over?
    
  end


  def end_game
    @game_io.announce_winner
    puts "---- GAME OVER ----"
    puts "Good bye!"
  end

  # if player 1 or player 2 lives = 0, call end_game
  def game_over?
    if @player_1.lives == 0 || @player_2.lives == 0
      end_game
    end
  end

end

# Create new game instance
game = Game.new
game.start_game

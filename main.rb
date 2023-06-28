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
    @player_1 = Player.new("Player 1")
    @player_2 = Player.new("Player 2")
    @current_player = @player_1
  end
 
  def start_game
    need_instructions?

    # Watch to see if either player's lives equals 0
    until game_over?
    
      # PLAYER#: What does n + n equal?
      question = MathQuestion.new
      @game_io.display_question(@current_player.player_id, question.question)

      # Gather user's input from the terminal
      player_answer = @game_io.get_player_answer
      if question.correct?(player_answer)
        @game_io.display_correct_answer
        @current_player.increase_score
      else
        @game_io.display_wrong_answer
        @current_player.lose_life
      end

      # P1: 2/3 vs P2: 3/3
      @game_io.display_scores(@player_1, @player_2)
      switch_player

      # NEW TURN
      # @game_io.display_next_turn
      display_new_turn?
    end
  end

  def need_instructions?
    puts "Need instructions on how to play? Y / N"
    answer = @game_io.get_player_answer.downcase
    answer == "y" ? @game_io.display_instructions : @game_io.display_welcome_message
  end

  def switch_player
    @current_player = (@current_player == @player_1) ? @player_2 : @player_1
  end

  def display_new_turn?
    game_over? ? puts("") : @game_io.display_next_turn
  end

  def get_winner
    if @player_1.score > @player_2.score
      winner = @player_1.player_id
      score = @player_1.score
      @game_io.announce_winner(winner, score)
    elsif @player_1.score < @player_2.score
      winner = @player_2.player_id
      score = @player_2.score
      @game_io.announce_winner(winner, score)
    else puts "\n👔 It's a tie! 👔\n"
    end
  end

  # if player 1 or player 2 lives = 0, call end_game
  def game_over?
    if @player_1.lives == 0 || @player_2.lives == 0
      end_game
    end
  end

  def end_game
    get_winner
    puts "\n---- GAME OVER ----\n"
    puts "👋 Good bye!"
    exit
  end

end

# Create new game instance
game = Game.new
game.start_game

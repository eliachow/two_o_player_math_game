=begin
  Role: The Player class represents each player in the game. It keeps track of the player's score and lives.
  Information:
  - Player id
  - Lives remaining
  - Score
  Initialization:
  - Player id
  Public Methods:
  - answer_question: Takes a math question, prompts the player for an answer, and checks if it's correct
  - lose_life: Decreases the player's lives count by 1
  - update_score: Updates the player's score by a specified value
  - display_score: Displays the player's current score and lives count
=end

class Player
  attr_accessor :lives, :score

  def initialize(player_id)
    @player_id = player_id
    @lives = 3
    @score = 0
  end


 def lose_life
  @lives -=1
 end  

 def increase_score
  @score += 1
 end

end

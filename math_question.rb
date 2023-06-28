=begin
  Role: The MathQuestion class generates random addition questions for each turn.
  Information:
  - Two random numbers
  Initialization: 
  - Two random numbers
  - The question
  - The answer
  Public Methods:
  - generate_question: Generates a random addition question with two numbers between 1 and 20
  - check_answer: Checks if a given answer is correct
=end


class MathQuestion
  attr_reader :question, :answer

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @question = "What is #{@num1} + #{@num2}?"
    @answer = @num1 + @num2
  end

  def correct?(user_answer)
    user_answer.to_i == @answer
  end

end

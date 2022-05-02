class Questions

  attr_accessor :correct

  def initialize(current_player)
    @num1 = rand(20)
    @num2 = rand(20)
    @answer = @num1 + @num2

    puts "#{current_player}: What does #{@num1} + #{@num2} equal?"
    ask_question
  end

  def ask_question
    @player_answer = gets.chomp

    if @player_answer == @answer.to_s
      puts "You got the correct answer!"
      @correct = true

    else
      puts "You got the answer wrong!"
      @correct = false
    end
  end
end
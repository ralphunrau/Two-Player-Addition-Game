require './players'
require './questions'

class Game 
  
  def initialize()
    @current_player = 'Player 1'

    @p1 = Players.new(3)
    @p2 = Players.new(3)

    @p1_lives = "#{@p1.lives}/3"
    @p2_lives = "#{@p2.lives}/3"

    @end = false

    until @end
      turn
    end
  end

  def turn
    puts "<== New turn ==>"
    current_question = Questions.new(@current_player)

    if !current_question.correct
      wrong_answer
    end

    if @current_player == "Player 1"
      @current_player = "Player 2"
    else @current_player == "Player 2"
      @current_player = "Player 1"
    end

    puts "P1: #{@p1_lives} vs P2: #{@p2_lives}"
  end

  def wrong_answer
    if @current_player == "Player 1"
      @p1.wrong_answer
      @p1_lives = "#{@p1.lives}/3"

      if @p1.lives === 0
        @end = true
        puts "<== Game Over! ==>"
      end
    
    else @current_player == "Player 2"
      @p2.wrong_answer
      @p2_lives = "#{@p2.lives}/3"

      if @p2.lives === 0
        @end = true
        puts "<== Game Over! ==>"
      end
    end
  end
end

Game.new
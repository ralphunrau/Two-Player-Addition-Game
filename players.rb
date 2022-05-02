class Players
  attr_accessor :lives

  def initialize(lives)
    @lives = lives
  end

  def wrong_answer
    @lives -= 1
  end
end
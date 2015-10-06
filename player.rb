require_relative 'question.rb'
#Defines the attributes of a player
class Player
  attr_accessor :name, :score, :lives
  def initialize(name, score = 0, lives = 3)
    @name = name
    @score = score
    @lives = lives
  end

  def increase_score
    @score += 1
  end

  def decrease_life
    @lives -= 1
  end
end

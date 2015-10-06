require_relative 'player.rb'
#Represents the process of creating a new question
class Question
  attr_accessor :num1, :num2, :answer
    def initialize
      @num1 = Random.rand(1..20)
      @num2 = Random.rand(1..20)
      @answer = num1 + num2
    end    
end

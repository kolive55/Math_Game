require 'pry'
require_relative './player.rb'
require_relative 'question'

class MathGame

  def add_player
    puts "Player 1, what's your name?"
    name = gets.chomp
    @player1 = Player.new(name)

    puts "Player 2, what's your name?"
    name = gets.chomp
    @player2 = Player.new(name)
  end

  def ask_question
      question = Question.new
      puts "#{@current_player.name} what does #{question.num1} + #{question.num2} = ?"
      @response = gets.chomp.to_i
      @answer = question.answer
  end

  def next_turn
    if @current_player == @player1
      return @player2
    else
      return @player1
    end
  end

  def check_answer
    if @response == @answer
      @current_player.increase_score
    else
      @current_player.decrease_life
    end
  end


  def play_game
    add_player
    @current_player = @player1
    until @player1.lives == 0 || @player2.lives == 0 do
      ask_question
      check_answer
      @current_player = next_turn
    end
    puts "Final scores #{@player1.name}: #{@player1.score}, #{@player2.name}: #{@player2.score}"
  end
end



start = MathGame.new
start.play_game

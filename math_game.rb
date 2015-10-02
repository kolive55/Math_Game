require 'pry'

@player1 = {
  name: '',
  score: ''
}
@player2 = {
  name: '',
  score: ''
}

# def ready_players
#   puts "Player 1, whats your name?"
#   name = gets.chomp
#   @player1[:name] = name
#
#   puts "Player 2, what's your name?"
#   name = gets.chomp
#   @player2[:name] = name
#
# end

def generate_nums
  [Random.rand(1..20), Random.rand(1..20)]
end

def ask_question
  num1, num2 = generate_nums
  puts "Player what does #{num1} + #{num2} = ?"
  @response = gets.chomp.to_i
  @answer = num1 + num2
end

def check_response
  @answer == @response ? (puts "Yes!") : (puts "Wrong!")
end



def play_game
  puts "Player 1, whats your name?"
  name = gets.chomp
  @player1[:name] = name

  puts "Player 2, what's your name?"
  name = gets.chomp
  @player2[:name] = name

  generate_nums
  ask_question
  check_response
end
play_game

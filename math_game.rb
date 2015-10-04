require 'pry'

@player1 = {
  name: 'name',
  score: 0,
  lives: 3
}

@player2 =
{
  name: 'name',
  score: 0,
  lives: 3
}

def generate_nums
  [Random.rand(1..20), Random.rand(1..20)]
end

def next_turn(current_player)
  if current_player == @player1
    return @player2
  else
    return @player1
  end
end

def ask_question(player)
  num1, num2 = generate_nums
  puts "#{player[:name]} what does #{num1} + #{num2} = ?"
  response = gets.chomp.to_i
  answer = num1 + num2

  if response == answer
    player[:score] += 1
  else
    player[:lives] -= 1
  end
end

def play_game
  puts "Player 1, what's your name?"
  name = gets.chomp
  @player1[:name] = name

  puts "Player 2, what's your name?"
  name = gets.chomp
  @player2[:name] = name

  current_player = @player1

  until @player1[:lives] == 0 || @player2[:lives] == 0 do
    ask_question(current_player)
    current_player = next_turn(current_player)
  end
  puts "Final scores #{@player1[:name]}: #{@player1[:score]}, #{@player2[:name]}: #{@player2[:score]}"
end
play_game

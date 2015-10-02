#@player1
# @player2
def generate_nums
  [Random.rand(1..20), Random.rand(1..20)]
end

def ask_question
  num1, num2 = generate_nums
  puts "Player what does #{num1} + #{num2} = ?"
  answer = gets.chomp
end

ask_question

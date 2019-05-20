require 'TTY'

user_win_count = 0
computer_win_count = 0

choices = [
{name: 'Rock', value: 0},
{name: 'Paper', value: 1},
{name: 'Scissors', value: 2},
]

until user_win_count == 10 || computer_win_count == 10
  number = Random.new.rand(0..2)
  prompt = TTY::Prompt.new
  user_selection = prompt.select("Choose your weapon!", choices)
  if number == 0
    puts "I have chosen Rock"
  elsif number == 1
    puts "I have chosen Paper"
  else number == 2
    puts "I have chosen Scissors"
  end
  if user_selection == 2 && number == 0
    puts "You lost!"
    computer_win_count += 1
  elsif user_selection > number
    puts "You win!"
    user_win_count += 1
  elsif number == 2 && user_selection == 0
    puts "You win!"
    user_win_count += 1
  elsif user_selection < number
    puts "You lost!"
    computer_win_count += 1
  elsif user_selection == number
    puts "It's a draw!"
  end
puts "Your wins: #{user_win_count}"
puts "My wins: #{computer_win_count}"
end
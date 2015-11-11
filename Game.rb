require 'rubygems'
require 'io/console'

puts "Player 1. Pick a number between 1 and 20."
@correct_number = STDIN.noecho(&:gets).chomp.to_i

def number_range_checker(correct_number)
  if correct_number.between?(1,20)
    puts "Good Number!"
  else
    puts "The number must be between 1 and 20."
    @correct_number = STDIN.noecho(&:gets).chomp.to_i
    numberchecker(@correct_number)
  end
end

numberchecker(@correct_number)
puts "Player 2, what is the correct #?!"

def is_this_the_right_number(number)
  if number == @correct_number
    puts "You must be a wizard, you got it!"
  else
    puts "Good try, but thats not quite it!"
    @subsequent_guess = gets.chomp.to_i
    right_number(@subsequent_guess)
  end
end

@first_guess = gets.chomp.to_i
right_number(@first_guess)

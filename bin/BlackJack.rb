#!/usr/bin/env ruby
require_relative '../lib/blackjack.rb'

LINEWIDTH = 92
def play
  print "Your hand:".ljust(LINEWIDTH/2) + "Dealer hand:".rjust(LINEWIDTH/2)
  game = BlackJack.new
  game.play
  play_again
end

def play_again
  puts "Play again?(Y/n)".rjust(LINEWIDTH/2 + 8)
  input = gets
  if input == "Y\n" || input == "\n" || input == "y\n"
    play
  elsif input == "n\n" || input == "N\n"
    puts "Bye".rjust(LINEWIDTH/2 + 1)
    puts "".ljust(LINEWIDTH,"=")
  else
    puts "Invaild input."
    play_again
  end
end

system('printf "\e[8;30;92;t"')
system("clear")
puts "".ljust(LINEWIDTH,"=") 
puts "Welcome to BlackJack!!".rjust(LINEWIDTH/2 + 11)
puts "".ljust(LINEWIDTH," ")
play


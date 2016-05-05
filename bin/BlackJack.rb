#!/usr/bin/env ruby
require_relative '../lib/blackjack.rb'

def game
  @game = BlackJack.new
  @game.play
  play_again
end

def play_again
  puts "Play again?(Y/n)"
  input = gets
  if input == "Y\n" || input == "\n" || input == "y\n"
    game
  elsif input == "n\n" || input == "N\n"
    puts "Bye"
  else
    puts "Invaild input."
    play_again
  end
end

game


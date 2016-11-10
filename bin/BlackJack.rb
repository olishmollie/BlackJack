#!/usr/bin/env ruby
require_relative '../lib/blackjack.rb'
system('printf "\e[8;12;50;t"')

game = BlackJack.new
game.play
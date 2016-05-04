class BlackJack
  def initialize
    @deck = 5.times {deck.shuffle!}
    @hand = "(" + deck.shift + ")" + " " + deck.shift
    @score = 0
  end
end

deck = [
  "A\u2660", "2\u2660", "3\u2660", "4\u2660", "5\u2660",
  "6\u2660", "7\u2660", "8\u2660", "9\u2660", "10\u2660",
  "J\u2660", "Q\u2660", "K\u2660", "A\u2665", "2\u2665",
  "3\u2665", "4\u2665", "5\u2665", "6\u2665", "7\u2665",
  "8\u2665", "9\u2665", "10\u2665", "J\u2665", "Q\u2665",
  "K\u2665", "A\u2666", "2\u2666", "3\u2666", "4\u2666",
  "5\u2666", "6\u2666", "7\u2666", "8\u2666", "9\u2666",
  "10\u2666", "J\u2666", "Q\u2666", "K\u2666", "A\u2663",
  "2\u2663", "3\u2663", "4\u2663", "5\u2663", "6\u2663",
  "7\u2663", "8\u2663", "9\u2663", "10\u2663", "J\u2663",
  "Q\u2663", "K\u2663"
]

def score
  @hand.delete("( )").each_char do |card|
    if card.to_i = 0
      @score += 11 if card == "A"
      @score += 10 if card == "K" || card == "Q" || card == "J"
    else
      @score += card.to_i
    end
  end
  @score
end

def bust?
  score > 21 
end

def deal
  @hand << " " + @deck.shift
end

def turn
  deal
  puts "Hit?(Y/n)"
  hit = gets.strip
  if hit.downcase == "y" || hit == "\n"
    deal
  else
    puts "Your score is #{@score}" 
end




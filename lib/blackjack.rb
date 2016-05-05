class BlackJack
  def initialize
    @player_hand = ""
    @dealer_hand = ""
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

    100.times {deck.shuffle!}
    
    @deck = deck
    
    @player_hand << @deck.shift
    @dealer_hand << @deck.shift
    @player_hand << " | " + @deck.shift
    @dealer_hand << " | " + @deck.shift
  end

  def natural?(hand)
    score(hand) == 21
  end

  def show_hands(turn)
    linewidth = 50
    if turn == 1
      puts @player_hand.ljust(linewidth/2) + ("Dealer's hand: " + "? | " + @dealer_hand.split(" | ")[1]).rjust(linewidth/2)
    else
      puts @player_hand.ljust(linewidth/2) + ("Dealer's hand: " + @dealer_hand).rjust(linewidth/2)
    end
  end

  def score(hand)
    score = 0
    hand.scan(/\w+/).each do |card|
      if card.to_i == 0
        score += 11 if card == "A"
        score += 10 if card == "K" || card == "Q" || card == "J"
      else
        score += card.to_i
      end
    end
    if score > 21 && hand.include?("A")
      return score - (10 * hand.count("A"))
    else
      return score
    end
  end

  def input
    @input = gets.strip.downcase
  end

  def hit?
    @input == "y" || @input == ""
  end

  def bust?
    score(@player_hand) > 21
  end

  def stay?
    @input == "n"
  end

  def invalid_input?
    @input != "y" || @input != "n" || @input != ""
  end

  def over?
    bust? || stay?
  end

  def deal(hand)
    hand << " | " + @deck.shift
  end

  def turn
    puts "Hit?(Y/n)"
    input
    if hit?
      deal(@player_hand)
    elsif stay?
      nil
    else
      puts "Invalid input."
      turn
    end
  end

  def dealer_turn
    score(@dealer_hand)
    show_hands(2)
    if score(@dealer_hand) < 17
      deal(@dealer_hand)
      dealer_turn
    elsif score(@dealer_hand) > 21
      puts "Dealer busts!"
    else
      nil
    end
  end

  def play
    puts "Welcome to BlackJack!"
    show_hands(1)
    if natural?(@dealer_hand) && !natural?(@player_hand)
      puts "You lose! Dealer has BlackJack."
      show_hands(2)
    elsif natural?(@player_hand) && !natural?(@dealer_hand)
      puts "BlackJack -- you win!"
    elsif natural?(@player_hand) && natural?(@dealer_hand)
      puts "You push! You and the dealer both have BlackJack."
      show_hands(2)
    else
      until over?
        turn
        show_hands(1)
      end
      puts "You busted with a score of #{score(@player_hand)}!" if bust?
      if stay?
        puts "You stay at #{score(@player_hand)}."
        dealer_turn
        if score(@dealer_hand) > 21
          puts "You win! Your score: #{score(@player_hand)} Dealer score: #{score(@dealer_hand)}"
        elsif score(@player_hand) > score(@dealer_hand)
          puts "You win! Your score: #{score(@player_hand)} Dealer score: #{score(@dealer_hand)}"
        elsif score(@player_hand) == score(@dealer_hand)
          puts "You push! Your score: #{score(@player_hand)} Dealer score: #{score(@dealer_hand)}"
        else
          puts "You lose! Your score: #{score(@player_hand)} Dealer score: #{score(@dealer_hand)}"
        end
      end
    end
  end
end













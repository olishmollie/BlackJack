class BlackJack
  def initialize
    @linewidth = 91
    @player_hand = []
    @dealer_hand = []
    
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

    100.times do 
      deck.shuffle!
    end
    
    @deck = deck
    
    @player_hand << @deck.shift
    @dealer_hand << @deck.shift
    @player_hand << @deck.shift
    @dealer_hand << @deck.shift
  end

  def score(hand)
    score = 0
    hand = hand.to_s.scan(/\w+/)
    hand.each do |card|
      if card.to_i > 0
        score += card.to_i
      elsif card.to_i == 0
        if card == "A"
          score += 11
        else
          score += 10
        end
      end
    end
    if score > 21 && hand.include?("A")
      if score - 10 <= 21
        score -= 10
      elsif score - 10 > 21
        score -= (10 * hand.count("A"))
      end
    end
    score
  end

  def natural?(hand)
    score(hand) == 21
  end

  def show_hands(turn)
    linewidth = 92
    if turn == 1
      puts "#{@player_hand}".ljust(linewidth/2) + ("[#{@dealer_hand[0]}, \"??\"]").rjust(linewidth/2)
    elsif turn == 2
      puts "#{@player_hand}".ljust(linewidth/2) + "#{@dealer_hand}".rjust(linewidth/2)
    elsif turn == 3
      puts "#{@player_hand}".ljust(linewidth/2)
    elsif turn == 4
      puts "#{@dealer_hand}".rjust(linewidth)
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

  def blackjack?
    score(@player_hand) == 21
  end

  def invalid_input?
    @input != "y" || @input != "n" || @input != ""
  end

  def over?
    bust? || stay? || blackjack?
  end

  def deal(hand)
    hand << @deck.shift
  end

  def turn
    puts "Hit?(Y/n)".rjust(@linewidth/2 + 4)
    input
    if hit?
      deal(@player_hand)
      show_hands(3)
    elsif stay?
      nil
    else
      puts "Invalid input.".rjust(@linewidth/2 + 7)
      turn
    end
  end

  def dealer_turn
    show_hands(4)
    sleep(1)
    if score(@dealer_hand) < 17
      sleep(1)
      puts "Dealer adds a card.".rjust(@linewidth/2 + 9)
      deal(@dealer_hand)
      dealer_turn
    elsif score(@dealer_hand) > 21
      puts "Dealer busts!".rjust(@linewidth/2 + 7)
    elsif score(@dealer_hand) == 21
      puts "BlackJack!!!".rjust(@linewidth/2 + 6)
    else
      puts "Dealer stays.".rjust(@linewidth/2 + 6)
    end
  end

  def endgame
    win = "You win! Your score: #{score(@player_hand)} Dealer score: #{score(@dealer_hand)}"
    push = "You push! Your score: #{score(@player_hand)} Dealer score: #{score(@dealer_hand)}"
    lose = "You lose! Your score: #{score(@player_hand)} Dealer score: #{score(@dealer_hand)}"
    if score(@dealer_hand) > 21
       puts win.rjust(@linewidth/2 + (win.length/2))
    elsif score(@player_hand) > score(@dealer_hand)
      puts win.rjust(@linewidth/2 + (win.length/2))
    elsif score(@player_hand) == score(@dealer_hand)
      puts push.rjust(@linewidth/2 + (push.length/2))
    else
      puts lose.rjust(@linewidth/2 + (lose.length/2))
    end
  end

  def play
    if natural?(@dealer_hand) && !natural?(@player_hand)
      show_hands(2)
      puts "You lose! Dealer has BlackJack.".rjust(@linewidth/2 + 15)
    elsif natural?(@player_hand) && !natural?(@dealer_hand)
      show_hands(2)
      puts "BlackJack -- you win!".rjust(@linewidth/2 + 10)
    elsif natural?(@player_hand) && natural?(@dealer_hand)
      show_hands(2)
      puts "You push! You and the dealer both have BlackJack.".rjust(@linewidth/2 + 25)
    else
      show_hands(1)
      until over?
        turn
      end
      if blackjack?
        show_hands(1)
        puts "BlackJack!!! Dealer has #{score(@dealer_hand)}".rjust(@linewidth/2 + 14)
        dealer_turn
        endgame
      elsif bust?
        puts "You busted with #{score(@player_hand)}!".rjust(@linewidth/2 + 9)
      elsif stay?
        puts "You stay at #{score(@player_hand)}. Dealer has #{score(@dealer_hand)}.".rjust(@linewidth/2 + 15)
        dealer_turn
        endgame
      end
    end
  end
end
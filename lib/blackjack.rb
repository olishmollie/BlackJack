class BlackJack
  def initialize

    board = [
      ["\u250F","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2513"],
      ["\u2503"," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," ","\u2503"],
      ["\u2503"," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," ","\u2503"],
      ["\u2503"," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," ","\u2503"],
      ["\u2503"," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," ","\u2503"],
      ["\u2503"," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," ","\u2503"],
      ["\u2503"," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," ","\u2503"],
      ["\u2503"," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," ","\u2503"],
      ["\u2503"," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," ","\u2503"],
      ["\u2503"," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," "," ","\u2503"],
      ["\u2517","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u2501","\u251B"]
    ]

    deck = [
      "[A\u2660]", "[2\u2660]", "[3\u2660]", "[4\u2660]", "[5\u2660]", "[6\u2660]", "[7\u2660]", "[8\u2660]", "[9\u2660]", "[10\u2660]", "[J\u2660]", "[Q\u2660]", "[K\u2660]", 
      "[A\u2665]", "[2\u2665]", "[3\u2665]", "[4\u2665]", "[5\u2665]", "[6\u2665]", "[7\u2665]", "[8\u2665]", "[9\u2665]", "[10\u2665]", "[J\u2665]", "[Q\u2665]", "[K\u2665]", 
      "[A\u2666]", "[2\u2666]", "[3\u2666]", "[4\u2666]", "[5\u2666]", "[6\u2666]", "[7\u2666]", "[8\u2666]", "[9\u2666]", "[10\u2666]", "[J\u2666]", "[Q\u2666]", "[K\u2666]", 
      "[A\u2663]", "[2\u2663]", "[3\u2663]", "[4\u2663]", "[5\u2663]", "[6\u2663]", "[7\u2663]", "[8\u2663]", "[9\u2663]", "[10\u2663]", "[J\u2663]", "[Q\u2663]", "[K\u2663]"
    ]

    1000.times{ deck.shuffle! }
    
    @deck = deck

    @linewidth = 68

    @board = board

    @dealer_hand = ""
    @player_hand = []
    @status = {}
    @valid_moves = ['y', 'n', 'd', 's', 'x']
    @h = 0

    @chips = 1000.00
    @wager = []
    @done = false
    @insurance = false
  end

  #------------------- GAMEBOARD METHODS -------------------#
  
  def test
    @player_hand << "[A\u2660][J\u2660]"
    @dealer_hand << "[A\u2660][3\u2665]"
  end

  def display_board
    system("clear")
    @board.each do |arr| 
      arr.each do |cell| 
        print cell
      end
    end
  end

  def clear_board
    index = 1
    while index < @board.length - 1
      @board[index].fill(" ", 1...@board[index].length - 1)
      index += 1
    end
  end

  def delete_row(y)
    @board[y].fill(" ", 1..@board[y].length - 2)
  end

  def delete_row_segment(row, start)
    length = @linewidth / 3
    length.times do |char|
      @board[row][start] = " "
      start += 1 if start >= 0
      start -= 1 if start < 0
    end
  end

  def center_print_str(str, row)
    delete_row(3)
    start = (@linewidth / 2) - (str.length / 2)
    index = 0
    str.length.times do |char| 
      @board[row][start] = str[index]
      index += 1
      start += 1
    end
    display_board
  end

  def left_print_str(str, row)
    delete_row_segment(row, 1)
    grid_index = 3
    str_index = 0
    str.length.times do |char| 
      @board[row][grid_index] = str[str_index]
      grid_index += 1
      str_index += 1
    end
  end

  def right_print_str(str, row)
    delete_row_segment(row, -2)
    grid_index = -4
    str_index = -1
    str.length.times do |char| 
      @board[row][grid_index] = str[str_index]
      grid_index -= 1
      str_index -= 1
    end
  end

  def show_hands(turn)
    if turn == 1
      left_print_str("(#{score(@player_hand[0])}) " + @player_hand[0] + " ($#{@wager[0].to_i})", 5)
      right_print_str('['.concat(@dealer_hand.scan(/\w+\X/)[0] + '][' + @dealer_hand.scan(/\w+\X/)[1].sub(/\w+\X/, '??') + ']'), 5)
    elsif turn == 2
      if @player_hand.length > 1
        left_print_str("#{@h + 1}. ".concat("(#{score(@player_hand[@h])}) " + @player_hand[@h] + " ($#{@wager[@h].to_i})"), 5 + @h)
      else
        left_print_str("(#{score(@player_hand[@h])}) " + @player_hand[0] + " ($#{@wager[@h].to_i})", 5)
      end
    elsif turn == 3
      right_print_str(@dealer_hand + " (#{score(@dealer_hand)}) ", 5)
    elsif turn == 'split'
      @player_hand.each_with_index do |hand, i|
        left_print_str("#{i + 1}. ".concat("(#{score(hand)}) " + hand + " ($#{@wager[@h].to_i})"), 5 + i)
      end
    end
    display_board
  end
 
  def reset
    @player_hand.each do |hand|
      hand.scan(/\[\w+\X\]/).each do |card|
        @deck << card
      end
    end
    @player_hand.clear
    @dealer_hand.scan(/\[\w+\X\]/).each do |card|
      @deck << card
    end
    @dealer_hand.clear
    1000.times { @deck.shuffle! }
    @h = 0
    @wager = []
    @status = []
    @insurance = false
    clear_board
  end

  def invalid_input(row)
    delete_row(row)
    center_print_str("Invalid input", row)
    sleep(1)
    delete_row(row)
  end

  #------------------- SCORES / BETTING -------------------#

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
      count = hand.count("A")
      until count == 0 || score <= 21
        score -= 10
        count -= 1
      end
    end
    score
  end

  def wager
    max = 500
    min = 1
    center_print_str("Please enter your wager.", 3)
    input = gets.strip
    if input.to_i >= min && input.to_i <= max && input.to_i <= @chips && input.scan(/\W+/) == []
      @wager << input.to_f
    elsif input.to_i > @chips
      delete_row(3)
      center_print_str("You don't have enough chips!", 3)
      sleep(1)
      delete_row(3)
      wager
    elsif input.to_i > max
      delete_row(3)
      center_print_str("Maximum bet is $500!", 3)
      sleep(1)
      delete_row(3)
      wager
    else
      delete_row(3)
      center_print_str("Invalid input", 3)
      sleep(1)
      delete_row(3)
      wager
    end
  end

  def insurance
    center_print_str("Insurance?(Y/n)", 3)
    input
    if yes?
      @insurance = true
      if score(@dealer_hand) == 21 && score(@player_hand[0]) != 21
        @wager[0] = 0.0
      elsif score(@dealer_hand) != 21
        @chips -= @wager[0] / 2
        right_print_str("$#{'%.2f' % @chips}", 1)
        center_print_str("You lose $#{'%.2f' % (@wager[0] / 2.0).to_f}!", 3)
        sleep(1)
      else
        nil
      end
    elsif no?
      nil
    else
      invalid_input(3)
      insurance
    end
    @input = nil
  end

  #------------------- CONDITIONALS / INPUT -------------------#

  def valid_moves(hand)
    @valid_moves = ['y', 'n', 'd', 's', 'x']
    @valid_moves.delete('d') if !can_double?(hand)
    @valid_moves.delete('s') if !can_split?(hand)
    @valid_moves.delete('x') if !can_surrender?(hand)
    if split_aces?(hand)
      @valid_moves.delete('y')
      @valid_moves.delete('d')
      @valid_moves.delete('x')
    end
  end
  
  def out_of_chips?
    return true if @chips == 0
  end

  def natural?(hand)
    @player_hand.length == 1 && hand.scan(/\w+/).length == 2 && score(hand) == 21
  end

  def bust?(hand)
    score(hand) > 21
  end

  def twenty_one?(hand)
    score(hand) == 21
  end

  def can_surrender?(hand)
    @player_hand.length == 1 && hand.scan(/\w+/).length == 2
  end

  def surrender?(hand)
    @input == 'x'
  end

  def over?(hand)
    bust?(hand) || twenty_one?(hand) || stay? || double?(hand) || surrender?(hand)
  end

  def done?
    @done == true
  end

  def input
    @input = gets.downcase.strip
  end

  def yes?
    @input == "y" || @input == ""
  end

  def no?
    @input == "n"
  end

  def stay?
    @input == "n"
  end

  def double?(hand)
    @input == "d"
  end

  def can_split?(hand)
    hand.scan(/\w+/).length == 2 && hand.scan(/\w+/)[0] == hand.scan(/\w+/)[1] && 2 * @wager.reduce(:+) <= @chips && @player_hand.length < 4
  end

  def can_double?(hand)
    hand.scan(/\w+/).length == 2 && 2 * @wager.reduce(:+) <= @chips
  end

  def split?
    @input == "s"
  end

  def split_aces?(hand)
    @player_hand.length > 1 && hand.scan(/\w+/)[0] == "A"
  end

  #------------------- GAME PLAY -------------------#

  def first_deal
    @player_hand << @deck.shift
    @dealer_hand << @deck.shift
    @player_hand[0] << @deck.shift
    @dealer_hand << @deck.shift
  end
  
  def deal(hand)
    hand << @deck.shift
  end

  def split(hand)
    @wager << @wager[@h]
    split = [hand.scan(/\[\w+\X\]/)[0], hand.scan(/\[\w+\X\]/)[1]]
    @player_hand[@h] = split[0]
    @player_hand << split[1]
    @player_hand.each do |hand|
      deal(hand) if hand.scan(/\w+\X/).length == 1
    end
  end

  def player_turn(hand)
    @input = nil
    @h += 1 if @player_hand.length > 1 && @h < @player_hand.length - 1
    if @status[@h] == '21' || @status[@h] == 'bust' || @status[@h] == 'stay'
      nil
    elsif split_aces?(hand) && !can_split?(hand)
      nil
    else
      until over?(hand)
        valid_moves(hand)
        str = ""
        str << "#{@h + 1}. " if @player_hand.length > 1
        if split_aces?(hand) && can_split?(hand)
          str << "Split?(s)"
        elsif can_double?(hand) && can_split?(hand) && can_surrender?(hand)
         str << "Hit?(Y/n) Double?(d) Split?(s) Surrender?(x)"
        elsif can_double?(hand) && can_split?(hand)
         str << "Hit?(Y/n) Double?(Y/n) Split?(s)"
        elsif can_double?(hand) && can_surrender?(hand)
          str << "Hit?(Y/n) Double?(d) Surrender?(x)"
        elsif can_double?(hand)
         str << "Hit?(Y/n) Double?(d)"
        elsif can_surrender?(hand)
          str << "Hit?(Y/n) Surrender?(x)"
        else
          str << "Hit?(Y/n)"
        end
        center_print_str(str, 3)
        input
        if yes? && @valid_moves.include?('y')
          deal(hand)
          show_hands(2)
          if bust?(hand)
            @status[@h] = 'bust'
            center_print_str("You bust with #{score(hand)}!", 3)
          elsif twenty_one?(hand)
            @status[@h] = '21'
            center_print_str("You have 21!!", 3)
          end
        elsif stay? && @valid_moves.include?('n')
          @status[@h] = 'stay'
          center_print_str("You stay at #{score(hand)}.", 3)
        elsif double?(hand) && @valid_moves.include?('d')
          deal(hand)
          @wager[@h] *= 2
          show_hands(2)
          if bust?(hand)
            center_print_str("You bust with #{score(hand)}!", 3)
          elsif twenty_one?(hand)
            @status[@h] = '21'
            center_print_str("You have 21!!", 3)
          else
            center_print_str("You double your wager and stay at #{score(hand)}.", 3) 
          end
          @status[@h] = 'stay'
        elsif split? && @valid_moves.include?('s')
          @h -= 1
          split(hand)
          show_hands('split')
          @player_hand.each do |hand|
            player_turn(hand)
          end
          break
        elsif surrender?(hand) && @valid_moves.include?('x')
          center_print_str("You surrender!", 3)
        else
          invalid_input(3)
        end
      end
    end
    sleep(1) if @h < @player_hand.length - 1
  end
  
  def dealer_turn
    sleep(1)
    if score(@dealer_hand) < 17 || (score(@dealer_hand) == 17 && score(@dealer_hand.delete("A")) <= 7)
      center_print_str("Dealer hits.", 3)
      deal(@dealer_hand)
      show_hands(3)
      dealer_turn
    elsif bust?(@dealer_hand)
      center_print_str("Dealer busts with #{score(@dealer_hand)}!", 3)
    elsif twenty_one?(@dealer_hand)
      center_print_str("Dealer has 21!!", 3)
    else
      center_print_str("Dealer stays at #{score(@dealer_hand)}.", 3)
    end
  end

  def play
    until done?
      test
      left_print_str("$1/$500", 1)
      right_print_str("$#{'%.2f' % @chips}", 1)
      center_print_str("Welcome to BlackJack!!!", 1)
      center_print_str("\u207b\u207b\u207b\u207b\u207b\u207b\u207b\u207b\u207b\u207b\u207b\u207b\u207b\u207b\u207b\u207b\u207b\u207b\u207b\u207b\u207b\u207b\u207b\u207b\u207b", 2)
      right_print_str("BJ pays 7:5", 8)
      right_print_str("Dealer H17", 9)
      wager
      show_hands(1)
      if @dealer_hand.scan(/\w+/)[0] == "A"
      insurance
      end
      if natural?(@player_hand[@h]) || natural?(@dealer_hand)
        nil
      else
        player_turn(@player_hand[0])
        unless @player_hand.count{ |hand| bust?(hand) } == @player_hand.length || surrender?(@player_hand[0])
          show_hands(3)
          dealer_turn
        end
      end
      endgame
      sleep(1)
      play_again
    end
  end

  def endgame
    winnings = 0
    losses = 0
    if natural?(@player_hand[0]) || natural?(@dealer_hand)
        if score(@player_hand[0]) == 21 && score(@dealer_hand) == 21
          if @insurance == true
            center_print_str("You and the dealer both have BlackJack!!", 3)
            winnings += @wager[0]
            show_hands(3)
          elsif @insurance == false
            center_print_str("You and the dealer both have BlackJack!!", 3)
            show_hands(3)
          end
        elsif score(@dealer_hand) == 21
          center_print_str("Dealer has BlackJack!!", 3)
          losses += @wager[0]
          show_hands(3)
        elsif score(@player_hand[@h]) == 21
          center_print_str("You have BlackJack!!", 3)
          winnings += 2 * @wager[0] / 5
          show_hands(3)
        end
    elsif surrender?(@player_hand[0])
      losses += @wager[0] / 2
    else 
      @player_hand.each_index do |i|
        if bust?(@dealer_hand)
          if score(@player_hand[i]) <= 21
            winnings += @wager[i]
          else
            losses += @wager[i]
          end
        elsif !bust?(@dealer_hand)
          if !bust?(@player_hand[i]) && score(@player_hand[i]) > score(@dealer_hand)
            winnings += @wager[i]
          elsif bust?(@player_hand[i]) || score(@player_hand[i]) < score(@dealer_hand)
            losses += @wager[i]
          end
        end
      end
    end
    sleep(1)
    net = (winnings - losses).to_f
    @chips += net
    right_print_str("$#{'%.2f' % @chips}", 1)
    if net > 0
      center_print_str("You win $#{'%.2f' % net}!", 3)
    elsif net < 0
      center_print_str("You lose $#{'%.2f' % net.abs}!", 3)
    else
      center_print_str("It's a push!", 3)
    end
  end

  def play_again
    @input = nil
    if out_of_chips?
      center_print_str("You're done. Better luck next time!", 3)
      sleep(1)
      @done = true
      system("clear")
    else
      @wager = 0
      center_print_str("Play again?(Y/n)", 3)
      input
      if yes?
        reset
      elsif no?
        (@chips > 1000) ? center_print_str("You won $#{'%.2f' % (@chips - 1000)}! I'll see ya.", 3) : center_print_str("You lost $#{'%.2f' % (1000 - @chips)}! I'll see ya.", 3)
        sleep(1)
        @done = true
        system("clear")
      else
        invalid_input(3)
        play_again
      end
    end
  end
end
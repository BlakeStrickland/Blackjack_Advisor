
def convert(card)
  if card.upcase == "A"
    card = 11
  elsif card.upcase == "K" || card.upcase =="Q" || card.upcase == "J"
    card = 10
  else
    card = card.to_i
  end
end

hard = Hash.new
(5..8).each { |x| hard[x] = Hash.new("You should most definatly hit") }
hard[8][5] = "Double if possible, otherwise hit"
hard[8][6]= "Double if possible, otherwise hit"

(9..11).each { |x| hard[x] = Hash.new("Double if possible, otherwise hit")}
hard[9][7]= "Your most optimal move is to hit"
hard[9][8]= "Your most optimal move is to hit"
hard[9][9]= "Your most optimal move is to hit"
hard[9][10]= "Your most optimal move is to hit"
hard[9][11]= "Your most optimal move is to hit"
hard[10][10]= "Your most optimal move is to hit"
hard[10][11]= "Your most optimal move is to hit"

(12..21).each { |x| hard[x] = Hash.new("Your most optimal move is to stay")}
hard[12][2]= "Your most optimal move is to hit"
hard[12][3]= "Your most optimal move is to hit"
hard[12][7]= "Your most optimal move is to hit"
hard[12][8]= "Your most optimal move is to hit"
hard[12][9]= "Your most optimal move is to hit"
hard[12][10]= "Your most optimal move is to hit"
hard[12][11]= "Your most optimal move is to hit"
hard[13][7]= "Your most optimal move is to hit"
hard[13][8]= "Your most optimal move is to hit"
hard[13][9]= "Your most optimal move is to hit"
hard[13][10]= "Your most optimal move is to hit"
hard[13][11]= "Your most optimal move is to hit"
hard[14][7]= "Your most optimal move is to hit"
hard[14][8]= "Your most optimal move is to hit"
hard[14][9]= "Your most optimal move is to hit"
hard[14][10]= "Your most optimal move is to hit"
hard[14][11]= "Your most optimal move is to hit"
hard[15][7]= "Your most optimal move is to hit"
hard[15][8]= "Your most optimal move is to hit"
hard[15][9]= "Your most optimal move is to hit"
hard[15][10]= "Your most optimal move is to hit"
hard[15][11]= "Your most optimal move is to hit"
hard[16][7]= "Your most optimal move is to hit"
hard[16][8]= "Your most optimal move is to hit"
hard[16][9]= "Your most optimal move is to hit"
hard[16][10]= "Your most optimal move is to hit"
hard[16][11]= "Your most optimal move is to hit"


soft = Hash.new
(13..17).each { |x| soft[x] = Hash.new("Your most optimal move is to hit")}
soft[13][4]= "Double if possible, otherwise hold"
soft[13][5]= "Double if possible, otherwise hold"
soft[13][6]= "Double if possible, otherwise hold"
soft[14][4]= "Double if possible, otherwise hold"
soft[14][5]= "Double if possible, otherwise hold"
soft[14][6]= "Double if possible, otherwise hold"
soft[15][4]= "Double if possible, otherwise hold"
soft[15][5]= "Double if possible, otherwise hold"
soft[15][6]= "Double if possible, otherwise hold"
soft[16][4]= "Double if possible, otherwise hold"
soft[16][5]= "Double if possible, otherwise hold"
soft[16][6]= "Double if possible, otherwise hold"
soft[17][2]= "Double if possible, otherwise hold"
soft[17][3]= "Double if possible, otherwise hold"
soft[17][4]= "Double if possible, otherwise hold"
soft[17][5]= "Double if possible, otherwise hold"
soft[17][6]= "Double if possible, otherwise hold"

(18..21).each { |x| soft[x] = Hash.new("Your most optimal move is to stay")}
soft[18][9]= "Your most optimal move is to hit"
soft[18][10]= "Your most optimal move is to hit"
soft[18][3]= "Double if possible, otherwise stay"
soft[18][4]= "Double if possible, otherwise stay"
soft[18][5]= "Double if possible, otherwise stay"
soft[18][6]= "Double if possible, otherwise stay"
soft[19][6]= "Double if possible, otherwise stay"




pair = Hash.new
(4..22).each { |x| pair[x] = Hash.new("You should split! (most optimal)")}
pair[4][8]="Your most optimal move is to hit"
pair[4][9]="Your most optimal move is to hit"
pair[4][10]="Your most optimal move is to hit"
pair[4][11]="Your most optimal move is to hit"
pair[6][8]="Your most optimal move is to hit"
pair[6][8]="Your most optimal move is to hit"
pair[6][8]="Your most optimal move is to hit"
pair[8][2]="Your most optimal move is to hit"
pair[8][3]="Your most optimal move is to hit"
pair[8][7]="Your most optimal move is to hit"
pair[8][8]="Your most optimal move is to hit"
pair[8][9]="Your most optimal move is to hit"
pair[8][10]="Your most optimal move is to hit"
pair[8][11]="Your most optimal move is to hit"
pair[10][10]="Your most optimal move is to hit"
pair[10][11]="Your most optimal move is to hit"
pair[12][8]="Your most optimal move is to hit"
pair[12][9]="Your most optimal move is to hit"
pair[12][10]="Your most optimal move is to hit"
pair[12][11]="Your most optimal move is to hit"
pair[14][9]="Your most optimal move is to hit"
pair[14][11]="Your most optimal move is to hit"
pair[10][2]="Double if possible, otherwise hit"
pair[10][3]="Double if possible, otherwise hit"
pair[10][4]="Double if possible, otherwise hit"
pair[10][5]="Double if possible, otherwise hit"
pair[10][6]="Double if possible, otherwise hit"
pair[10][7]="Double if possible, otherwise hit"
pair[10][8]="Double if possible, otherwise hit"
pair[10][9]="Double if possible, otherwise hit"
pair[14][10]="Your most optimal move is to stay"
pair[18][7]="Your most optimal move is to stay"
pair[18][10]="Your most optimal move is to stay"
pair[18][11]="Your most optimal move is to stay"
pair[20][2]="Your most optimal move is to stay"
pair[20][3]="Your most optimal move is to stay"
pair[20][4]="Your most optimal move is to stay"
pair[20][5]="Your most optimal move is to stay"
pair[20][6]="Your most optimal move is to stay"
pair[20][7]="Your most optimal move is to stay"
pair[20][8]="Your most optimal move is to stay"
pair[20][9]="Your most optimal move is to stay"
pair[20][10]="Your most optimal move is to stay"
pair[20][11]="Your most optimal move is to stay"


puts "Lets play some Blackjack!"
puts "Enter your first card 2-10, J Q K or A: "
card1 = gets.chomp
card1 = convert(card1)

puts "Enter your second card: "
card2 = gets.chomp
card2 = convert(card2)

puts "Enter dealers card: "
dealer_card = gets.chomp
dealer_card = convert (dealer_card)

sum_cards = card1 + card2

while sum_cards <= 21

  if card1 == card2 && card1 + card2 == 22
    puts pair[sum_cards][dealer_card]
  elsif card1 == 11 || card2 == 11
    puts soft[sum_cards][dealer_card]
  elsif card1 == card2
    puts pair[sum_cards][dealer_card]
  else
    puts hard[sum_cards][dealer_card]
  end
  
end

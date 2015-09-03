#def vlidate(card)
#  valid_array = ["1","2","3","4","5","6","7","8","9","10","J","Q","K","A"]
#  valid_array.include?(card)
#end

def convert(card)
  if card.upcase == "A"
    card = 11
  elsif card.upcase == "K" || card.upcase =="Q" || card.upcase == "J"
    card = 10
  else
    card = card.to_i
  end
end

#player_hand = pair()
hard = Hash.new
  #hard_hit_hash = Hash.new("Hit")
  #hard_stay_hash = Hash.new("Stay")
  #hard_doubleip_orhit_hash = Hash.new("Double if possible, otherwise hit")
(5..8).each { |x| hard[x] = Hash.new("Hit") }
#puts"#{hard_doubleip_orhit_hash}"
#hard_doubleip_orhit_hash = hard[8][5]
#hard[8][5] = Hash.new("Double if possible, otherwise hit")
#hard[8][6] = hard_doubleip_orhit_hash
  #for x in 5..8 do hard[x] = Hash.new("Hit") end
hard[8][5] = "Double if possible, otherwise hit"
hard[8][6]= "Double if possible, otherwise hit"

#for x in 9..11 do hard[x] = Hash.new("Double if possible, otherwise hit") end
(9..11).each { |x| hard[x] = Hash.new("Double if possible, otherwise hit")}
hard[9][7]= "Hit"
hard[9][8]= "Hit"
hard[9][9]= "Hit"
hard[9][10]= "Hit"
hard[9][11]= "Hit"
hard[10][10]= "Hit"
hard[10][11]= "Hit"

#for x in 12..21 do hard[x] = Hash.new("Stay") end
(12..21).each { |x| hard[x] = Hash.new("Stay")}
hard[12][2]= "Hit"
hard[12][3]= "Hit"
hard[12][7]= "Hit"
hard[12][8]= "Hit"
hard[12][9]= "Hit"
hard[12][10]= "Hit"
hard[12][11]= "Hit"
hard[13][7]= "Hit"
hard[13][8]= "Hit"
hard[13][9]= "Hit"
hard[13][10]= "Hit"
hard[13][11]= "Hit"
hard[14][7]= "Hit"
hard[14][8]= "Hit"
hard[14][9]= "Hit"
hard[14][10]= "Hit"
hard[14][11]= "Hit"
hard[15][7]= "Hit"
hard[15][8]= "Hit"
hard[15][9]= "Hit"
hard[15][10]= "Hit"
hard[15][11]= "Hit"
hard[16][7]= "Hit"
hard[16][8]= "Hit"
hard[16][9]= "Hit"
hard[16][10]= "Hit"
hard[16][11]= "Hit"


soft = Hash.new
#soft_hit_hash = Hash.new("Hit")
#soft_stay_hash = Hash.new("Stay")
#soft_doubleip_orhit_hash = Hash.new("Double if possible, otherwise hit")
#soft_doubleip_orstay_hash = Hash.new("Double if possible, otherwise stay")
(13..17).each { |x| soft[x] = Hash.new("Hit")}
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

(18..21).each { |x| soft[x] = Hash.new("Stay")}
soft[18][9]= "Hit"
soft[18][10]= "Hit"
soft[18][3]= "Double if possible, otherwise stay"
soft[18][4]= "Double if possible, otherwise stay"
soft[18][5]= "Double if possible, otherwise stay"
soft[18][6]= "Double if possible, otherwise stay"
soft[19][6]= "Double if possible, otherwise stay"




pair = Hash.new
#pair_hit_hash = Hash.new("Hit")
#pair_stay_hash = Hash.new("Stay")
#pair_split_hash = Hash.new("Split")
#pair_doubleip_orhit_hash = Hash.new("Double if possible, otherwise hit")
(4..22).each { |x| pair[x] = Hash.new("Split")}
pair[4][8]="Hit"
pair[4][9]="Hit"
pair[4][10]="Hit"
pair[4][11]="Hit"
pair[6][8]="Hit"
pair[6][8]="Hit"
pair[6][8]="Hit"
pair[8][2]="Hit"
pair[8][3]="Hit"
pair[8][7]="Hit"
pair[8][8]="Hit"
pair[8][9]="Hit"
pair[8][10]="Hit"
pair[8][11]="Hit"
pair[10][10]="Hit"
pair[10][11]="Hit"
pair[12][8]="Hit"
pair[12][9]="Hit"
pair[12][10]="Hit"
pair[12][11]="Hit"
pair[14][9]="Hit"
pair[14][11]="Hit"
pair[10][2]="Double if possible, otherwise hit"
pair[10][3]="Double if possible, otherwise hit"
pair[10][4]="Double if possible, otherwise hit"
pair[10][5]="Double if possible, otherwise hit"
pair[10][6]="Double if possible, otherwise hit"
pair[10][7]="Double if possible, otherwise hit"
pair[10][8]="Double if possible, otherwise hit"
pair[10][9]="Double if possible, otherwise hit"
pair[14][10]="Stay"
pair[18][7]="Stay"
pair[18][10]="Stay"
pair[18][11]="Stay"
pair[20][2]="Stay"
pair[20][3]="Stay"
pair[20][4]="Stay"
pair[20][5]="Stay"
pair[20][6]="Stay"
pair[20][7]="Stay"
pair[20][8]="Stay"
pair[20][9]="Stay"
pair[20][10]="Stay"
pair[20][11]="Stay"
=begin
def pair(card1, card2, sum_cards, dealer_card)
if card1 == 11 || card2 == 11
  return soft[sum_cards][dealer_card.to_i]
elsif card1 == card2
  return pair[sum_cards][dealer_card.to_i]
else hard[sum_cards][dealer_card.to_i]
end
end
=end

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

if card1 == card2 && card1 + card2 == 22
  puts pair[sum_cards][dealer_card]
elsif card1 == 11 || card2 == 11
  puts soft[sum_cards][dealer_card]
elsif card1 == card2
  puts pair[sum_cards][dealer_card]
else
  puts hard[sum_cards][dealer_card]
end



#dont know if i need this but it helps
soft=Hash.new
hard=Hash.new
pair=Hash.new

#testing to make sure variables hold what they need to
#puts"soft = #{soft}"
#puts"hard = #{hard}"
#puts"pair =#{pair}"
#puts"card1 =#{card1}"
#puts"card2 =#{card2}"
#puts"sum =#{sum_cards}"
#puts"dealers card =#{dealer_card}"


#puts hard[sum_cards][dealer_card]


#  puts soft[sum_cards][dealer_card]



#  puts pair[sum_cards][dealer_card]

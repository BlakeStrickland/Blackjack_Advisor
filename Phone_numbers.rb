
contact_hash = Hash.new

puts "Please enter a name: "
name = gets.chomp

until name == ""
    puts "Please enter number"
    number = gets.chomp
    contact_hash [name] = number
    puts ""
    puts "Do you have another?"
    name = gets.chomp

  puts "#{contact_hash}"

end

puts "Whos number would you like?"
  name = gets.chomp

until name == ""

  if contact_hash[name] ==
    answer = contact_hash[name]
  else
    answer = "(None found)"
  end

  #answer = contact_hash[name || "(Not found)"]

  puts "#{name}'s number is: " + answer

  puts "Anyone else?"
  name = gets.chomp
end

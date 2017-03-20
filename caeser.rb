#Get the message to be encoded and the key
puts "Enter your message"
msg = gets.chomp
key = 0
output = ""
alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']

while (key < 1 || key > 25)
  puts "Enter a shift key between 1 and 25"
  key = gets.chomp.to_i
  puts "invalid key, please try again" if (key < 1 && key > 25)
end

letters = msg.split(//)
letters.each do |letter|
  if alphabet.include?(letter.downcase)
    if letter.downcase == letter
      letter_is_uppercase = false
    else
      letter_is_uppercase = true
    end
    letter = letter.downcase
    position = alphabet.index(letter)
    position += key
    position -= 26 if position > 25
    letter = alphabet[position]
    letter = letter.upcase if letter_is_uppercase
  end
  output += letter
end
puts output

def encrypt(password)
  index = 0
  while index < password.length
    if password[index] == "z"
      password[index] = "a"  
    else  
      password[index] = password[index].next!
    end  
    index += 1   
  end  
  p password
end 

def decrypt(encrypted_password)
	alphabet = "abcdefghijklmnopqrstuvwxyz"	
	letter_place = 0
		while letter_place < encrypted_password.length
			encrypted_password[letter_place] = alphabet[alphabet.index(encrypted_password[letter_place]) - 1] 
			letter_place += 1
		end
		p encrypted_password
end	

#encrypt("abc")
#encrypt("zed")
#decrypt("bcd")
#decrypt("afe")

#decrypt(encrypt("swordfish"))

valid_answer = false
puts "Would you like to decrypt or encrypt a password?"

until valid_answer
answer = gets.chomp 
  if answer == "encrypt"
    puts "Please choose a password."
    valid_answer = true
  elsif answer == "decrypt"
    puts "Please choose a password."
    valid_answer = true
  else
    puts "I don't understand. Please type either 'encrypt' or 'decrypt.'"
  end
end

password_input = gets.chomp

if answer == "encrypt"
  encrypt(password_input)
else
  decrypt(password_input)
end



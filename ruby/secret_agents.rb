# ask for user input
puts "Please enter your password:"
random_word = gets.chomp
# write encryption method
def encrypt(word)
	index = 0
# skips encrypting spaces
	while index < word.length
		if word[index] == " "
			word[index] = " "
# fixes edge cases
		elsif word[index] == "z"
			word[index] = "a"			
# encrypt to the next letters
		else  
			word[index] = word[index].next!
	end
	index += 1
	end
# output encryption
	puts "#{word}"
	return word
end
# create decryption method
def decrypt(word)
	index = 0
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	while index < word.length
		if word[index] == " "
			word[index] = " "
# go backwards in alphabet one letter
		else
			letter = alphabet.index(word[index])
			word[index] = alphabet[(letter-1)]
		end
		index += 1
	end
# output decryption to user
	puts "#{word}"
end

# ask user if they want decrypted or encrypted

def inquiry(random_word)
	puts "Would you like to encrypt or decrypt it?"
	choice = gets.chomp

	if choice == "encrypt"
		encrypt(random_word)
	elsif choice == "decrypt"
		decrypt(random_word)
	elsif choice == "both"
		decrypt(encrypt(random_word))
	else 
		puts "I didn't quite catch that... try again"
		inquiry
	end
end

inquiry(random_word)
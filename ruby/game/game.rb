#word input becomes secret word
#until user makes number of guesses equivalent to letters in word
	#if input letter is in word 
	 #letter shows up
	 #asked to input another letter
	#if input letter is not in word
	 #taunt
	 #askes to input another letter
	#if guess correct word 
		#game ends  

original_word = "hello"
word = original_word.split("")

puts "original_word: #{original_word}"
puts "word: #{word}"

puts

guess = "l"

p original_word == guess

if original_word == guess 
  puts "Correct! The secret word was:"
elsif original_word.include? guess 
	word.map! do |letter|
		if letter == guess
			letter
		else
			"-"
		end
	end
else puts "Try again!"
  word.map! { |letter| "-"}
end

word.each { |letter| print letter }
word = original_word.split("")







=begin
###
word = nil      #no word or letters yet
tries = 0       #setting the tries to zero
letter = nil    #no word or letters yet

puts "This is a game for 2. Player 1 writes which word they want player 2 to guess."
puts "Player 1, write a word: "
word = gets.chomp
letters = []
letters = word.split(//)
progress = ["_ " * letters.length]
puts progress
puts "Player 2, guess a letter: "
###
def show_progress(word,guessed_letters)
  display_string = ''
  word.chars.each do |char|
    if guessed_letters.include?(char)
      display_string << char
    else 
      display_string << '_'
    end
  end
  display_string
end

show_progress(word, ['e'])
###
def check_and_print(letters, guessed)
  won = true

  # Print letters accordingly
  letters.each do |l|
    if guessed.include? l
      print l
    else
      print '_ '
      won = false
    end
  end

  # Insert a line break
  puts ""

  return won
end

while tries < 10 || letters.length == 0
    letter = gets.chomp
    if letters.include? letter
        puts "You guessed one letter!"
        guessed << letter
        won = check_and_print(letters, guessed)

        # Check if the user won
        if won
          puts "You won!!"
          break
        end
    else
        puts "Nope, sorry."
        tries += 1
        puts "You have " + (10 - tries).to_s + " left"
    end
end
=end
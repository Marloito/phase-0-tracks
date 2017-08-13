
#until user makes number of guesses equivalent to letters in word
	#if input letter is in word #word input becomes secret word
	 #letter shows up
	 #asked to input another letter
	#if input letter is not in word
	 #taunt
	 #askes to input another letter
	#if guess correct word 
		#game ends  
class WordGame
  attr_accessor :original_word, :guess
  attr_reader :guess_count, :correct_guess

  def initialize
    @original_word = ""
    @guess_count = 0
    @correct_guess = false
    @guess = ""
  end 

  def check_entry
    @guess_count += 1
    if @original_word == @guess 
      @correct_guess = true
    else 
      @correct_guess = false
    end
  end

end    

puts "Player 1, enter a word!"
game = WordGame.new

@original_word = gets.chomp

word = @original_word.split("")

puts "Player 2, the secret word has #{word.length} letters."
puts "You have #{word.length} chances, good luck!"

until game.correct_guess || game.guess_count == @original_word.length
  puts "Guess the secret word, or a letter."
  @guess = gets.chomp
  if !game.check_entry && game.guess_count != @original_word.length
    if @original_word.include? @guess 
      word.map! do |letter|
        if letter == @guess
          letter
        else
          "-"
        end
      end
      word = @original_word.split("")
    else puts "Try again!"
      word.map! { |letter| "-"}
      word = @original_word.split("")
    end
  end  
end

if game.correct_guess
  puts "Correct! You won in #{game.guess_count} guesses! The secret word was "
else
  puts "You lose! Better luck next time!"
end 

word.each { |letter| print letter }

puts @guess
puts @original_word
p @correct_guess







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
#Release 0-----------------------------------------------------
def example
	puts "hey, "
	yield("blah", "yo")
	puts "there"
end

example { |word1, word2| puts "word1 is #{word1}, and word2 is #{word2}." }

#Release 1----------------------------------------------------
letters = ["a", "b", "c", "d", "e"]
numbers = {
	one: 1,
	two: 2,
	three: 3,
	four: 4,
	five: 5
}

#Array
p letters
letters.each do |letter|
	p letter.upcase
end	
p letters

p letters
letters.map! do |letter|
	letter.next
end	
p letters

#Hash 
p numbers
numbers.each do |spell, digit|
	puts "#{spell}" * digit
end
p numbers


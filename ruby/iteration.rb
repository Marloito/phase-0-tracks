#Release 0-----------------------------------------------------
def example
	puts "hey, "
	yield("blah", "yo")
	puts "there"
end

example { |word1, word2| puts "word1 is #{word1}, and word2 is #{word2}." }


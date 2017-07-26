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

#Release 2-------------------------------------------------------------

#1---------
a = ["a", "b", "c"]

h = {
	a: 100,
	b: 200,
	c: 300
}

p a 
puts "DELETE IF = B"
a.delete_if { |letter| letter == "b" }
puts "new array is"
p a

puts ""

p h
puts "DELETE IF >= 201"
h.delete_if { |key, value| value >= 201 }
puts "new hash is"
p h

#2----------
a = ["a", "b", "c"]

h = {
	a: 100,
	b: 200,
	c: 300
}

puts ""

p a
puts "KEEP IF >= B"
a.keep_if { |letter| letter >= "b" }
puts "new array is"
p a

puts ""

p h
puts "KEEP IF >=201"
h.keep_if { |key, value| value >= 201 }
puts "new hash is"
p h

puts ""
#3----------------------
a = ["a", "b", "c"]

h = {
	a: 100,
	b: 200,
	c: 300
}

p a
a.reject! { |letter| letter >= "b" }
p a

puts ''

p h
h.reject! { |key, value| value >= 201 }
p h

puts ""

#4-------------------------
a = ["a", "b", "c"]

h = {
	a: 100,
	b: 200,
	c: 300
}

p a 
p "we put in this DROP"
p a.drop_while { |letter| letter < "b" }
a.drop_while { |letter| letter < "b" }
p a 

=begin

puts ""

p a 
p "we put in this TAKE"
p a.take_while { |letter| letter < "b" }
a.take_while { |letter| letter < "b" }
p a 

=end
puts ""

p h 
p h.to_a.drop_while { |arr| arr[1] < 199 }.to_h
h.to_a.drop_while { |arr| arr[1] < 201 }.to_h
p h

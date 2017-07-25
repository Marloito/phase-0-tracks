# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

p "zom".insert(1, "o")
p "zom".gsub("o", "oo")
# => “zoom”

p "enhance".center(15)
# => "    enhance    "

p "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

p "the usual".insert(9, " suspects")
p "the usual".insert(-1, " suspects")
p "the usual".concat(" suspects")
#=> "the usual suspects"

p " suspects".prepend("the ususal")
# => "the usual suspects"

p "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

p "The mystery of the missing first letter".slice(1..-1)
p "The mystery of the missing first letter"[1..-1]
# => "he mystery of the missing first letter"

p "Elementary,    my   dear        Watson!".squeeze
p "Elementary,    my   dear        Watson!".squeeze(" ")
# => "Elementary, my dear Watson!"

 p "z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# it is the ASCII code for lower-case z

p "How many times does the letter 'a' appear in this string?".count("a")
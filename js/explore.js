/*
REVERSE STRING

make function take string as parameter
***function reverse(string) {

set blank string to variable
***blankString = ""

for every letter in the string
	start when strings length is one less (for index vs length) (starts at end of word)
	while the number is greater or equal to 0
	and reducing by 1 every round
  ***for (var i = string.length - 1; i >= 0; i--)

	add the number/index location of the word to the previously set blank string
  ***{ blankString += string[i]; }

print the blank string (now not blank string)
***console.log(blankString); }

*/

function reverse(string) {
	newString = ""

	for (var i = string.length - 1; i >= 0; i--) {
		newString += string[i];
	}

	console.log(newString);
}

//DRIVER CODE
reverse("yo")
reverse("hello")
reverse("Marlo Ito")


if(1 == 1) reverse("palindrome") 

if (2 > 1) {
	reverse("magic")
}







/* test code
var yo = "hello"

yo + "111"

console.log(yo)

yo += "111"

console.log(yo)
*/
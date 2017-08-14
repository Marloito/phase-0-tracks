//RELEASE0
/* 
//takes array as method
function someFunction(array) { --some code-- }
//puts length of each string into new array
var arr1 = ["hello", "at", "fantastic"];
var arr1Length = [];

for (phrase in arr1) {
 arr1Length.push(arr1[phrase].length);
}

console.log(arr1Length);

//findest highest number in new array
console.log(Math.max(...arr1Length));

index = Math.max(...arr1Length)

//finds index location of said number in new array
console.log(arr1Length.indexOf(9));

console.log(arr1Length.indexOf(index));

//returns element in original array with same index of new array
console.log(arr1[arr1Length.indexOf(9)]);

console.log(arr1[arr1Length.indexOf(index)]);
*/
function longestString(array) {
	var length = [];

	for (phrase in array) {
 		length.push(array[phrase].length);
	}	

	index = Math.max(...length);

	console.log(array[length.indexOf(index)]);
}

var array0 = ['hello', 'hello how are you?', 'hi'];
var array1 = ['bye', 'goodbye', 'bye bye, have a good evening!'];
var array2 = ['this is the longest string', 'this is not', 'neither is this'];

longestString(array0);
longestString(array1);
longestString(array2);






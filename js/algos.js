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

/*
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

//RELEASE 1
//**need to turn hash like object into an array**
//set a an array variable to hold new content (global) (string for now)
//function needs to take a hash-like object as parameter
	//--needed to reset array variable to later function could be reusable
	//for every key in the object
		//we need to add both the key and the value combined to the array and add a space
	//split the array variable(string) into an actual array containing all key/values as one
	//--needed to take away last space to avoid inacurate results when looking for matches
var array1 = "";
function mergeKeyValue1(hashy) {
	array1 = "";
	for (key in hashy) {
		array1 += key + hashy[key] + " ";
	}

	array1 = array1.split(" ");
	array1.splice(array1.length - 1, 1);
}
//--needed another one to set a new name to the 2nd array
var array2 = "";
function mergeKeyValue2(hashy) {
	array2 = "";
	for (key in hashy) {
		array2 += key + hashy[key] + " ";
	}

	array2 = array2.split(" ");
	array2.splice(array2.length - 1, 1);
}
//**need to see is any elements in 2 different arrays match**
//boolean variable if there is a match (global)
//function that compares 2 arrays and changes boolean variable (takes 2 arrays)
	//create array to hold matches
	//for every element in first array compare it to
	//for every element in second array 
	//if elements match then add that element(either since they are the same) to the matches array
	//if the length of the matches array is NOT 0 (so it contains a match) then the boolean variable should be set to true
	//if not then boolean variable set to false
var matchExists = ""
function getMatch(array1, array2) {
	var matches = [];

  for ( var x = 0; x < array1.length; x++ ) {
    for ( var y = 0; y < array2.length; y++ ) {
      if ( array1[x] === array2[y] ) { matches.push( array1[x] ); }
    }
  }
   
  if (matches.length != 0) {
   	matchExists = true;
  } else {
  	matchExists = false;
  }
}
//**need to return true or false if matches are found in 2 different hash-like objects
//function needs to take two hash-like objects
	//use function to create first new arrays
	//--realized that needed 2 different array names so updated 
	//use function to detect if there is a match
	//if there is a match
		//return true
	//else
		//return false	
function containsMatch(object1, object2) {
	mergeKeyValue1(object1)
	mergeKeyValue2(object2)
	getMatch(array1, array2)
	if (matchExists == true) {
		return true;
	} else {
		return false;
	}

}
//DRIVER CODE
data = {name: "bob", 'age': 11, weight: 136};
otherData = {age: 12, name: "bob", weight: 140};
moreData = {age: 19, name: "frank", weight: 150};
anotherData = {age: 17, name: "taylor", weight: 136};

console.log(containsMatch(data, otherData))
console.log(containsMatch(data, moreData))
console.log(containsMatch(data, anotherData))
console.log(containsMatch(anotherData, moreData))

*/

//RELEASE 2

//take number as parameter
//generate array of strings that length
//each string random 
//min 1 max 10 letters

//10 times 
//generated array
//prints array
//feeds to longestString (already prints result)

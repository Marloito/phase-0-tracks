//RELEASE 0 - arrays
var colors = ["blue", "green", "yellow","red"];

var names = ["Sal", "Mystic", "Flash", "Ed"];

console.log(colors)
console.log(names)

colors.push("magenta");
names.push("Fire");

console.log(colors)
console.log(names)

//RELEASE 1 - objects (like hashes in Ruby)
//console.log(names[0])  //using as test code

var horses = {}

var length = colors.length

for (var index = 0; index < length; index++ ) {
	horses[names[index]] = colors[index];
}

console.log(horses)

//RELEASE 2 - constructor functions

function Car(make, model, color, runs) {

	console.log("Creating new car...", this);

	this.make = make;
	this.model = model;
	this.color = color;
	this.runs = runs;

	this.honk = function() { console.log("*honk!*"); };

	this.start = function() {
		if (this.runs) {
			console.log("*engine revs*");
		} else {
			console.log("*engine putters out*");
		}
	}

	console.log("Car initialized")
};
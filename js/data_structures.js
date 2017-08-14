/*//RELEASE 0 - arrays
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
*/

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

	//driver code
var car1 = new Car("Toyota", "Corola", "Indigo", false);
var car2 = new Car("Honda", "Civic", "White", true);
var car3 = new Car("Nissan", "Skyline", "Midnight Black", true);

console.log(car1)
car1.honk();
car1.start();

console.log(car2)
car2.honk();
car2.start();

console.log(car3)
car3.honk();
car3.start();

car2.trimLevel = "Si"
console.log(car2)

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

//RELEASE 3 - Loop & Reflect

function printInfo(car) {
	for (key in car) {
		console.log("Key: " + key);
		console.log("Value: " + car[key]);
		console.log("---")
	}
}

printInfo(car2)

//if you are looping through hash like objects it is difficult to loop through 
//to make seperate updates to values

//constructor methods make it simple to create many objects in javascript
//but the objects created have less flexibility later on


/* test code
for (key in car1) {
	console.log("Key: " + key);
	console.log("Value: " + car1[key]);
	console.log("---")
}
*/

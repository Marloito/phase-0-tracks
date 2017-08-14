//RELEASE 0
var colors = ["blue", "green", "yellow","red"];

var names = ["Sal", "Mystic", "Flash", "Ed"];

console.log(colors)
console.log(names)

colors.push("magenta");
names.push("Fire");

console.log(colors)
console.log(names)

//RELEASE 1
//console.log(names[0])  //using as test code

var horses = {}

var length = colors.length

for (var index = 0; index < length; index++ ) {
	horses[names[index]] = colors[index];
}

console.log(horses)
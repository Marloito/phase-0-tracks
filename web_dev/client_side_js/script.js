console.log("We're in business!");

function addGreenBorder() {
	var what = document.getElementById("what");
	what.style.border = "2px solid #ccffcc";
}

function addRedBorder() {
	var why = document.getElementById("why");
	why.style.border = "2px solid #ffcccc";
}

var what = document.getElementById("what");
what.addEventListener("mouseover", addGreenBorder);

var why = document.getElementById("why");
why.addEventListener("mouseover", addRedBorder);

//when use event.target every element in div gets seperate outline
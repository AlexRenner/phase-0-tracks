// declare string
// write loop
// push each letter from last to first
// join array into new string

var str_fwd = "In reverse!";
var letters = [];

function reverse(str_fwd) {

	for (var i = str_fwd.length; i > 0; i--) {
		letters.push(str_fwd[i-1]);

	}
}

reverse(str_fwd);
var str_bkwd = letters.join("");

if (str_fwd != null) {
	console.log(str_bkwd);
}
else {
	console.log("The string is empty!");
}
// create a string to be reversed
// define method for reversing
// break string into an array of letters
// reverse the array
// join the array of letters back into new string
// print new string and old string to console (make it pretty)

var my_string = "Take it back now y'all!"

function reverse(string) {
	var letter_array = [];

	for (var index = string.length; index > 0; i--) {
		letter_array.push(string[index-1]);
	}
}
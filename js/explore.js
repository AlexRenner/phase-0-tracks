// create a string to be reversed
// define method for reversing
// break string into an array of letters
// reverse the array
// join the array of letters back into new string
// print new string and old string to console (make it pretty)

var my_string = "Take it back now y'all!"
var test_string = ""

function reverse(string) {
	var letter_array = [];

	for (var index = string.length; index > 0; index--) {
		letter_array.push(string[index-1]);
	}

	// console.log(letter_array);
	reversed_string = letter_array.join("");
	// console.log(string);
	//return string; can't seem to get string to return and update my_string
	// my_string = letter_array.join("");
	make_it_pretty(string, reversed_string)
	// decided to just call function within a function instead
};

function make_it_pretty(fwd_string, bwd_string) {
	if (fwd_string.length > 0) {
		console.log(fwd_string + " backwards would look like this: ");
		console.log(bwd_string);
	} else {
		console.log("I can't work with nothing here!");
	}
};

reverse(my_string);
reverse(test_string);

// console.log(my_string);
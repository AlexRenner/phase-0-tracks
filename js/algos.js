// create a test array
// declare the function
// declare initial length variable
// compare each array item to the variable
// update longest item only if the current array item is longer
// (if I can figure it out) create a new array if multiple items are the longest

var test_array = ["tiny", "short", "longer", "nope"];
var longest = "";
var longest_array = [];

var test_array2 = ["here's", "another", "string", "array", "to test", "Wanted to test another"];

function length_check(string) {
	if (string.length > longest.length) {
		longest = string;
		longest_array = [string];
	} else if (string.length === longest.length) {
		longest_array.push(string);
	}
	console.log(longest_array);
}

test_array.forEach(length_check);
console.log("Now let's test the second array:");
var longest = ""; //had to clear variable to prevent including previous longest
test_array2.forEach(length_check);

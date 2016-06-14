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
	// console.log(longest_array);
}

test_array.forEach(length_check);
console.log(longest_array);
console.log(" ");

console.log("Now let's test the second array:");
var longest = ""; //had to clear variable to prevent including previous longest
test_array2.forEach(length_check);
console.log(longest_array);
console.log(" ");

// create sample hashes for testing
// define function that takes two hashes
// loop through each key comparing it to each key (another loop) of second hashes
// print statement if true
// print different statement if false

hash1 = {
	name: "Alex",
	age: 29
};

hash2 = {
	name: "James",
	gender: "Male"
};

hash3 = {
	gender: "female",
	condition: "healthy"
};

function hash_comparison(first_hash, second_hash) {
	for (var first_key in first_hash) {
		for (var second_key in second_hash) {
			if (first_key === second_key) {
				console.log(first_key + " is equal to " + second_key + ": True");
			}	else {
				console.log(first_key + " is equal to " + second_key + ": False");
			}
		}
	}
};

hash_comparison(hash1, hash2);
console.log(" ");
hash_comparison(hash2, hash3);
console.log(" ");

// create a function that takes an integer
// that integer runs a random number generator x amount of times
// each time the random number generator runs it should grab that many random letters
// the letters should be joined into a string
// then the string should be pushed into an array
// once the array has been fully populated it should be run through function length_check
var random_array = [];

function word_generator() {
	var random_number = Math.floor((Math.random()*10)+1);
	// console.log(random_number);
	var random_word = "";
	// random_array = [];
	var letter_array = [];
	var the_abcs = "abcdefghijklmnopqrstuvwxyz";
	for (var i = 0; i < random_number; i++) {
		letter_array.push(the_abcs.charAt(Math.floor((Math.random()*the_abcs.length)+1)));
	};
	console.log(letter_array);
	random_array.push(letter_array.join(""));
};

function multiple_words(times) {
	for (var i = 0; i < times; i++) {
		word_generator();
	};
};

multiple_words(10);
console.log(random_array);
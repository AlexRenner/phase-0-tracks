// create array
// write .each loop to evaluate length of each array item
// create new variable
// if array item.length is longer than new variable then new variable = arrayitem.length
// after evaluating each array item print final new varriable

var string_array = ["first", "second", "third"];
var new_string = null;
var longest_string = 0;

function evaluate_array(obj) {
		if (obj.length > longest_string) {
			longest_string = obj.length;
			new_string = obj;
		}
};

// declare multiple hashes
// write method to compare hashes
// call two hashes that will equate to true
// call two hashes that will equate to false

var hash1 = {
	name: "Alex", age: 29
};

var hash2 = {
	name: "Joe", age: 29
};

var hash3 = {
	name: "mckinzie", age: 25
};

function compare_hash(obj, obj2) {
	var comparison = null;
	if (obj.age === obj2.age) {
		comparison = true;
		console.log(comparison);
}	else {
		comparison = false;
		console.log(comparison);
	}
};

// create array of three random integers
// write method to write words from random integers
// print new array with "words" to console

var new_array = [];

function randomize_letters(times) {
	var random_number = Math.floor(Math.random()*11);
	var random_word = "";
	var abcs = "abcdefghijklmnopqrstuvwxyz";
	for (var i = 0; i < random_number; i++) {
		random_word += abcs.charAt(Math.floor(Math.random() * abcs.length));
	}
	new_array.push(random_word);
};

string_array.forEach(evaluate_array);
console.log(new_string);

compare_hash(hash1, hash3);
compare_hash(hash1, hash2);

randomize_letters(10);
console.log(new_array);
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

var comparison = false;

function compare_hash(obj, obj2) {
	delete comparison;
	if (obj.age === obj2.age) {
		comparison = true;
}	else {
		comparison = false;
	}
};

// create array of three random integers
// write method to write words from random integers
// print new array with "words" to console

var random_array = [Math.floor(Math.random()*11), Math.floor(Math.random()*11), Math.floor(Math.random()*11)];

var new_array = [];

function randomize_letters(array_item) {
	var abcs = "abcdefghijklmnopqrstuvwxyz";
	var new_string_array = [];
	array_item.times(new_string_array.push(abcs[Math.floor(Math.random()*26)]));
	var random_word = new_string_array.join("");
	new_array.push(random_word);
};

string_array.forEach(evaluate_array);
console.log(new_string);

compare_hash(hash1, hash3); // I can't seem to figure out why this equates to true...
console.log(comparison);
compare_hash(hash1, hash2);
console.log(comparison);

random_array.forEach(randomize_letters);
console.log(new_array);
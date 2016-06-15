var colors = ["blue", "green", "orange", "yellow"];
var names = ["Charlie", "Mr. Ed", "Glue", "Crazy Horse"];

colors.push("Red");
names.push("Jumper");

var horse = {name: 'lightning', age: 32, color: 'palomino'};

var newHorses = {};

function horseBuilder(name, color) {
 if (name.length === color.length) {
   for (var i = 0; i < name.length; i++) {
   newHorses[name[i]] = color[i];
     console.log(newHorses);
   }
 } else {
   console.log("Array's do not match");
 }
};

horseBuilder(names, colors);

// Make a loop with a counter that adds the arrays index that is equal to the current counter to 
// both the key and value of the newHorse object

function Car(make, model, year) {
  
  this.make = make;
  this.model = model;
  this.year = year;
  
  console.log("Constructing car:", this);
  
  this.create_message = function() {
    console.log("Created " + this.year +" "+ this.make +" "+ this.model + " and it is " + (2016-this.year) + " years old.");
  };
};

var paul = new Car("Chevy", "Impala", 2007);
var sean = new Car("Ford", "Focus", 2013);

function currentCar(userName, instance) {
  console.log(userName + "'s " + instance.make +" "+ instance.year +" "+ instance.model + " is his current car.");
};

currentCar("Alex", paul);
currentCar("Sean", sean);

paul.create_message();
sean.create_message();

// console.log("Alex's " + paul.make +" "+ paul.year +" "+ paul.model + " is his current car.");
// console.log(paul);
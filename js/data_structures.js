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

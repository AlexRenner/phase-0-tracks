marvel = {
	:ironman => ["Iron Man", "Iron Man 2", "Iron Man 3"],
	:thor => ["Thor", "Thor: The Dark World"],
	:captainamerica => [
		"Captain America: The First Avenger",
		"Captain America: The Winter Soldier",
		"Captain America: Civil War"
	],
	:spiderman => {
		:mcguire => ["Spiderman", "Spiderman 2", "Spiderman 3"],
		:garfield => [
			"The Amazing Spiderman",
			"The Amazing Spiderman 2"]
	},
	:hulk => "The Incredible Hulk",
	:avengers => ["The Avengers", "The Avengers: Age of Ultron"]
	}

p marvel

p marvel[:ironman][1]

p marvel[:spiderman][:garfield][1]
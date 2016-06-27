require "sqlite3"

xmas_list = SQLite3::Database.new("xmas_list.db")

create_table = <<-SQL 
  CREATE TABLE IF NOT EXISTS xmas_list(
    id INTEGER PRIMARY KEY,
    item VARCHAR(255),
    quantity INT
  )
SQL

xmas_list.execute(create_table)

def add_item(db, item, quantity)
  db.execute("INSERT INTO xmas_list (item, quantity) VALUES (?, ?)", [item, quantity])
end

# def print_list(db) 
#   db.execute("SELECT * FROM xmas_list")
# end
# I couldn't get the file to actually print to the terminal

def inquiry(db)
	answer = nil

  until answer == "no" || answer == "n"
  	puts "Would you like to add to your christmas list?"
    answer = gets.chomp.downcase
    puts ' '

  	if answer == "yes" || answer == "y"
  		puts "What item would you like to add?"
  		list_item = gets.chomp.capitalize
  		puts ' '

  		puts "How many would you like?"
  		item_quantity = gets.chomp.to_i
  		puts ' '

  		add_item(db, list_item, item_quantity)

  	elsif answer == "no" || answer == "n"
  		# puts "Here is your updated list:
  		# "
  		# print_list(db)
  		exit(0)

  	else 
  		puts "Didn't quite catch that.  Please enter yes or no."
  		puts " "
  	end
  end
end

inquiry(xmas_list)
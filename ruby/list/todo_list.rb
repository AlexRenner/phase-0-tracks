class TodoList
	def initialize(list)
		@list = list
	end 

	def get_items
		@list
	end

	def add_item(item)
		@list << item
		@list
	end

	def delete_item(r_item)
		@list.delete(r_item)
		@list
	end

	def get_item(integer)
		@list[integer]
	end
end
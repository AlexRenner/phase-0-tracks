class TV
	attr_reader :resolution, :model, :size
	attr_accessor :size

	def initialize(model, resolution, size)
		@model = model
		@resolution = resolution 
		@size = size
		@power = "off"
		@mounted = false
	end

	def mount_tv
		if @mounted == false
			@mounted = true
		elsif @mounted == true
			@mounted = false
		end
	end

	def switch_power
		if @power == "off"
			@power = "on"
		elsif @power == "on"
			@power = "off"
		end
	end

	def change_resolution(resolution)
		@resolution = resolution
		puts "Your updated resolution is #{@resolution}p"
	end
end

tv_array = []
# changhong = TV.new("Changhong", 1080, "40")
# tv_array << changhong
# changhong.mount_tv
# changhong.switch_power
# changhong.change_resolution(720)
tv_choice = nil

until tv_choice == "cancel"
	puts "Would you like to view a TV? (Type \"cancel\" to exit)"
	tv_choice = gets.chomp.downcase
	puts ' '

	if tv_choice == "yes" || tv_choice == "y"
		puts "What TV model would you like to look at today?"
		tv = gets.chomp
		puts ' '

		puts "What resolution? (in pixels)"
		reso = gets.chomp.to_i
		puts ' '

		puts "What size? (in inches)"
		size = gets.chomp
		puts ' '

		tv_array << TV.new(tv, reso, size)
	elsif tv_choice == "no" || tv_choice == "n"
		puts "Thanks for stopping by!"
		puts ' '
		tv_choice = "cancel"
		puts "Today you checked out the following TV(s):"
		tv_array.each { |tv| puts "The #{tv.size}inch #{tv.model} with #{tv.resolution}p resolution" }
	elsif tv_choice == "cancel"
		exit(0)			
	else
		puts "I didn't quite catch that."
		puts ' '
	end
end
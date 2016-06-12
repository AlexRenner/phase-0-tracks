class TV
	attr_reader :resolution, :mounted
	attr_accessor :size
	
	def initialize(resolution, size)
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


class TV
	def initialize(resolution, size)
		@resolution = resolution
		@size = size
		@status = "off"
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
		
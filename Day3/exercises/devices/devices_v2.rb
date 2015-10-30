module Camera
	def take_photo
		puts "Pic taken in #{@os}"
	end
end

class Device
	attr_accessor :os, :inches

	def initialize os, inches
		@os = os
		@inches = inches
	end

	def print_time
		puts Time.now
	end
end

class Phones < Device
	include Camera

	def initialize os, inches
		super os,inches
		@agenda = []
	end
	def add_contact name
		@agenda = {name: name, number: phone}

	end
	def get_contact name,number
		number_found = ""
		@agenda.each do |contact|
			if name == contact[:name]
				number_found = contact[:number]
			end			
		end
		return number_found #.each return an array 
	end
	def call name
		number = get_contact(name)
		puts "Calling #{number}"
	end
end

class Laptop < Device	
	attr_accessor :toucheable
	
	def initialize os,inches,toucheable
		super os,inches
		@toucheable = toucheable
	end
end

class SmartSwatch < Device
 	include Camera
 	#Don't need initialize becauase is the same tha Device

	def print_name
		puts "****** #{Time.now} *****"
	end
end
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
class PhoneBook 
	def initialize
		@contact_list = []
	end
	def add_contact name
		@contact_list << {name: name, number: phone}

	end
	def get_contact name,number
		number_found = ""
		@contact_list.each do |contact|
			if name == contact[:name]
				number_found = contact[:number]
			end			
		end
		return number_found #.each return an array 
	end
end
class Phones < Device
	include Camera

	def initialize os,inches,_phonebook
		super os,inches
		@phonebook = _phonebook
	end
	def add_contact name
		@phonebook.add_contact(name,number)

	end
	def get_contact name
		@phonebook.get_contact(name)
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

class Microwave
	def heat food
		puts "Heating #{food}"
	end
	def print_time
		puts "I'm a microwave #{Time.now}"
	end
end

items = [SmartSwatch.new("Android", 2),Microwave.new]

items.each do |item|
	item.print_time
end
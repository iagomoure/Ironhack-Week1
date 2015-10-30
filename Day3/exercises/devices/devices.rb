require 'pry'
require 'Time'

module DoTakePhoto
	def take_photo
		puts "Photo taken in #{@os}"
	end
end

class Device

	def initialize os,inches
		@os = os
		@inches = inches
	end

	def print_time
		puts Time.now
	end
end
class Phone < Device
	include DoTakePhoto

	def initialize(os,inches,phonebook)
		super os,inches
		@phonebook = phonebook
	end

	def call contact
		@phoneBook.read_contact
		binding.pry
	end
end

class PhoneBook 
	attr_accessor :contacts

	def initialize 
		@contacts = []
	end

	def add_contact contact
			@contacts << contact
	end

	def read_contact
		@contacts.each {|contact| puts "#{contact.name} :::: #{contact.telephone}"}
	end
end

class Contact
	attr_reader :name, :telephone

	def initialize name,telephone
		@name = name
		@telephone = telephone
	end
end

class SmartWatch < Device
	include DoTakePhoto
	
	def initialize os,inches
		super os,inches
	end

	def print_time
		puts "********** #{Time.now.strftime("%Y-%m-%d %H:%M:%S")} *********"
	end

end

class Laptop < Device

	def initialize (os,inches,touchable)
		super os,inches
		@touchable = touchable
	end
end


iago = Contact.new("Iago","12345678")
laura = Contact.new("Laura","12345678")
pb = PhoneBook.new

p = Phone.new("ios",7,pb)
s = SmartWatch.new("ios-watch",2)
l = Laptop.new("osX",13,true)

p.print_time
s.print_time
l.print_time

pb.add_contact(iago)
pb.add_contact(laura)
pb.read_contact


s.print_time

p.take_photo
s.take_photo

p.call(iago)








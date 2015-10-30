class Car
	def initialize wheels,noise
		@wheels = wheels
		@noise = noise
	end

	def make_car
		@wheels
		@noise
	end
end 

class CountWheels
	attr_reader :wheels

	def initialize wheels
		@wheels = wheels
	end
	
	def count
		puts @wheels
	end
end

class CountNoises
	attr_reader :noise
	
	def initialize noise
		@noise = noise
	end
	def count
		puts @noise
	end
end

c1 = Car.new(4,"Brooom")
c2 = Car.new(2,"BromBrom")
c3 = Car.new(3,"Brrrrrrom")

arr = [CountWheels.new, CountNoises.new]
arr.each do |count|
		puts arr.count
end
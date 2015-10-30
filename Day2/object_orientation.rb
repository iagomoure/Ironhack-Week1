class Car

	def initialize sound
		@sound = sound
		#@cities = []
		@cities = "file.txt"
		IO.write @cities, "" #inicializao el fichero a vacio
	end
	def make_noise
		puts @sound
	end

	def self.make_noise_twice car
		car.make_noise
		car.make_noise
	end

	def add_city city
		content = IO.read @cities
		IO.write @cities,content + " " + city
		#@cities << city
	end
	def cities
		#@cities
		ciites = IO.read @cities
	end
end
class RacingCar < Car
	def initialize spoiler
		super "BROOOM"
		@spoiler = spoiler
	end	
	def make_noise
		puts @sound
		puts @spoiler
	end
end

Car.new("Broom").make_noise
Car.new("Broooooom").make_noise

Car.make_noise_twice Car.new("Brooommmmm")

c1 = Car.new("Broooommmooommm")
c1.add_city("Madrid")
c1.add_city("Barcelona")
c1.add_city("Miami")
puts c1.cities

RacingCar.new("delantero").make_noise





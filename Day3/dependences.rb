class Car
	
	def initialize noise,engine
		@noise = noise
		@engine = engine
	end
	
	def make_noise
		puts @noise 
		@engine.make_noise
	end
end

class Engine
	
	def  initialize noise
		@noise = noise
	end
	def make_noise
		puts @noise
	end
end

class ElectricEngine
	
	def initialize noise
		@noise = noise
	end
	
	def make_noise
		puts @noise
	end
end


explosion = Engine.new("Broooommmm") 
electric = Engine.new("Ssshhhhhss")

c1 = Car.new ("Start",explosion)
c2 = Car.new ("Start",electric)


c1.make_noise
c2.make_noise
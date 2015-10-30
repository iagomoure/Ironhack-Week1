class Engine
	
	def initilize pistons
			@pinstons = pistons
	end
	def turn_on
		move_pinstons
		...
	end
	def move_pinstons
		...
	end
end

class ElectricEngine < Engine
	
	def initialize pinstons, battery
		super(pinstons)
		@battery = battery
	end

	def turn_on
		...
	end
end

class Car
	
	def initialze color, engine
		@color = color
		#@engine = Engine.new 2 => creo una relación de composión
		@engine = engine
	end

	def start
		@engine.turn_om
	end
end

c1 = Car.new "Azul", ElectricEngine.new(2,"1,91GV") #Inyección de dependencias
c2 = Car.new "Rojo", Engine.new(12)

c1.start
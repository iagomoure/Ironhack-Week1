def game
	puts "Introduce un numero"
	number = gets.chomp.to_i
	aleatorio = rand(10)
	vidas = 0
	count = 0
	while (number != aleatorio) && (vidas < 3)
		if (number > aleatorio)
			puts "El numero es menor"
			puts "Introduce de nuevo el numero"
			number = gets.to_i
			else if (number < aleatorio)
				puts "El numero es mayor"
				puts "Introduce de nuevo el numero"
				number = gets.chomp.to_i
			end
		end
		count = count + 1
		vidas = vidas + 1
	end
	if (number == aleatorio)
		puts "Bien"
		puts "El numero de intentos #{count.to_s}" 
		else 
			puts "Lo siento has agotado tus vidas"
	end
end


puts "Cual es tu nombre?"
nombre = gets.chomp
puts "Bienvenido #{nombre}" 
game
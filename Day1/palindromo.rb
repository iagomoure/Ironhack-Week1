def is_palindrome?(palindrome_candidate)
	#esto pregunta si la igualdad es true o false. No hace falta
	#return. Ruby devuelve
	#if palindorme_candidate == palindorme_candidate.reverse
	#	return true
	#else
	#	return false
	#end
	clean_palindrome = palindrome_candidate.downcase.gsub(" ","").gsub(",","")
	clean_palindrome == clean_palindrome.reverse
end

def new_is_palindrome?(palindrome_candidate)
	#fuerza a modificar el valor de la variable
	# es igual => clean_palindrome = palindorme_candidate.downcase
	palindrome_candidate.downcase! 
	
	#por defecto usa espacios
	#es igual => words_arry = clean_palindrome.split(" ")
	words_arry = palindrome_candidate.split
	words_arry == words_arry.reverse

end

str="dad"
str2="Anna"
str3="step on no pets"
str4="On a clover, if alive, erupts a bast pure evil, a fire volcano"
str5="Fall leaves as soon as leaves fall"

is_palindrome?(str)
puts is_palindrome?(str4)

new_is_palindrome?(str5)
puts new_is_palindrome?(str5)
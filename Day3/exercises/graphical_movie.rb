require 'imdb'

class MovieHandler
	
	def initialize find, film
		@find = find
		@film = film
		@arrayFilms = []
	end

	def search_imdb
		@find.each do |movie|
			objIMDBfilm = Imdb::Search.new(movie)[0]
			#@arrayFilms << Film.new(objIMDBfilm.title, objIMDBfilm.rating)
			@arrayFilms << [@film.name = objIMDBfilm.name, @film.rating = objIMDBfilm.rating]
		end	
	end
end

class Film

	def initialize
		@name = ""
		@rating = ""
	end
	
	def show_film
		puts @name + @rating
	end
end

class Find
	def initialize file
		@file = file
	end

	def read_file file
		movies = IO.read(file)
		movies.split("\n")
	end
end

film = Film.new
f = Find.new ("pelis.txt")
mh = MovieHandler.new f
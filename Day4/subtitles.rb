require 'pry'

class SubRip
	
	def initialize 
		
	end
	
	def read
		file = IO.read("subs.txt")
	end
	
	def parse
		subsclean = []
		subsplitted = read.split("\n\n")
		subsplitted.each do |item|
       		subsclean << item.split("\n")
		end
		puts subsclean 
	end
end

subrip = SubRip.new
subrip.parse

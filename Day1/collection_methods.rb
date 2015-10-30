class Home
	attr_reader(:name, :city, :capacity, :price)

	def initialize (name, city, capacity, price)
		@name = name
		@city = city
		@capacity = capacity
		@price = price
	end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Isaura's place", "Caracas", 4, 49),
  Home.new("Carlos's place", "Paris", 6, 40),
  Home.new("Giancarlo's place", "Rome", 3, 55),
  Home.new("Raul's place", "Berlin", 2, 48),
  Home.new("Laura's place", "Kiev", 6, 53),
  Home.new("Pedro's place", "Oslo", 4, 50)
]

homes.each {|home| puts "#{home.name} in #{home.city} \nPrice: #{home.price} a night\n\n" } 
	



=begin

puts prices

homes.each_with_index do |hm,index|
	puts "Home Number #{index + 1}: #{hm.name}"
end

san_juan_homes = homes.select do |hm| 
	hm.city == "San Juan"
end
puts san_juan_homes

home_41_dollars = homes.find do |hm|
	hm.price == 41
end
puts "the first home that cost $41 is:"
puts home_41_dollars.name
=end
	


puts "Choose one: 1.Lowest price. 2.Capacity, 3.Highest price"
answer = gets.chomp.to_i
case answer
when 1
	sorted = homes.sort do |home1,home2|
		home1.price <=> home2.price
	end

when 2
	sorted = homes.sort do |home1,home2|
		home1.capacity <=> home2.capacity
	end
when 3
  sorted = homes.sort do |home1,home2|
		home2.price<=>home1.price
	end
	
else
  "Please choose a correct option"
end
sorted.each do |home|
	puts home.name
end

puts "Type a city to show homes"
city_answer = gets.chomp.to_s

city_homes = homes.select do |hm|
  hm.city == city_answer
end
city_homes.each do |home|
	puts home.name
end

total_prices = city_homes.reduce(0.0) do |sum, home|
	sum + home.price
end
puts "The average price is:"
puts total_prices / city_homes.length

puts "Type a price"
price_answer = gets.chomp.to_i

home_price = homes.find do |hm|
	hm.price == price_answer
end
puts "The home that cost #{price_answer} is: #{home_price.name}"


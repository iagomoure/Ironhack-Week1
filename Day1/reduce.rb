cities = ["miami", "madrid", "barcelona"]

cities.reduce { |first, city|
	if first.length > city.length
		first
	else
		city
	end
}
friends = {
	sara: {
		nickname: 'sare bear',
		location: {
			state: "WA",
			city: "Tacoma"
		},
		favorite_foods: [
			"apple",
			"banana",
			"pear"
		]
	},
	greg: {
		nickname: "gregy",
		location: {
			state: "WA",
			city: "Seattle"
		},
		favorite_foods: [
			"chicken",
			"apple"
		]
	},
	victoria: {
		nickname: "mikky vikky",
		location: {
			state: "WA",
			city: "Olympia"
		},
		favorite_foods: [
			"orange",
			"ice cream",
			"cake"
		]
	}
}

#pulling information---------------------------


puts "Greg's nickname is #{friends[:greg][:nickname].capitalize}."
puts "Sara is from #{friends[:sara][:location][:city]}, #{friends[:sara][:location][:state]}."
p friends[:victoria][:favorite_foods] 
puts " reversed is "
p friends[:victoria][:favorite_foods].reverse
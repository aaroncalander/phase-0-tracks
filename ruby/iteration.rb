def color
    color1 = "red"
    color2 = "blue"
    color3 = "green"
    puts "What are your favorite colors?"
    yield(color1, color2, color3)
end

color { |color1, color2, color3| puts "My favorite colors are #{color1}, #{color2}, and #{color3}." }

def color
	puts "What are your favorite colors?"
	yield("red", "blue", "green")
end

color { |color1, color2, color3| puts "My favorite colors are #{color1}, #{color2}, and #{color3}." }

pizza_toppings = ["mushrooms", "olives", "pepperoni", "garlic"]
new_pizza_toppings = []

p pizza_toppings
p new_pizza_toppings

pizza_toppings.each do |toppings|
	new_pizza_toppings << toppings.reverse
end

p new_pizza_toppings

pizza_toppings.map! do |toppings|
	puts toppings
	toppings.reverse
end
p pizza_toppings

pizza_toppings.map! do |toppings|
	puts toppings
	toppings.delete "o" "a"
end
p pizza_toppings

dog_demeanor = {
	retriever: "friendly",
	pitbull: "fierce",
	shitzu: "yappy",
	terrier: "determined"
}

dog_demeanor.each do |breed, demeanor|
	puts "#{breed}s can be #{demeanor}"
end

# Release 2 - Question 1
a = [92, 16, 3, 149, 0]

a.delete_if {|number| number > 100}

h = {
	hours_worked: 5,
	hours_slept: 10,
	hours_traffic: 2,
	hours_tv: 4,
	hours_internet: 3
}

h.delete_if {|hours, number| number > 4}

# Release 2 - Question 2
a = [15, 7, 64, 99, -32]

a.keep_if {|number| number < 0}

h = {
	a: 2.25,
	b: 1.45,
	c: 1.30,
	d: 2.00
}

h.keep_if {|participant, time| time <= 1.45}

# Release 3 - Question 3
a = [88, 17, 43, 2, 261]

a.select {|number| number.even?}

h = {
	first_place: "Bob",
	second_place: "Mary",
	third_place: "Tom",
	fourth_place: "Jen"
}

h.select {|place, name| name > "Bob"}

# Release 3 - Question 4
a = [26, 13, 5, 101, 76]

a.take_while { |int| int < 50}

# no working option for a hash
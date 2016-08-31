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

def method
  puts "This is a method"
  yield("simple","boring")
end

method {|word1, word2|puts "This is a #{word1}, #{word2} block "}

dev_necessities = ["food","laptop", "water", "knowledge of Google", "writing equipment", "patience"]

p dev_necessities

dev_necessities.each do |item|
  puts "#{item} is essential to success at Dev Bootcamp!"
end

p dev_necessities

dev_necessities.map! do |item|
  puts "#{item}".reverse
end

###########
family_tree = {
  
steve: "brother",
judy: "cousin",
delores: "grandmother",
rocky: "uncle",
meridith: "mother"
}

p family_tree

family_tree.each do |name, relation|
  puts "#{name} is my #{relation}"
end

# A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
numbers_array = [1,2,3,4,5,6,7]
numbers_array.delete_if { |number| number > 5 }

numbers_hash = {
  1 => "one",
  2 => "two",
  3 => "three",
  6 => "six",
  7 => "seven",
}
numbers_hash.delete_if { |number| number > 5 }

# A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).

numbers_array = [1,2,3,4,5,6,7]
numbers_array.keep_if { |number| number > 5 }

numbers_hash = {
  1 => "one",
  2 => "two",
  3 => "three",
  6 => "six",
  7 => "seven",
}
numbers_hash.keep_if { |number| number > 5 }

# A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!

numbers_array = [1,2,3,4,5,6,7]
numbers_array.select { |number| number.even? }

numbers_hash = {
  1 => "one",
  2 => "two",
  3 => "three",
  6 => "six",
  7 => "seven",
}
numbers_hash.keep_if { |number| number.even?}

# A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).

numbers_array = [1,2,3,4,5,6,7]

numbers_array.take_while { |number| number < 3 }


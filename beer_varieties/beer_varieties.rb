# Pseudocode Beer Varieties Program

# - This is a program that will allow users to get some information
# about different varieties of beer. They will only be 
# able to retrieve data and not manipulate it.
	
# INPUT: beer type (as a string)

# STEPS: 
#        - create database for all major beer varieties 
#          - id (primary integer key)
#          - variety (varchar(255))
#          - color (varchar(255))
#          - notes (varchar(255))
#          - alcohol_pct (decimal(2,1))

#        - user is asked to input beer variety (string)

#        - beer variety (string) is matched with database and information
#          is displayed

# OUTPUT: information on the beer in a readable format

require 'sqlite3'

db = SQLite3::Database.new("beers.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS beers(
    id INTEGER PRIMARY KEY,
    variety VARCHAR(255),
    color VARCHAR(255),
    notes VARCHAR(255),
    alcohol_pct REAL(19, 1)
  )
SQL

db.execute(create_table_cmd)

db.execute("INSERT INTO beers (variety, color, notes, alcohol_pct) VALUES ('lager', 'pale, golden, amber or dark', 'most common type of beer in world which has a well attenuated body and noble hop bitterness', 5.0)")
db.execute("INSERT INTO beers (variety, color, notes, alcohol_pct) VALUES ('ale', 'blonde, golden, amber or brown', 'often has a sweet, full-bodied and fruity taste that can be very hoppy and bitter in pale ales', 4.5)")
db.execute("INSERT INTO beers (variety, color, notes, alcohol_pct) VALUES ('porter', 'light brown, dark brown', 'originally a London beer, mild and malty with notes of chocolate, coffee or toffee', 6.5)")
db.execute("INSERT INTO beers (variety, color, notes, alcohol_pct) VALUES ('stout', 'dark brown, black', 'strong roasted malt flavor of coffee, bittersweet chocolate or caramel with a low sweetness and high bitterness', 6.5)")
db.execute("INSERT INTO beers (variety, color, notes, alcohol_pct) VALUES ('malt beer', 'light brown, dark brown', 'generally dark and sweet with low alcohol content, sometimes given to nursing mothers', 1.5)")
db.execute("INSERT INTO beers (variety, color, notes, alcohol_pct) VALUES ('barley wine', 'amber, dark brown', 'American variety is lively and fruity, bittersweet and intense with dominant fruit to resiny hops', 12.0)")
db.execute("INSERT INTO beers (variety, color, notes, alcohol_pct) VALUES ('lambic', 'pale yellow, deep gold, red', 'unfiltered wheat beer with no hop flavor or bitterness; fruit is added after fermentation adding fruit flavor', 5.0)")
db.execute("INSERT INTO beers (variety, color, notes, alcohol_pct) VALUES ('India Pale Ale', 'golden amber, light copper, orange tint', 'originally high hop content beer to preserve in shipping to India; bold, strong, and hoppy with mild sweet flavor in America', 6.0)")
db.execute("INSERT INTO beers (variety, color, notes, alcohol_pct) VALUES ('Belgian ale', 'golden, amber', 'many different styles exist (Trappist, Abbey, Dubbel, Saison, etc.); earthy and yeasty with spices and mild hops', 7.0)")
db.execute("INSERT INTO beers (variety, color, notes, alcohol_pct) VALUES ('Scotch ale', 'light copper, dark brown', 'comparable to barley wine, low hop presence with more maltiness often with a touch of smoked whiskey', 8.5)")
db.execute("INSERT INTO beers (variety, color, notes, alcohol_pct) VALUES ('pilsner', 'yellow, deep gold', 'American variety has medium to high hop biterness with no fruitiness; light and earthy', 4.5)")



def print_variety(db, type, color, notes, alcohol_pct)
  db.execute("SELECT * FROM beers WHERE variety='type'")
  puts "Variety: #{type}\nColor: #{color}\nNotes: #{notes}\nABV: #{alcohol_pct}"
end

# DRIVER CODE
type = ''

until type == 'done'
  puts "Please enter the type of beer you would like more information about. If you are done type 'done'."
    type = gets.chomp.downcase

    if type == 'done'
      puts "Thanks and drink safely!"
      break
    end

    if type == 'lager'
      print_variety(db, 'lager', 'pale, golden, amber or dark', 'most common type of beer in world which has a well attenuated body and noble hop bitterness', 5.0)
    elsif type == 'ale' || type == 'pale ale'
      print_variety(db, 'ale', 'blonde, golden, amber or brown', 'often has a sweet, full-bodied and fruity taste that can be very hoppy and bitter in pale ales', 4.5)
    elsif type == 'porter'
      print_variety(db, 'porter', 'light brown, dark brown', 'originally a London beer, mild and malty with notes of chocolate, coffee or toffee', 6.5)
    elsif type == 'stout'
      print_variety(db, 'stout', 'dark brown, black', 'strong roasted malt flavor of coffee, bittersweet chocolate or caramel with a low sweetness and high bitterness', 6.5)
    elsif type == 'malt beer' || type == 'malt' || type == 'malt liqour'
      print_variety(db, 'malt beer', 'light brown, dark brown', 'generally dark and sweet with low alcohol content, sometimes given to nursing mothers', 1.5)
    elsif type == 'barley wine'
      print_variety(db, 'barley wine', 'amber, dark brown', 'American variety is lively and fruity, bittersweet and intense with dominant fruit to resiny hops', 12.0)
    elsif type == 'lambic'
      print_variety(db, 'lambic', 'pale yellow, deep gold, red', 'unfiltered wheat beer with no hop flavor or bitterness; fruit is added after fermentation adding fruit flavor', 5.0)
    elsif type == 'india pale ale' || type == 'ipa'
      print_variety(db, 'India Pale Ale', 'golden amber, light copper, orange tint', 'originally high hop content beer to preserve in shipping to India; bold, strong, and hoppy with mild sweet flavor in America', 6.0)
    elsif type == 'belgian ale' || type == 'belgian'
      print_variety(db, 'Belgian ale', 'golden, amber', 'many different styles exist (Trappist, Abbey, Dubbel, Saison, etc.); earthy and yeasty with spices and mild hops', 7.0)
    elsif type == 'scotch ale'
      print_variety(db, 'Scotch ale', 'light copper, dark brown', 'comparable to barley wine, low hop presence with more maltiness often with a touch of smoked whiskey', 8.5)
    elsif type == 'pilsner'
      print_variety(db, 'pilsner', 'yellow, deep gold', 'American variety has medium to high hop biterness with no fruitiness; light and earthy', 4.5)
    else type == ''
      puts "That beer isn't part of our database"
    end
end

db.execute("DROP TABLE beers")

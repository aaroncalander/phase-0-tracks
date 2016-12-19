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
db2 = SQLite3::Database.new("recommendations.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS beers(
    id INTEGER PRIMARY KEY,
    variety VARCHAR(255),
    color VARCHAR(255),
    notes VARCHAR(255),
    alcohol_pct REAL(19, 1)
  )
SQL

create_table2_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS recommendations(
    id INTEGER PRIMARY KEY,
    variety VARCHAR(255),
    option_1 VARCHAR(255),
    option_2 VARCHAR(255),
    option_3 VARCHAR(255)
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

db2.execute(create_table2_cmd)

db2.execute("INSERT INTO recommendations (variety, option_1, option_2, option_3) VALUES ('lager', 'Sit Down Son, Carton Brewing Co.', 'Hoss, Great Divide Brewing Co.', 'Baba Black Lager, Uinta')")
db2.execute("INSERT INTO recommendations (variety, option_1, option_2, option_3) VALUES ('ale', 'Dead Guy Ale, Rogue', 'Red Rocket Ale, Bear Republic Brewing Co.', 'Equinox Ale, Lagunitas Brewing Company')")
db2.execute("INSERT INTO recommendations (variety, option_1, option_2, option_3) VALUES ('porter', 'Founders Porter, Founders Brewing Company', 'Bean Gene, Revolution Brewing Company', 'Bourbon Barrel Porter, AleWerks Brewing Company')")
db2.execute("INSERT INTO recommendations (variety, option_1, option_2, option_3) VALUES ('stout', 'Youngs Double Chocolate Stout, Well & Youngs Ltd.', 'Samuel Smith Oatmeal Stout, Samuel Smith Old Brewery', 'AleSmith Speedway Stout, AleSmith Brewing Company')")
db2.execute("INSERT INTO recommendations (variety, option_1, option_2, option_3) VALUES ('malt beer', 'Sapporo All Malt Reserve, Sapporo Breweries Ltd.', 'Suntory Malts Summer Draft, Suntory Holdings', 'St. Peters Without, St. Peters Brewery')")
db2.execute("INSERT INTO recommendations (variety, option_1, option_2, option_3) VALUES ('barley wine', 'A Deal With the Devil, Anchorage Brewing Company', 'Barrel Aged Behemoth, 3 Floyds Brewing Co.', 'Barrel Aged Old Ruffian, Great Divide Brewing Company')")
db2.execute("INSERT INTO recommendations (variety, option_1, option_2, option_3) VALUES ('lambic', 'Cantillon Iris, Brasserie Cantillon', 'Lindemans Framboise, Brouwerij Lindemans', 'Chez Monieux, Alpine Beer Company')")
db2.execute("INSERT INTO recommendations (variety, option_1, option_2, option_3) VALUES ('India pale ale', 'Congress Street IPA, Trillium Brewing Company', 'Blind Pig IPA, Russian River Brewing Company', 'Point the Way IPA, Golden Road Brewing')")
db2.execute("INSERT INTO recommendations (variety, option_1, option_2, option_3) VALUES ('Belgian ale', 'Rodenbach Grand Cru, Brouwerig Rodenbach', 'Westmalle Tripel, Trappist Abbey of Westmalle', 'Chimay Triple, Trappist Abbey of Chimay')")
db2.execute("INSERT INTO recommendations (variety, option_1, option_2, option_3) VALUES ('Scotch ale', 'GraveDigger Billy, Revolution Brewing Company', 'Smuttynose Scotch Style Ale, Smuttynose Brewing Company', 'Wee Heavy, Steel Toe Brewing')")
db2.execute("INSERT INTO recommendations (variety, option_1, option_2, option_3) VALUES ('pilsner', 'Firestone Walker Pivo Pils, Firestone Walker Brewing Company', 'Mamas Little Yella Pils, Oskar Blues Brewery', 'Reality Czeck, Moonlight Brewing')")

def print_variety(db, type, color, notes, alcohol_pct)
  db.execute("SELECT * FROM beers WHERE variety='type'")
  puts "Variety: #{type}\nColor: #{color}\nNotes: #{notes}\nABV: #{alcohol_pct}%"
end

def print_recommendation(db2, beer, option_1, option_2, option_3)
  db2.execute("SELECT * FROM recommendations WHERE variety='beer'")
  puts "Option 1: #{option_1}\nOption 2: #{option_2}\nOption 3: #{option_3}"
end

# DRIVER CODE
type = ''

until type == 'done'
  puts "Please enter the type of beer you would like more information about. If you are done type 'done.'"
  type = gets.chomp.downcase

    if type == 'done'
      puts "Hope you've learned something!"
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
    elsif type == 'malt beer' || type == 'malt'
      print_variety(db, 'malt beer', 'light brown, dark brown', 'generally dark and sweet with low alcohol content, sometimes given to nursing mothers', 1.5)
    elsif type == 'barley wine'
      print_variety(db, 'barley wine', 'amber, dark brown', 'American variety is lively and fruity, bittersweet and intense with dominant fruit to resiny hops', 12.0)
    elsif type == 'lambic'
      print_variety(db, 'lambic', 'pale yellow, deep gold, red', 'unfiltered wheat beer with no hop flavor or bitterness; fruit is added after fermentation adding fruit flavor', 5.0)
    elsif type == 'india pale ale' || type == 'ipa'
      print_variety(db, 'India Pale Ale', 'golden amber, light copper, orange tint', 'originally high hop content beer to preserve in shipping to India; bold, strong, and hoppy with mild sweet flavor in America', 6.0)
    elsif type == 'belgian ale' || type == 'belgian'
      print_variety(db, 'Belgian ale', 'golden, amber', 'many different styles exist (Trappist, Abbey, Dubbel, Saison, etc.); earthy and yeasty with spices and mild hops', 7.0)
    elsif type == 'scotch ale' || type == 'scottish ale'
      print_variety(db, 'Scotch ale', 'light copper, dark brown', 'comparable to barley wine, low hop presence with more maltiness often with a touch of smoked whiskey', 8.5)
    elsif type == 'pilsner'
      print_variety(db, 'pilsner', 'yellow, deep gold', 'American variety has medium to high hop biterness with no fruitiness; light and earthy', 4.5)
    else type == ''
      puts "That beer isn't part of our database!"
    end
end

recommendations = ''
beer = ''

until recommendations == 'no'
  puts "Would you like some beer recommendations? Type 'yes' or 'no' now."
  recommendations = gets.chomp

  if recommendations == 'no'
    puts "Alright. Remember to drink responsibly!"
  	break
  end

  puts "Enter the beer variety that you would like a recommendation for: "
  beer = gets.chomp.downcase

  if beer == 'lager'
    print_recommendation(db2, 'lager', 'Sit Down Son, Carton Brewing Co.', 'Hoss, Great Divide Brewing Co.', 'Baba Black Lager, Uinta')
  elsif beer == 'ale' || beer == 'pale ale'
  	print_recommendation(db2, 'ale', 'Dead Guy Ale, Rogue', 'Red Rocket Ale, Bear Republic Brewing Co.', 'Equinox Ale, Lagunitas Brewing Company')
  elsif beer == 'porter'
  	print_recommendation(db2, 'porter', "Founders Porter, Founder's Brewing Company", 'Bean Gene, Revolution Brewing Company', 'Bourbon Barrel Porter', 'AleWerks Brewing Company')
  elsif beer == 'stout'
  	print_recommendation(db2, 'stout', "Young's Double Chocolate Stout, Well & Young's Ltd.", "Samuel Smith's Oatmeal Stout, Samuel Smith Old Brewery", 'AleSmith Speedway Stout, AleSmith Brewing Company')
  elsif beer == 'malt beer' || beer == 'malt'
  	print_recommendation(db2, 'malt beer', 'Sapporo All Malt Reserve, Sapporo Breweries Ltd.', "Suntory Malt's Summer Draft, Suntory Holdings", "St. Peter's Without, St. Peter's Brewery")
  elsif beer == 'barley wine'
  	print_recommendation(db2, 'barley wine', 'A Deal With the Devil, Anchorage Brewing Company', 'Barrel Aged Behemoth, 3 Floyds Brewing Co.', 'Barrel Aged Old Ruffian, Great Divide Brewing Company')
  elsif beer == 'lambic'
  	print_recommendation(db2, 'lambic', 'Cantillon Iris, Brasserie Cantillon', 'Lindemans Framboise, Brouwerij Lindemans', 'Chez Monieux, Alpine Beer Company')
  elsif beer == 'india pale ale' || beer == 'ipa'
  	print_recommendation(db2, 'India pale ale', 'Congress Street IPA, Trillium Brewing Company', 'Blind Pig IPA, Russian River Brewing Company', 'Point the Way IPA, Golden Road Brewing')
  elsif beer == 'belgian ale' || beer == 'belgian'
  	print_recommendation(db2, 'Belgian ale', 'Rodenbach Grand Cru, Brouwerig Rodenbach', 'Westmalle Tripel, Trappist Abbey of Westmalle', 'Chimay Triple, Trappist Abbey of Chimay')
  elsif beer == 'scotch ale' || beer == 'scottish ale'
  	print_recommendation(db2, 'Scotch ale', 'GraveDigger Billy, Revolution Brewing Company', 'Smuttynose Scotch Style Ale, Smuttynose Brewing Company', 'Wee Heavy, Steel Toe Brewing')
  elsif beer == 'pilsner'
  	print_recommendation(db2, 'pilsner', 'Firestone Walker Pivo Pils, Firestone Walker Brewing Company', "Mama's Little Yella Pils, Oskar Blues Brewery", 'Reality Czeck, Moonlight Brewing')
  else beer == ''
  	puts "No current recommendations for that beer variety!"
  end
end

db.execute("DROP TABLE beers")
db2.execute("DROP TABLE recommendations")

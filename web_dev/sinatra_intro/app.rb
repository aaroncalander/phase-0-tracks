# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
# get '/' do
#  "#{params[:name]} is #{params[:age]} years old."
# end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

# get '/students/:id' do
#   student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
#   "#{student['name']} has a student ID number of #{student['id']}."
# end

# write a GET route that displays an address

get '/contact/:address' do
  address = params[:address] 
  "My new address is #{address}"
end

# write a GET route that takes a person's name as a query parameter and
# say "Good job, [person's name]! If the query parameter is not present, the
# route simply says "Good job!"

get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

# write a GET route that uses route parameters to add two numbers and 
# respond with the result

get '/:first_number/add/:second_number' do
  first_number = params[:first_number]
  second_number = params[:second_number]
  result = first_number.to_i + second_number.to_i
  result.to_s
end

# Optional bonus: Make a route that allows the user to search the 
# database in some way

get '/age' do
  age = db.execute("SELECT * FROM students WHERE age>=100")
  response = ""
  age.each do |student|
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br><br>"
  end
  response
end

# Release 1

# Q: Is Sinatra the only web app library in Ruby? What are some others?

# A: There are others such as Ruby on Rails (Rails), Merb, Nitro and Camping.

# Q: Are SQLite and the sqlite3 gem your only options for using a database 
# with Sinatra? What are some others?

# A: Some other popular databases that work with Sinatra are ActiveRecord
# and Datamapper.

# Q: What is meant by the term web stack?

# A: This refers to the software used in Web development environments.
# This will contain an operating system, Web server, database server, and 
# programming language; a commom web stack example is LAMP (which uses
# Linux, Apache, MySQL, and PHP).

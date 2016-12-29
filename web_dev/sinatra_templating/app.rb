# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/campus/search' do
  @students_SF = db.execute("SELECT * FROM students WHERE campus='SF'")
  @students_SD = db.execute("SELECT * FROM students WHERE campus='SD'")
  @students_NYC = db.execute("SELECT * FROM students WHERE campus='NYC'")
  @students_SEA = db.execute("SELECT * FROM students WHERE campus='SEA'")
  @students_CHI = db.execute("SELECT * FROM students WHERE campus='CHI'")
  erb :campus_search
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources
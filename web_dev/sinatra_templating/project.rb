# require gems
require 'sinatra'
require "sinatra/reloader" if development?
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

get '/' do
	@students = db.execute("SELECT * FROM students")
	erb :proj_home
end

get '/student/update' do 	
	erb :updates
end

post '/students' do 
	input_id = params['id'].to_i
	input_name = params['name']
	input_age = params['age'].to_i
	input_campus = params['campus']
	db.execute("UPDATE students SET name = ?, age = ?, campus = ? WHERE id = ?", input_name, input_age, input_campus, input_id)
	redirect '/'
end	
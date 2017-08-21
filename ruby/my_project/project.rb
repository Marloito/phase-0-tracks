require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("something.db")
db.results_as_hash = true

#saves string to variable to run as sql later using db.execute
some_command = <<-DESCRIPTION
	CREATE TABLE IF NOT EXISTS example(
	name VARCHAR(255),
	age INT
	)
DESCRIPTION

db.execute(some_command)

# db.execute("INSERT INTO example (name, age) VALUES ('Bob', 5)")

#show the data you are working with
example = db.execute("SELECT * FROM example")
p example.class
p example

#using ruby to work with data
example.each do |example|
	puts "#{example[0]} is #{example[1]}."
end	
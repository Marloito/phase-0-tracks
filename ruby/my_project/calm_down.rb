require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("something.db")
db.results_as_hash = false

#repeat until @least 3 inputs
	#create table to hold phrases (id, phrase)
	#ask for phrase that calms you down
	#repeat until user types done
		#insert response into table
		#ask for another phrase
	#ask if need to calm down (y/n)
	#if yes
		#choose a rondom number (number of phrases in table)
		#print just remember, (phrase).
	#if no
		#have a good day
	#else 	
		#ask again		



class VerifyController < ApplicationController
	require 'rubygems'
	require 'fastercsv'
	require 'csv'
	def index
		render :file => 'app/views/users/verify.html.erb'
	end

#	def csv
#		student = CSV.read("public/data/Student.txt")
#		fitgram = CSV.read("public/data/Fitnessgram.txt")
#		fitgramtemp = CSV.read("public/data/FitnessgramTemplate.txt")
#		puts student[0]
#		puts fitgram[0]
#		puts fitgramtemp[0]
#		return
		#redirect_to '/compile'
#	end
	
	def import
#		sqlite -separator , main.db ".import 'public/data/Student.txt' compiledData"
  	File.open("public/data/Student.txt") do|f|
    	student = f.readline.chomp.split(',')
			studentdata = []
    	until f.eof?
      	row = f.readline.chomp.split(',')
      	row = student.zip(row).flatten
      	studentdata << Hash[*row]
    	end
    puts studentdata
    return student, studentdata
  	end
	end
end
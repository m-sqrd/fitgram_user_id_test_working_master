class UsersController < ApplicationController
  before_filter :authenticate_user!
	require 'rubygems'
	require 'zip/zip'
	require 'zip/zipfilesystem'
	
	def show
    @user = User.find(params[:id])
	end

  def uploadFile
    @test = DataFile.save(params[:upload])
    unzip_file
  end

	def unzip_file
#		@file = params[:upload].temp.path
#   @file = "/Users/mtm700/Documents/Fitproject.zip"
    @file = "/Users/mtm700/Sites/fitgram_user_id_test/public/data/zips/Fitproject.zip"
  	Zip::ZipFile.open(@file) do |zip_file|
   	zip_file.each do |f|
    	f_path=File.join("/Users/mtm700/Sites/fitgram_user_id_test/public/data", f.name)
     	FileUtils.mkdir_p(File.dirname(f_path))
     	zip_file.extract(f, f_path) unless File.exist?(f_path)
   		end
   	end
  	render 'users/verify'
	end

  def import
    File.open("public/data/Student.txt") do|f|
      @student = f.readline.chomp.split(',')
      @studentdata = []
      until f.eof?
        row = f.readline.chomp.split(',')
        row = @student.zip(row).flatten
        @studentdata << Hash[*row]
        #@studentdata.values
      end
#    puts @studentdata
#    puts @student
    end
####################################################################################
    File.open("public/data/Fitnessgram.txt") do|f|
      @fitgram = f.readline.chomp.split(',')
      @fitgramdata = []
      until f.eof?
        row = f.readline.chomp.split(',')
#        row = @fitgram.zip(row).flatten
        @fitgramdata << [*row] #Hash[*row]
      end
#      puts @fitgramdata
#      puts @fitgram
    end
    
    File.open("public/data/FitnessgramTemplate.txt") do|f|
      @fitgramtemp = f.readline.chomp.split(',')
      @fitgramtempdata = []
      until f.eof?
        row = f.readline.chomp.split(',')
#        row = @fitgramtemp.zip(row).flatten
        @fitgramtempdata << [*row] #Hash[*row]
      end
      puts @fitgramtempdata
#      puts @fitgramtemp
    end
####################################################################################    
    render 'users/compile'
  end
  
end
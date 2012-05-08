class UploadController < ApplicationController
	require 'rubygems'
	require 'zip/zip'
	require 'zip/zipfilesystem'
	def index
		render :file => 'app/views/users/upload.html.erb'
	end
	#def uploadFile
		# post = DataFile.save(params[:upload])
	#	unzip_file(params[:upload].to_s, "/public/data")
		# render :text => "File uploaded successfully"
	#	redirect_to '/home/'
	#end
#	def unzip_file #(file, destination)
#		@file = params[:upload].to_s
#  	#@file = "/Users/mtm700/Documents/Fitproject.zip"
#  	Zip::ZipFile.open(@file) do |zip_file|
#   	zip_file.each do |f|
#    	f_path=File.join("/Users/mtm700/Sites/fitgram/public/data", f.name)
#     	FileUtils.mkdir_p(File.dirname(f_path))
#     	zip_file.extract(f, f_path) unless File.exist?(f_path)
#   		end
#   	end
#  	redirect_to '/verify'
#	end
end

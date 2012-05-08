class CompileController < ApplicationController
	def index
		render :file => 'app/views/users/compile.html.erb'
	end
end
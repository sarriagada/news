class HomeController < ApplicationController
	def index
		@notes = Note.order("position").last(10)
	end

end

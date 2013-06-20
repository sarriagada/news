class HomeController < ApplicationController
	def index
		@notes = Note.last(10)
	end
end

class HomeController < ApplicationController
	def index
    	@notes_section_1 = Note.where(section: "1").order("position").last(10)
    	@notes_section_2 = Note.where(section: "2").order("position").last(10)
		@notes_section_3 = Note.where(section: "3").order("position").last(10)
	end

end

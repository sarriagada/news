class NoteCategories < ActiveRecord::Base

  belongs_to :note
  belongs_to :category

end

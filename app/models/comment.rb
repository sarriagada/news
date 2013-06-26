class Comment < ActiveRecord::Base
  attr_accessible :content, :note_id

  belongs_to :note
end

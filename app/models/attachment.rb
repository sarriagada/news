class Attachment < ActiveRecord::Base
  attr_accessible :note_id, :photo

  belongs_to :note

  mount_uploader :photo, PhotoUploader
end

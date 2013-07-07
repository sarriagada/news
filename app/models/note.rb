class Note < ActiveRecord::Base
  acts_as_list
  attr_accessible :body, :summary, :title, :section, :position, :category_id

  has_many   :attachments
  has_many 	 :tags
  belongs_to :category
  has_many   :comments
end

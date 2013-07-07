class Note < ActiveRecord::Base
  acts_as_list
  attr_accessible :body, :summary, :title, :section, :position

  has_many :attachments
  has_many :tags
  has_many :categories
  has_many :comments
end

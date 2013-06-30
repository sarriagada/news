class Note < ActiveRecord::Base
  attr_accessible :body, :summary, :title, :section, :position

  has_many :attachments
  has_many :tags
  has_many :categories
  has_many :comments
end

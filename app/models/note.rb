class Note < ActiveRecord::Base
  attr_accessible :body, :subtitle, :title
  has_many :attachments
  has_many :tags
  has_many :categories
end

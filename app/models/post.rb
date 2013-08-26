class Post < ActiveRecord::Base
  attr_accessible :body, :title, :user_id

  has_many :comments
  has_many :post_tags
  has_many :tags, through: :post_tags
end

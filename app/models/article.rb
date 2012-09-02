class Article < ActiveRecord::Base
  attr_accessible :content, :title, :image_path

  has_many :comments
end

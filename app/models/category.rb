class Category < ActiveRecord::Base
  attr_accessible :article_id, :name

  has_and_belongs_to_many :articles
end

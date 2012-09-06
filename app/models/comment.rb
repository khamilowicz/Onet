class Comment < ActiveRecord::Base
  attr_accessible :article_id, :content, :title
  belongs_to :article
end

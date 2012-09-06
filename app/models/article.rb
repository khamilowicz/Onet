class Article < ActiveRecord::Base
  attr_accessible :content, :title, :image_path
  attr_accessor :image_path

  has_many :comments
  has_and_belongs_to_many :categories

  def shorten
    case 
    when popularity.in?(0..5)
       content[0,300] << '...'
    when popularity.in?(6..10)
       content[0,900] << '...'
    when popularity >= 11
       content[0,1800] << '...'
    end
  end

  def importance_size
    case 
    when popularity.in?(0..5)
       'span3'
    when popularity.in?(6..10)
       'span6'
    when popularity >= 11
      'span9'
    end

  end

end
